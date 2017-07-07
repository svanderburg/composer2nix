#!/usr/bin/env php
<?php
require_once(dirname(__FILE__)."/../vendor/autoload.php");

use Composer2Nix\Generator;

function displayHelp($command)
{
	print("Usage: ".$command." [OPTION]\n\n");
	echo <<<EOT
This executable can be used to generate Nix expressions from a composer.lock
(and a composer.json) file so that a package and all its dependencies can be
deployed by the Nix package manager.

Options:
     --config-file=FILE  Path to the composer.json file (defaults to:
                         composer.json)
     --lock-file=FILE    Path to the composer.lock file (defaults to:
                         composer.lock)
     --output=FILE       Path to the Nix expression containing the generated
                         packages (defaults to: php-packages.nix)
     --composition=FILE  Path to the Nix expression that composes the package
                         (defaults to: default.nix)
     --composer-env=FILE Path to the Nix expression deploying the composer
                         packages (defaults to: composer-env.nix)
     --prefer-source     Forces installation from package sources when possible
     --prefer-dist       Forces installation from package dist
     --name              Name of the generated package (defaults to the name
                         provided in the composer.json file)
     --no-copy-composer-env
                         Do not create a copy of the Nix expression that builds
                         composer packages
 -h, --help              Shows the usage of this command
 -v, --version           Shows the version of this command

EOT;
}

function displayVersion($command)
{
	print($command." (composer2nix 0.0.1)\n\nCopyright (C) 2017 Sander van der Burg\n");
}

/* Parse command line options */

$options = getopt("hv", array(
	"config-file:",
	"lock-file:",
	"output:",
	"composition:",
	"composer-env:",
	"prefer-source",
	"prefer-dist",
	"name:",
	"no-copy-composer-env",
	"help",
	"version"
));

if($options === false)
{
	fwrite(STDERR, "Cannot parse the command-line options!\n");
	exit(1);
}

/* Parse the options themselves */

if(array_key_exists("h", $options) || array_key_exists("help", $options))
{
	displayHelp($argv[0]);
	exit();
}

if(array_key_exists("v", $options) || array_key_exists("version", $options))
{
	displayVersion($argv[0]);
	exit();
}

if(array_key_exists("config-file", $options))
	$configFile = $options["config-file"];
else
	$configFile = "composer.json";

if(array_key_exists("lock-file", $options))
	$lockFile = $options["lock-file"];
else
	$lockFile = "composer.lock";


if(array_key_exists("output", $options))
	$outputFile = $options["output"];
else
	$outputFile = "php-packages.nix";

if(array_key_exists("composition", $options))
	$compositionFile = $options["composition"];
else
	$compositionFile = "default.nix";

if(array_key_exists("composer-env", $options))
	$composerEnvFile = $options["composer-env"];
else
	$composerEnvFile = "composer-env.nix";

$noCopyComposerEnv = array_key_exists("no-copy-composer-env", $options);

$installType = "dist"; // TODO: consult composer.json's preferred-install property. defaults to: auto

if(array_key_exists("prefer-source", $options))
	$installType = "source";

if(array_key_exists("prefer-dist", $options))
	$installType = "dist";

if(array_key_exists("name", $options))
	$name = $options["name"];
else
	$name = null;

/* Execute the generator */

try
{
	Generator::generateNixExpressions($name, $installType, $configFile, $lockFile, $outputFile, $compositionFile, $composerEnvFile, $noCopyComposerEnv);
}
catch(Exception $ex)
{
	fwrite(STDERR, $ex->getMessage()."\n");
	exit(1);
}
?>
