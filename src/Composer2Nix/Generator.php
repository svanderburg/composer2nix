<?php
namespace Composer2Nix;
use Exception;

class Generator
{
	private static function composeNixFilePath($path)
	{
		// Prefix certain relative paths so that they are of the path type in the Nix expression language
		if((strlen($path) > 0 && substr($path, 0, 1) === "/") || (strlen($path) > 1 && substr($path, 0, 2) === "./") || (strlen($path) > 2 && substr($path, 0, 3) === "../"))
			$normalizedPath = $path;
		else
			$normalizedPath = "./".$path;

		if(strpos($normalizedPath, ' ') === false)
			return $normalizedPath; // Path names without spaces don't require any escaping
		else
			return '/. + "'.$normalizedPath.'"'; // Compose a path containing spaces
	}

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

	private static function generatePackagesExpression($outputFile, $name, $preferredInstall, array $packages, $executable)
	{
		$handle = fopen($outputFile, "w");

		if($handle === false)
			throw new Exception("Cannot write to: ".$outputFile);

		fwrite($handle, "{composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null}:\n\n");
		fwrite($handle, "let\n");
		fwrite($handle, "  dependencies = {\n");

		foreach($packages as $package)
		{
			$sourceObj = Generator::selectSourceObject($preferredInstall, $package);

			switch($sourceObj["type"])
			{
				case "path":
					fwrite($handle, '    "'.$package["name"].'" = '.Generator::composeNixFilePath($sourceObj['url']).';'."\n");
					break;

				case "zip":
					fwrite($handle, '    "'.$package["name"].'" = composerEnv.buildZipPackage {'."\n");

					if($sourceObj["reference"] == "")
						$reference = "";
					else
						$reference = "-".$sourceObj["reference"];

					fwrite($handle, '      name = "'.strtr($package["name"], "/", "-").$reference.'";'."\n");

					if(substr($sourceObj["url"], 0, 7) === "http://" || substr($sourceObj["url"], 0, 8) === "https://")
					{
						$hash = shell_exec('nix-prefetch-url "'.$sourceObj['url'].'"');
						fwrite($handle, "      src = fetchurl {\n");
						fwrite($handle, '        url = "'.$sourceObj["url"].'";'."\n");
						fwrite($handle, '        sha256 = "'.substr($hash, 0, -1).'";'."\n");
						fwrite($handle, "      };\n");
					}
					else
						fwrite($handle, "      src = ".Generator::composeNixFilePath($sourceObj['url']).";\n");

					fwrite($handle, "    };\n");
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
					fwrite($handle, "    };\n");
					break;

				case "hg":
					$hash = shell_exec('nix-prefetch-hg "'.$sourceObj['url'].'" '.$sourceObj["reference"]);

					fwrite($handle, '    "'.$package["name"].'" = fetchhg {'."\n");
					fwrite($handle, '      name = "'.strtr($package["name"], "/", "-").'-'.$sourceObj["reference"].'";'."\n");
					fwrite($handle, '      url = "'.$sourceObj["url"].'";'."\n");
					fwrite($handle, '      rev = "'.$sourceObj["reference"].'";'."\n");
					fwrite($handle, '      sha256 = "'.substr($hash, 0, -1).'";'."\n");
					fwrite($handle, "    };\n");
					break;

				case "svn":
					$hash = shell_exec('nix-prefetch-svn "'.$sourceObj['url'].'" '.$sourceObj["reference"]);

					fwrite($handle, '    "'.$package["name"].'" = fetchsvn {'."\n");
					fwrite($handle, '      name = "'.strtr($package["name"], "/", "-").'-'.$sourceObj["reference"].'";'."\n");
					fwrite($handle, '      url = "'.$sourceObj["url"].'";'."\n");
					fwrite($handle, '      rev = "'.$sourceObj["reference"].'";'."\n");
					fwrite($handle, '      sha256 = "'.substr($hash, 0, -1).'";'."\n");
					fwrite($handle, "    };\n");
					break;

				default:
					throw new Exception("Cannot convert dependency of type: ".$sourceObj["type"]);
			}
		}

		fwrite($handle, "  };\n");
		fwrite($handle, "in\n");
		fwrite($handle, "composerEnv.buildPackage {\n");
		fwrite($handle, '  name = "'.$name.'";'."\n");
		fwrite($handle, "  src = ./.;\n");
		fwrite($handle, "  executable = ".($executable ? "true" : "false").";\n");
		fwrite($handle, "  inherit dependencies;\n");
		fwrite($handle, "}\n");

		fclose($handle);
	}

	private static function generateCompositionExpression($compositionFile, $outputFile, $composerEnvFile)
	{
		$handle = fopen($compositionFile, "w");

		if($handle === false)
			throw new Exception("Cannot write to: ".$compositionFile);

		fwrite($handle, "{ pkgs ? import <nixpkgs> { inherit system; }\n");
		fwrite($handle, ", system ? builtins.currentSystem\n");
		fwrite($handle, "}:\n\n");

		fwrite($handle, "let\n");
		fwrite($handle, "  composerEnv = import ".Generator::composeNixFilePath($composerEnvFile)." {\n");
		fwrite($handle, "    inherit (pkgs) stdenv writeTextFile fetchurl php unzip;\n");
		fwrite($handle, "  };\n");
		fwrite($handle, "in\n");
		fwrite($handle, "import ".Generator::composeNixFilePath($outputFile)." {\n");
		fwrite($handle, "  inherit composerEnv;\n");
		fwrite($handle, "  inherit (pkgs) fetchurl fetchgit fetchhg fetchsvn;\n");
		fwrite($handle, "}\n");

		fclose($handle);
	}

	public static function generateNixExpressions($name, $executable, $preferredInstall, $noDev, $configFile, $lockFile, $outputFile, $compositionFile, $composerEnvFile, $noCopyComposerEnv)
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
			{
				foreach($lockConfig["packages-dev"] as $identifier => $devPackage)
					$packages[$identifier] = $devPackage;
			}
		}
		else
			$packages = array();

		/* Generate packages expression */
		Generator::generatePackagesExpression($outputFile, $name, $preferredInstall, $packages, $executable);

		/* Generate composition expression */
		Generator::generateCompositionExpression($compositionFile, $outputFile, $composerEnvFile);

		/* Copy composer-env.nix */
		if(!$noCopyComposerEnv && !copy(dirname(__FILE__)."/composer-env.nix", $composerEnvFile))
			throw new Exception("Cannot copy composer-env.nix!");
	}
}
?>
