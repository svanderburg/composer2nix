<?php
namespace Composer2Nix\Expressions;
use Composer2Nix\ComposerConfig;
use Composer2Nix\Dependencies\Dependency;
use PNDP\NixGenerator;
use PNDP\AST\NixAttrSet;
use PNDP\AST\NixExpression;
use PNDP\AST\NixFile;
use PNDP\AST\NixFunction;
use PNDP\AST\NixFunInvocation;
use PNDP\AST\NixInherit;
use PNDP\AST\NixLet;
use PNDP\AST\NixNoDefault;
use PNDP\AST\NixObject;
use PNDP\AST\NixURL;
use Composer2Nix\NixASTNode;

class PackagesExpression extends NixASTNode
{
	public $executable;

	public $symlinkDependencies;

	public $config;

	public $preferredInstall;

	public function __construct(ComposerConfig $config, $executable, $symlinkDependencies, $preferredInstall)
	{
		$this->executable = $executable;
		$this->symlinkDependencies = $symlinkDependencies;
		$this->config = $config;
		$this->preferredInstall = $preferredInstall;
	}

	private function generateDependenciesExpr(array $packages)
	{
		$dependencies = array();

		foreach($packages as $package)
		{
			$dependency = Dependency::constructDependency($package, $this->preferredInstall);
			$dependencies[$package["name"]] = $dependency;
		}

		return new NixAttrSet($dependencies);
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
