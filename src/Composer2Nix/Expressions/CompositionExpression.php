<?php
namespace Composer2Nix\Expressions;
use PNDP\NixGenerator;
use PNDP\AST\NixAttrReference;
use PNDP\AST\NixASTNode;
use PNDP\AST\NixExpression;
use PNDP\AST\NixFunction;
use PNDP\AST\NixFunInvocation;
use PNDP\AST\NixFile;
use PNDP\AST\NixImport;
use PNDP\AST\NixInherit;
use PNDP\AST\NixLet;
use PNDP\AST\NixObject;

/**
 * A representation of a composition expression whose purpose is to compose
 * a package from its dependencies.
 */
class CompositionExpression extends NixASTNode
{
	/** Path to the packages Nix expression */
	public $outputFile;

	/** Path to the composer environment expression containing the build functionality */
	public $composerEnvFile;

	/**
	 * Composes a new composition expression object.
	 *
	 * @param string $outputFile Path to the packages Nix expression
	 * @param string $composerEnvFile Path to the composer environment expression containing the build functionality
	 */
	public function __construct($outputFile, $composerEnvFile)
	{
		$this->outputFile = $outputFile;
		$this->composerEnvFile = $composerEnvFile;
	}

	/**
	 * Prefixes a given target path with ./ if it is relative and has no
	 * such symbols in the beginning.
	 *
	 * @param string $target Target path
	 * @return string An optionally prefixed target path
	 */
	private function prefixRelativePath($target)
	{
		if(substr($target, 0, 1) == "/" || substr($target, 0, 2) == "./" || substr($target, 0, 3) == "../")
			return $target;
		else
			return "./".$target;
	}

	/**
	 * @see NixAST::toNixAST()
	 */
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
