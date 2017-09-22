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
		Generator::writeExprToFile($outputFile, new PackagesExpression($config, $executable, $symlinkDependencies, $preferredInstall));
	}

	private static function generateCompositionExpression($compositionFile, $outputFile, $composerEnvFile)
	{
		Generator::writeExprToFile($compositionFile, new CompositionExpression($outputFile, $composerEnvFile));
	}

	private static function copyComposerEnv($composerEnvFile, $noCopyComposerEnv)
	{
		if(!$noCopyComposerEnv && !copy(dirname(__FILE__)."/composer-env.nix", $composerEnvFile))
			throw new Exception("Cannot copy composer-env.nix to".$composerEnvFile);
	}

	public static function generateNixExpressions($name, $executable, $preferredInstall, $noDev, $configFile, $lockFile, $outputFile, $compositionFile, $composerEnvFile, $noCopyComposerEnv, $symlinkDependencies)
	{
		$config = new ComposerConfig($configFile, $lockFile, $name, $noDev);
		Generator::generatePackagesExpression($outputFile, $config, $executable, $symlinkDependencies, $preferredInstall);
		Generator::generateCompositionExpression($compositionFile, $outputFile, $composerEnvFile);
		Generator::copyComposerEnv($composerEnvFile, $noCopyComposerEnv);
	}
}
?>
