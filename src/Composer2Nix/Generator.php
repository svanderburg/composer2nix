<?php
namespace Composer2Nix;
use Exception;
use PNDP\NixGenerator;
use PNDP\AST\NixAttrReference;
use PNDP\AST\NixAttrSet;
use PNDP\AST\NixExpression;
use PNDP\AST\NixFile;
use PNDP\AST\NixFunction;
use PNDP\AST\NixFunInvocation;
use PNDP\AST\NixImport;
use PNDP\AST\NixInherit;
use PNDP\AST\NixLet;
use PNDP\AST\NixNoDefault;
use PNDP\AST\NixURL;

class Generator
{
	private static function selectSourceObject($preferredInstall, $package)
	{
		if($preferredInstall === "source")
		{
			if(array_key_exists("source", $package))
				return $package["source"];
			else if(array_key_exists("dist", $package))
				return $package["dist"];
			else
				throw new Exception("Encountered a dangling package reference");
		}
		else
		{
			if(array_key_exists("dist", $package))
				return $package["dist"];
			else if(array_key_exists("source", $package))
				return $package["source"];
			else
				throw new Exception("Encountered a dangling package reference");
		}
	}

	private static function prefixRelativePath($target)
	{
		if(substr($target, 0, 1) == "/" || substr($target, 0, 2) == "./" || substr($target, 0, 3) == "../")
			return $target;
		else
			return "./".$target;
	}

	private static function generatePackagesAttrSet(array $packages, $preferredInstall)
	{
		$dependencies = array();

		foreach($packages as $package)
		{
			$dependency = array();

			if(array_key_exists("target-dir", $package))
				$dependency["targetDir"] = $package["target-dir"];
			else
				$dependency["targetDir"] = "";

			$sourceObj = Generator::selectSourceObject($preferredInstall, $package);

			switch($sourceObj["type"])
			{
				case "path":
					$dependency["src"] = new NixFile($sourceObj['url']);
					break;

				case "zip":
					if($sourceObj["reference"] == "")
						$reference = "";
					else
						$reference = "-".$sourceObj["reference"];

					if(substr($sourceObj["url"], 0, 7) === "http://" || substr($sourceObj["url"], 0, 8) === "https://")
					{
						$hash = shell_exec('nix-prefetch-url "'.$sourceObj['url'].'"');
						$src = new NixFunInvocation(new NixFile("fetchurl"), array(
							"url" => new NixURL($sourceObj["url"]),
							"sha256" => substr($hash, 0, -1)
						));
					}
					else
						$src = new NixFile($sourceObj['url']);

					$dependency["src"] = new NixFunInvocation(new NixExpression("composerEnv.buildZipPackage"), array(
						"name" => strtr($package["name"], "/", "-").$reference,
						"src" => $src
					));
					break;

				case "git":
					$outputStr = shell_exec('nix-prefetch-git "'.$sourceObj['url'].'" '.$sourceObj["reference"]);

					$output = json_decode($outputStr, true);
					$hash = $output["sha256"];

					$dependency["src"] = new NixFunInvocation(new NixExpression("fetchgit"), array(
						"name" => strtr($package["name"], "/", "-").'-'.$sourceObj["reference"],
						"url" => $sourceObj["url"],
						"rev" => $sourceObj["reference"],
						"sha256" => $hash
					));
					break;

				case "hg":
					$hash = shell_exec('nix-prefetch-hg "'.$sourceObj['url'].'" '.$sourceObj["reference"]);
					$dependency["src"] = new NixFunInvocation(new NixExpression("fetchhg"), array(
						"name" => strtr($package["name"], "/", "-").'-'.$sourceObj["reference"],
						"url" => $sourceObj["url"],
						"rev" => $sourceObj["reference"],
						"sha256" => $hash
					));
					break;

				case "svn":
					$hash = shell_exec('nix-prefetch-svn "'.$sourceObj['url'].'" '.$sourceObj["reference"]);
					$dependency["src"] = new NixFunInvocation(new NixExpression("fetchsvn"), array(
						"name" => strtr($package["name"], "/", "-").'-'.$sourceObj["reference"],
						"url" => $sourceObj["url"],
						"rev" => $sourceObj["reference"],
						"sha256" => $hash
					));
					break;

				default:
					throw new Exception("Cannot convert dependency of type: ".$sourceObj["type"]);
			}

			$dependencies[$package["name"]] = $dependency;
		}

		return new NixAttrSet($dependencies);
	}

	private static function generatePackagesExpression(array $config, $outputFile, $name, $preferredInstall, array $packages, array $devPackages, $executable, $symlinkDependencies)
	{
		$handle = fopen($outputFile, "w");

		if($handle === false)
			throw new Exception("Cannot write to: ".$outputFile);

		$packagesAttrSet = Generator::generatePackagesAttrSet($packages, $preferredInstall);
		$devpackagesAttrSet = Generator::generatePackagesAttrSet($devPackages, $preferredInstall);

		/* Compose meta properties */
		$meta = array();

		if(array_key_exists("homepage", $config))
			$meta["homepage"] = $config["homepage"];

		if(array_key_exists("license", $config))
		{
			if(is_string($config["license"]))
				$meta["license"] = $config["license"];
			else if(is_array($config["license"]))
			{
				if(count($config["license"]) > 0)
					$meta["license"] = $config["license"][0];

				for($i = 1; $i < count($config["license"]); $i++)
					$meta["license"] .= ", ".$config["license"][$i];
			}
		}

		/* Compose package function invocation */
		$expr = new NixFunction(array(
			"composerEnv" => new NixNoDefault(),
			"fetchurl" => new NixNoDefault(),
			"fetchgit" => null,
			"fetchhg" => null,
			"fetchsvn" => null,
			"noDev" => false
		), new NixLet(array(
			"packages" => $packagesAttrSet,
			"devPackages" => $devpackagesAttrSet
		), new NixFunInvocation(new NixExpression("composerEnv.buildPackage"), array(
			"name" => $name,
			"src" => new NixFile("./."),
			"executable" => $executable,
			"packages" => new NixInherit(),
			"devPackages" => new NixInherit(),
			"noDev" => new NixInherit(),
			"symlinkDependencies" => $symlinkDependencies,
			"meta" => new NixAttrSet($meta)
		))));

		$exprStr = NixGenerator::phpToNix($expr, true);
		fwrite($handle, $exprStr);
		fclose($handle);
	}

	private static function generateCompositionExpression($compositionFile, $outputFile, $composerEnvFile)
	{
		$handle = fopen($compositionFile, "w");

		if($handle === false)
			throw new Exception("Cannot write to: ".$compositionFile);

		$expr = new NixFunction(array(
			"pkgs" => new NixFunInvocation(new NixImport(new NixExpression("<nixpkgs>")), array(
				"system" => new NixInherit()
			)),
			"system" => new NixAttrReference(new NixExpression("builtins"), new NixExpression("currentSystem")),
			"noDev" => false
		), new NixLet(array(
			"composerEnv" => new NixFunInvocation(new NixImport(new NixFile(Generator::prefixRelativePath($composerEnvFile))), array(
				"stdenv" => new NixInherit("pkgs"),
				"writeTextFile" => new NixInherit("pkgs"),
				"fetchurl" => new NixInherit("pkgs"),
				"php" => new NixInherit("pkgs"),
				"unzip" => new NixInherit("pkgs")
			))
		), new NixFunInvocation(new NixImport(new NixFile(Generator::prefixRelativePath($outputFile))), array(
			"composerEnv" => new NixInherit(),
			"noDev" => new NixInherit(),
			"fetchurl" => new NixInherit("pkgs"),
			"fetchgit" => new NixInherit("pkgs"),
			"fetchhg" => new NixInherit("pkgs"),
			"fetchsvn" => new NixInherit("pkgs")
		))));

		$exprStr = NixGenerator::phpToNix($expr, true);
		fwrite($handle, $exprStr);
		fclose($handle);
	}

	public static function generateNixExpressions($name, $executable, $preferredInstall, $noDev, $configFile, $lockFile, $outputFile, $compositionFile, $composerEnvFile, $noCopyComposerEnv, $symlinkDependencies)
	{
		/* Open the composer.json file and decode it */
		$composerJSONStr = file_get_contents($configFile);

		if($composerJSONStr === false)
			throw new Exception("Cannot open contents of: ".$configFile);

		$config = json_decode($composerJSONStr, true);

		/* If no package name has been provided, attempt to use the name in the composer config file */
		if($name === null)
		{
			if(array_key_exists("name", $config))
				$name = $config["name"];
			else
			{
				throw new Exception("Cannot determine a package name! Either add a name\n".
					"property to the composer.json file or provide a --name parameter!");
			}
		}

		$name = strtr($name, "/", "-"); // replace / by - since / is not allowed in Nix package names

		/* Open the lock file and decode it */

		if(file_exists($lockFile))
		{
			$composerLockStr = file_get_contents($lockFile);

			if($composerLockStr === false)
				throw new Exception("Cannot open contents of: ".$lockFile);

			$lockConfig = json_decode($composerLockStr, true);
			
			if(array_key_exists("packages", $lockConfig))
				$packages = $lockConfig["packages"];
			else
				$packages = array();

			if(!$noDev && array_key_exists("packages-dev", $lockConfig))
				$devPackages = $lockConfig["packages-dev"];
			else
				$devPackages = array();
		}
		else
		{
			$packages = array();
			$devPackages = array();
		}

		/* Generate packages expression */
		Generator::generatePackagesExpression($config, $outputFile, $name, $preferredInstall, $packages, $devPackages, $executable, $symlinkDependencies);

		/* Generate composition expression */
		Generator::generateCompositionExpression($compositionFile, $outputFile, $composerEnvFile);

		/* Copy composer-env.nix */
		if(!$noCopyComposerEnv && !copy(dirname(__FILE__)."/composer-env.nix", $composerEnvFile))
			throw new Exception("Cannot copy composer-env.nix!");
	}
}
?>
