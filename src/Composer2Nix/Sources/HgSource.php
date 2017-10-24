<?php
namespace Composer2Nix\Sources;
use PNDP\NixGenerator;
use PNDP\AST\NixExpression;
use PNDP\AST\NixFunInvocation;

/**
 * Represents a Mercurial source.
 */
class HgSource extends Source
{
	public $hash;

	/**
	 * Constructs a new Mercurial dependency instance.
	 *
	 * @param array $package An array of package configuration properties
	 * @param array $sourceObj An array of download properties
	 */
	public function __construct(array $package, array $sourceObj)
	{
		parent::__construct($package, $sourceObj);
	}

	/**
	 * @see Source::fetch()
	 */
	public function fetch()
	{
		$this->hash = shell_exec('nix-prefetch-hg "'.$this->sourceObj['url'].'" '.$this->sourceObj["reference"]);

		if($this->hash === false)
			throw new Exception("Error while invoking nix-prefetch-hg");
	}

	/**
	 * @see NixASTNode::toNixAST()
	 */
	public function toNixAST()
	{
		$ast = parent::toNixAST();

		$ast["src"] = new NixFunInvocation(new NixExpression("fetchhg"), array(
			"name" => strtr($this->package["name"], "/", "-").'-'.$this->sourceObj["reference"],
			"url" => $this->sourceObj["url"],
			"rev" => $this->sourceObj["reference"],
			"sha256" => $this->hash
		));

		return $ast;
	}
}
?>
