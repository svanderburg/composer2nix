<?php
namespace Composer2Nix\Sources;
use PNDP\NixGenerator;
use PNDP\AST\NixFile;

/**
 * Represents a source referring to a local filesystem path.
 */
class PathSource extends Source
{
	/** Path to the file artifact */
	public string $path;

	/**
	 * Constructs a new Git dependency instance.
	 *
	 * @param $package An array of package configuration properties
	 * @param $sourceObj An array of download properties
	 */
	public function __construct(array $package, array $sourceObj)
	{
		parent::__construct($package, $sourceObj);
	}

	/**
	 * @see Source::fetch()
	 */
	public function fetch(): void
	{
		$this->path = $this->sourceObj['url'];
	}

	/**
	 * @see NixASTNode::toNixAST()
	 */
	public function toNixAST()
	{
		$ast = parent::toNixAST();
		$ast["src"] = new NixFile($this->path);
		return $ast;
	}
}
?>
