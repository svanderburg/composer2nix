<?php
namespace Composer2Nix;
use Exception;
use PNDP\NixGenerator;
use Composer2Nix\Expressions\CompositionExpression;
use Composer2Nix\Expressions\PackagesExpression;

class Generator
{
	private static function writeExprToFile(string $filename, $expr): void
	{
		$handle = fopen($filename, "w");

		if($handle === false)
			throw new Exception("Cannot write to: ".$filename);

		fwrite($handle, NixGenerator::phpToNix($expr, true)."\n");
		fclose($handle);
	}

	private static function generatePackagesExpression(string $outputFile, ComposerConfig $config, bool $executable, bool $symlinkDependencies, string $preferredInstall): void
	{
		$expr = new PackagesExpression($config, $executable, $symlinkDependencies, $preferredInstall);
		$expr->fetchSources();
		Generator::writeExprToFile($outputFile, $expr);
	}

	private static function generateCompositionExpression(string $compositionFile, string $outputFile, string $composerEnvFile): void
	{
		$baseDir = realpath(dirname($compositionFile));
		Generator::writeExprToFile($compositionFile, new CompositionExpression($baseDir, $outputFile, $composerEnvFile));
	}

	private static function copyComposerEnv(string $composerEnvFile, bool $noCopyComposerEnv): void
	{
		if(!$noCopyComposerEnv && !copy(dirname(__FILE__)."/composer-env.nix", $composerEnvFile))
			throw new Exception("Cannot copy composer-env.nix to: ".$composerEnvFile);
	}

	private static function checkVendorFolder(string $configFile): void
	{
		if(file_exists(dirname($configFile)."/vendor"))
		{
			print("\nWARNING: There is a vendor/ folder in the root directory of the project!\n");
			print("This folder will be used by the Nix builder and influence the outcome!\n");
			print("If you don't want this to happen, then you should remove it before running\n");
			print("any of the Nix commands!\n");
		}
	}

	/**
	 * Generates Nix expressions from a provided composer package configuration.
	 *
	 * @param $name Name of the package or null to derive it from the config file (or null to take it from the composer configuration)
	 * @param $executable Specifies whether the package to be deployed is an executable project
	 * @param $preferredInstall Specifies the preferred installation source ('dist' or 'source')
	 * @param $noDev Indicates whether development dependencies should be excluded or not
	 * @param $configFile Path to a composer.json configuration file
	 * @param $lockFile Path to a composer.lock configuration file
	 * @param $outputFile Path to the generated packages Nix expression
	 * @param $compositionFile Path to the generated composition Nix expression
	 * @param $composerEnvFile Path to the composer build environment Nix expression
	 * @param $noCopyComposerEnv When set to true the composer build environment expression will not be copied
	 * @param $symlinkDependencies Specifies whether the dependencies should be symlinked
	 */
	public static function generateNixExpressions(?string $name, bool $executable, string $preferredInstall, bool $noDev, string $configFile, string $lockFile, string $outputFile, string $compositionFile, string $composerEnvFile, bool $noCopyComposerEnv, bool $symlinkDependencies): void
	{
		$composerConfig = new ComposerConfig($configFile, $lockFile, $name, $noDev);
		Generator::generatePackagesExpression($outputFile, $composerConfig, $executable, $symlinkDependencies, $preferredInstall);
		Generator::copyComposerEnv($composerEnvFile, $noCopyComposerEnv);
		Generator::generateCompositionExpression($compositionFile, $outputFile, $composerEnvFile);
		Generator::checkVendorFolder($configFile);
	}
}
?>
