<?php
// TODO: move to PNDP

namespace Composer2Nix;
use PNDP\NixGenerator;
use PNDP\AST\NixObject;

/**
 * A representation of a Nix expression that is non-terminal, i.e. it is
 * composed out of other objects.
 */
abstract class NixASTNode extends NixObject
{
	/**
	 * Returns a compound object that will be converted into a Nix
	 * expression.
	 */
	abstract public function toNixAST();

	/**
	 * @see NixObject::toNixExpr
	 */
	public function toNixExpr($indentLevel, $format)
	{
		return NixGenerator::phpToIndentedNix($this->toNixAST(), $indentLevel, $format);
	}
}
?>
