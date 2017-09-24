<?php
namespace Composer2Nix\Dependencies;
use PNDP\NixGenerator;
use PNDP\AST\NixExpression;
use PNDP\AST\NixFunInvocation;

/**
 * Represents a Subversion dependency.
 */
class SVNDependency extends Dependency
{
	/**
	 * Constructs a new Subversion dependency instance.
	 *
	 * @param array $package An array of package configuration properties
	 * @param array $sourceObj An array of download properties
	 */
	public function __construct(array $package, array $sourceObj)
	{
		parent::__construct($package, $sourceObj);
	}

	/**
	 * @see NixAST::toNixAST
	 */
	public function toNixAST()
	{
		$dependency = parent::toNixAST();

		$hash = shell_exec('nix-prefetch-svn "'.$sourceObj['url'].'" '.$sourceObj["reference"]);

		if($hash === false)
			throw new Exception("Error while invoking nix-prefetch-svn");
		else
		{
			$dependency["src"] = new NixFunInvocation(new NixExpression("fetchsvn"), array(
				"name" => strtr($package["name"], "/", "-").'-'.$sourceObj["reference"],
				"url" => $sourceObj["url"],
				"rev" => $sourceObj["reference"],
				"sha256" => $hash
			));
		}

		return $dependency;
	}
}
?>
