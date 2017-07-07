<?php
namespace Composer2Nix;
use Exception;

class Generator
{
	function generateNixExpressions($name, $installType, $configFile, $lockFile, $outputFile, $compositionFile, $composerEnvFile, $noCopyComposerEnv)
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
		}
		else
			$lockConfig = null;

		/* Generate packages expression */

		$handle = fopen($outputFile, "w");

		if($handle === false)
			throw new Exception("Cannot write to: ".$outputFile);

		if($lockConfig === null)
			$packages = array();
		else
			$packages = $lockConfig["packages"];

		fwrite($handle, "{composerEnv, fetchgit ? null}:\n\n");
		fwrite($handle, "let\n");
		fwrite($handle, "  dependencies = {\n");

		foreach($packages as $package)
		{
			$sourceObj = $package[$installType];

			switch($sourceObj["type"])
			{
				case "zip":
					$hash = shell_exec('nix-prefetch-url "'.$sourceObj['url'].'"');
					fwrite($handle, '    "'.$package["name"].'" = composerEnv.buildZipPackage {'."\n");
					fwrite($handle, '      name = "'.strtr($package["name"], "/", "-").'-'.$sourceObj["reference"].'";'."\n");
					fwrite($handle, '      url = "'.$sourceObj["url"].'";'."\n");
					fwrite($handle, '      sha256 = "'.substr($hash, 0, -1).'";'."\n");
					break;
				case "git":
					$outputStr = shell_exec('nix-prefetch-git "'.$sourceObj['url'].'" '.$sourceObj["reference"]);

					$output = json_decode($outputStr, true);
					$hash = $output["sha256"];

					fwrite($handle, '    "'.$package["name"].'" = fetchgit {'."\n");
					fwrite($handle, '      name = "'.strtr($package["name"], "/", "-").'-'.$sourceObj["reference"].'";'."\n");
					fwrite($handle, '      url = "'.$sourceObj["url"].'";'."\n");
					fwrite($handle, '      rev = "'.$sourceObj["reference"].'";'."\n");
					fwrite($handle, '      sha256 = "'.$hash.'";'."\n");
					break;
				default:
					throw new Exception("Cannot convert dependency of type: ".$sourceObj["type"]);
			}

			fwrite($handle, "    };\n");
		}

		fwrite($handle, "  };\n");
		fwrite($handle, "in\n");
		fwrite($handle, "composerEnv.buildPackage {\n");
		fwrite($handle, '  name = "'.$name.'";'."\n");
		fwrite($handle, "  src = ./.;\n");
		fwrite($handle, "  inherit dependencies;\n");
		fwrite($handle, "}\n");

		fclose($handle);

		/* Generate composition expression */

		$handle = fopen($compositionFile, "w");

		if($handle === false)
			throw new Exception("Cannot write to: ".$compositionFile);

		function composeNixFilePath($path)
		{
			if((strlen($path) > 0 && substr($path, 0, 1) === "/") || (strlen($path) > 1 && substr($path, 0, 2) === "./"))
				return $path;
			else
				return "./".$path;
		}

		fwrite($handle, "{ pkgs ? import <nixpkgs> { inherit system; }\n");
		fwrite($handle, ", system ? builtins.currentSystem\n");
		fwrite($handle, "}:\n\n");

		fwrite($handle, "let\n");
		fwrite($handle, "  composerEnv = import ".composeNixFilePath($composerEnvFile)." {\n");
		fwrite($handle, "    inherit (pkgs) stdenv writeTextFile fetchurl php unzip;\n");
		fwrite($handle, "  };\n");
		fwrite($handle, "in\n");
		fwrite($handle, "import ".composeNixFilePath($outputFile)." {\n");
		fwrite($handle, "  inherit composerEnv;\n");
		fwrite($handle, "  inherit (pkgs) fetchgit;\n");
		fwrite($handle, "}\n");

		fclose($handle);

		/* Copy composer-env.nix */

		if(!$noCopyComposerEnv && !copy(dirname(__FILE__)."/composer-env.nix", $composerEnvFile))
			throw new Exception("Cannot copy node-env.nix!");
	}
}
?>
