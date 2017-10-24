<?php
namespace Composer2Nix;
use Exception;
use PNDP\NixGenerator;
use Composer2Nix\Expressions\CompositionExpression;
use Composer2Nix\Expressions\PackagesExpression;

class Generator
{
	private static function writeExprToFile($filename, $expr)
	{
		$handle = fopen($filename, "w");

		if($handle === false)
			throw new Exception("Cannot write to: ".$filename);

		fwrite($handle, NixGenerator::phpToNix($expr, true));
		fclose($handle);
	}

	private static function generatePackagesExpression($outputFile, ComposerConfig $config, $executable, $symlinkDependencies, $preferredInstall)
	{
		$expr = new PackagesExpression($config, $executable, $symlinkDependencies, $preferredInstall);
		$expr->fetchSources();
		Generator::writeExprToFile($outputFile, $expr);
	}

	private static function generateCompositionExpression($compositionFile, $outputFile, $composerEnvFile)
	{
		Generator::writeExprToFile($compositionFile, new CompositionExpression($outputFile, $composerEnvFile));
	}

	private static function copyComposerEnv($composerEnvFile, $noCopyComposerEnv)
	{
		if(!$noCopyComposerEnv && !copy(dirname(__FILE__)."/composer-env.nix", $composerEnvFile))
			throw new Exception("Cannot copy composer-env.nix to: ".$composerEnvFile);
	}

	/**
	 * Generates Nix expressions from a provided composer package configuration.
	 *
	 * @param string $name Name of the package or null to derive it from the config file
	 * @param bool $executable Specifies whether the package to be deployed is an executable project
	 * @param string $preferredInstall Specifies the preferred installation source ('dist' or 'source')
	 * @param bool $noDev Indicates whether development dependencies should be excluded or not
	 * @param string $configFile Path to a composer.json configuration file
	 * @param string $lockFile Path to a composer.lock configuration file
	 * @param string $outputFile Path to the generated packages Nix expression
	 * @param string $compositionFile Path to the generated composition Nix expression
	 * @param string $composerEnvFile Path to the composer build environment Nix expression
	 * @param bool $noCopyComposerEnv When set to true the composer build environment expression will not be copied
	 * @param bool $symlinkDependencies Specifies whether the dependencies should be symlinked
	 */
	public static function generateNixExpressions($name, $executable, $preferredInstall, $noDev, $configFile, $lockFile, $outputFile, $compositionFile, $composerEnvFile, $noCopyComposerEnv, $symlinkDependencies)
	{
		$composerConfig = new ComposerConfig($configFile, $lockFile, $name, $noDev);
		Generator::generatePackagesExpression($outputFile, $composerConfig, $executable, $symlinkDependencies, $preferredInstall);
		Generator::generateCompositionExpression($compositionFile, $outputFile, $composerEnvFile);
		Generator::copyComposerEnv($composerEnvFile, $noCopyComposerEnv);
	}
}
?>
