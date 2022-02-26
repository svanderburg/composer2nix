<?php
namespace Composer2Nix;
use Exception;

class Composer
{
	private static function rrmdir(string $dir): void
	{
		if(is_dir($dir))
		{
			$objects = scandir($dir);
			foreach($objects as $object)
			{
				if($object != "." && $object != "..")
				{
					if(is_dir($dir."/".$object))
						Composer::rrmdir($dir."/".$object);
					else
						unlink($dir."/".$object);
				}
			}

			rmdir($dir);
		}
	}

	/**
	 * Composes a composer.json and composer.lock file for a given package
	 * and composes a CLI-utility project from it.
	 *
	 * @param $dependencyName Name of the package
	 * @param $versionSpec The desired version to deploy or null for the latest version
	 * @param $preferredInstall Preferred package installation type (source or dist)
	 * @param $noDev When set true it will exclude development dependencies
	 */
	public static function composePackageFromDependency(string $dependencyName, ?string $versionSpec, string $preferredInstall, bool $noDev): void
	{
		/* Generate a composer.json file with only the requested dependency */
		$handle = fopen("composer.json", "w");

		if($handle === false)
			throw new Exception("Cannot write to: composer.json");

		fwrite($handle, "{\n");
		fwrite($handle, '  "require": {'."\n");

		if($versionSpec === null)
			$versionSpec = "*";

		fwrite($handle, '    "'.$dependencyName.'": "'.$versionSpec.'"'."\n");
		fwrite($handle, "  }\n");
		fwrite($handle, "}\n");

		fclose($handle);

		/* Run composer to get a lock file showing the dependencies */
		if($noDev)
			$params = "--no-dev";
		else
			$params = "";

		if($preferredInstall == "source")
			$params .= " --prefer-source";
		else if($preferredInstall == "dist")
			$params .= " --prefer-dist";

		$composerPath = shell_exec("nix-build '<nixpkgs>' -A phpPackages.composer --no-out-link");
		if($composerPath === false)
			throw new Exception("Cannot deploy the composer Nix package!");

		$composerExecutable = substr($composerPath, 0, -1)."/bin/composer";

		$result = shell_exec($composerExecutable." ".$params." install");
		if($result === false)
			throw new Exception("Failed running composer!\n");

		print($result."\n");

		/* Remove vendor folder */
		Composer::rrmdir("vendor");
	}
}
?>
