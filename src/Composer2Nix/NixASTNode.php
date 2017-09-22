<?php
// TODO: move to PNDP

namespace Composer2Nix;
use PNDP\NixGenerator;
use PNDP\AST\NixObject;

abstract class NixASTNode extends NixObject
{
	abstract public function toNixAST();

	public function toNixExpr($indentLevel, $format)
	{
		return NixGenerator::phpToIndentedNix($this->toNixAST(), $indentLevel, $format);
	}
}
?>
