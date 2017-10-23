<?php
namespace Composer2Nix\Expressions;
use Composer2Nix\ComposerConfig;
use Composer2Nix\Sources\Source;
use PNDP\NixGenerator;
use PNDP\AST\NixAttrSet;
use PNDP\AST\NixASTNode;
use PNDP\AST\NixExpression;
use PNDP\AST\NixFile;
use PNDP\AST\NixFunction;
use PNDP\AST\NixFunInvocation;
use PNDP\AST\NixInherit;
use PNDP\AST\NixLet;
use PNDP\AST\NixNoDefault;
use PNDP\AST\NixObject;
use PNDP\AST\NixURL;

/**
 * A representation of a packages expression specifying all dependencies
 * involved and where to obtain them.
 */
class PackagesExpression extends NixASTNode
{
	/** Specifies whether the package to be deployed is an executable project */
	public $executable;

	/** Specifies whether the dependencies should be symlinked */
	public $symlinkDependencies;

	/** The composer package configuration */
	public $config;

	/** Specifies the preferred installation source ('dist' or 'source') */
	public $preferredInstall;

	/**
	 * Creates a new packages expression instance.
	 *
	 * @param ComposerConfig $config The composer package configuration
	 * @param bool $executable Specifies whether the package to be deployed is an executable project
	 * @param bool $symlinkDependencies Specifies whether the dependencies should be symlinked
	 * @param string $preferredInstall Specifies the preferred installation source ('dist' or 'source')
	 */
	public function __construct(ComposerConfig $config, $executable, $symlinkDependencies, $preferredInstall)
	{
		$this->executable = $executable;
		$this->symlinkDependencies = $symlinkDependencies;
		$this->config = $config;
		$this->preferredInstall = $preferredInstall;
	}

	private function generateDependenciesExpr(array $packages)
	{
		$sources = array();

		foreach($packages as $package)
		{
			$source = Source::constructSource($package, $this->preferredInstall);
			$source->fetch();
			$sources[$package["name"]] = $source;
		}

		return new NixAttrSet($sources);
	}

	private function generatePackageMetaDataExpr()
	{
		$meta = array();

		if(array_key_exists("homepage", $this->config->values))
			$meta["homepage"] = new NixURL($this->config->values["homepage"]);

		if(array_key_exists("license", $this->config->values))
		{
			if(is_string($this->config->values["license"])) // If the license is a string, just take it
				$meta["license"] = $this->config->values["license"];
			else if(is_array($this->config->values["license"])) // If the license is an array, compose a comma , separated string from it
			{
				if(count($this->config->values["license"]) > 0)
					$meta["license"] = $this->config->values["license"][0];

				for($i = 1; $i < count($this->config->values["license"]); $i++)
					$meta["license"] .= ", ".$this->config->values["license"][$i];
			}
		}

		return new NixAttrSet($meta);
	}

	private function generatePackageBuild()
	{
		return new NixFunInvocation(new NixExpression("composerEnv.buildPackage"), array(
			"name" => $this->config->packageName,
			"src" => new NixFile("./."),
			"executable" => $this->executable,
			"packages" => new NixInherit(),
			"devPackages" => new NixInherit(),
			"noDev" => new NixInherit(),
			"symlinkDependencies" => $this->symlinkDependencies,
			"meta" => $this->generatePackageMetaDataExpr()
		));
	}

	/**
	 * @see NixAST::toNixAST()
	 */
	public function toNixAST()
	{
		return new NixFunction(array(
			"composerEnv" => new NixNoDefault(),
			"fetchurl" => new NixNoDefault(),
			"fetchgit" => null,
			"fetchhg" => null,
			"fetchsvn" => null,
			"noDev" => false
		), new NixLet(array(
			"packages" => $this->generateDependenciesExpr($this->config->packages),
			"devPackages" => $this->generateDependenciesExpr($this->config->devPackages)
		), $this->generatePackageBuild()));
	}
}
?>
