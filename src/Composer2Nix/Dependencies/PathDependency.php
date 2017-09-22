<?php
namespace Composer2Nix\Dependencies;
use PNDP\NixGenerator;
use PNDP\AST\NixFile;

class PathDependency extends Dependency
{
	public function __construct(array $package, array $sourceObj)
	{
		parent::__construct($package, $sourceObj);
	}

	public function toNixAST()
	{
		$dependency = parent::toNixAST();
		$dependency["src"] = new NixFile($sourceObj['url']);
		return $dependency;
	}
}
?>
