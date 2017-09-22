<?php
namespace Composer2Nix\Dependencies;
use PNDP\NixGenerator;
use PNDP\AST\NixExpression;
use PNDP\AST\NixFunInvocation;

class HgDependency extends Dependency
{
	public function __construct(array $package, array $sourceObj)
	{
		parent::__construct($package, $sourceObj);
	}

	public function toNixAST()
	{
		$dependency = parent::toNixAST();

		$hash = shell_exec('nix-prefetch-hg "'.$this->sourceObj['url'].'" '.$this->sourceObj["reference"]);
		
		if($hash === false)
			throw new Exception("Error while invoking nix-prefetch-hg");
		else
		{
			$dependency["src"] = new NixFunInvocation(new NixExpression("fetchhg"), array(
				"name" => strtr($package["name"], "/", "-").'-'.$this->sourceObj["reference"],
				"url" => $this->sourceObj["url"],
				"rev" => $this->sourceObj["reference"],
				"sha256" => $hash
			));
		}

		return $dependency;
	}
}
?>
