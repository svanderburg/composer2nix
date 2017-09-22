<?php
namespace Composer2Nix\Expressions;
use PNDP\NixGenerator;
use PNDP\AST\NixAttrReference;
use PNDP\AST\NixExpression;
use PNDP\AST\NixFunction;
use PNDP\AST\NixFunInvocation;
use PNDP\AST\NixFile;
use PNDP\AST\NixImport;
use PNDP\AST\NixInherit;
use PNDP\AST\NixLet;
use PNDP\AST\NixObject;
use Composer2Nix\NixASTNode;

class CompositionExpression extends NixASTNode
{
	public function __construct($outputFile, $composerEnvFile)
	{
		$this->outputFile = $outputFile;
		$this->composerEnvFile = $composerEnvFile;
	}

	private function prefixRelativePath($target)
	{
		if(substr($target, 0, 1) == "/" || substr($target, 0, 2) == "./" || substr($target, 0, 3) == "../")
			return $target;
		else
			return "./".$target;
	}

	public function toNixAST()
	{
		return new NixFunction(array(
			"pkgs" => new NixFunInvocation(new NixImport(new NixExpression("<nixpkgs>")), array(
				"system" => new NixInherit()
			)),
			"system" => new NixAttrReference(new NixExpression("builtins"), new NixExpression("currentSystem")),
			"noDev" => false
		), new NixLet(array(
			"composerEnv" => new NixFunInvocation(new NixImport(new NixFile($this->prefixRelativePath($this->composerEnvFile))), array(
				"stdenv" => new NixInherit("pkgs"),
				"writeTextFile" => new NixInherit("pkgs"),
				"fetchurl" => new NixInherit("pkgs"),
				"php" => new NixInherit("pkgs"),
				"unzip" => new NixInherit("pkgs")
			))
		), new NixFunInvocation(new NixImport(new NixFile($this->prefixRelativePath($this->outputFile))), array(
			"composerEnv" => new NixInherit(),
			"noDev" => new NixInherit(),
			"fetchurl" => new NixInherit("pkgs"),
			"fetchgit" => new NixInherit("pkgs"),
			"fetchhg" => new NixInherit("pkgs"),
			"fetchsvn" => new NixInherit("pkgs")
		))));
	}
}
?>
