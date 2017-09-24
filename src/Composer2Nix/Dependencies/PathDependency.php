<?php
namespace Composer2Nix\Dependencies;
use PNDP\NixGenerator;
use PNDP\AST\NixFile;

/**
 * Represents a dependency to a local filesystem path.
 */
class PathDependency extends Dependency
{
	/**
	 * Constructs a new Git dependency instance.
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
		$dependency["src"] = new NixFile($sourceObj['url']);
		return $dependency;
	}
}
?>
