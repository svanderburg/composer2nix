<?php
namespace Composer2Nix\Sources;
use PNDP\NixGenerator;
use PNDP\AST\NixExpression;
use PNDP\AST\NixFunInvocation;

/**
 * Represents a Subversion source.
 */
class SVNSource extends Source
{
	/** Stores the output hash of the download */
	public $hash;

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
	 * @see Source::fetch()
	 */
	public function fetch()
	{
		$this->hash = shell_exec('nix-prefetch-svn "'.$this->sourceObj['url'].'" '.$this->sourceObj["reference"]);

		if($this->hash === false)
			throw new Exception("Error while invoking nix-prefetch-svn");
	}

	/**
	 * @see NixASTNode::toNixAST()
	 */
	public function toNixAST()
	{
		$ast = parent::toNixAST();

		$ast["src"] = new NixFunInvocation(new NixExpression("fetchsvn"), array(
			"name" => strtr($this->package["name"], "/", "-").'-'.$this->sourceObj["reference"],
			"url" => $this->sourceObj["url"],
			"rev" => $this->sourceObj["reference"],
			"sha256" => $this->hash
		));

		return $ast;
	}
}
?>
