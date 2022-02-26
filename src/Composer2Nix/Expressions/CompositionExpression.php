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
	public string $outputFile;

	/** Path to the composer environment expression containing the build functionality */
	public string $composerEnvFile;

	private function relativePath(string $from, string $to, $ps = DIRECTORY_SEPARATOR): string
	{
		$arFrom = explode($ps, rtrim($from, $ps));
		$arTo = explode($ps, rtrim($to, $ps));

		while(count($arFrom) && count($arTo) && ($arFrom[0] == $arTo[0]))
		{
			array_shift($arFrom);
			array_shift($arTo);
		}
		return str_pad("", count($arFrom) * 3, '..'.$ps).implode($ps, $arTo);
	}

	/**
	 * Composes a new composition expression object.
	 *
	 * @param $baseDir Directory from which relative paths will be decided
	 * @param $outputFile Path to the packages Nix expression
	 * @param $composerEnvFile Path to the composer environment expression containing the build functionality
	 */
	public function __construct(string $baseDir, string $outputFile, string $composerEnvFile)
	{
		$this->outputFile = CompositionExpression::relativePath($baseDir, realpath($outputFile));
		$this->composerEnvFile = CompositionExpression::relativePath($baseDir, realpath($composerEnvFile));
	}

	/**
	 * Prefixes a given target path with ./ if it is relative and has no
	 * such symbols in the beginning.
	 *
	 * @param $target Target path
	 * @return An optionally prefixed target path
	 */
	private function prefixRelativePath(string $target): string
	{
		if(substr($target, 0, 1) == "/" || substr($target, 0, 2) == "./" || substr($target, 0, 3) == "../")
			return $target;
		else
			return "./".$target;
	}

	/**
	 * @see NixASTNode::toNixAST()
	 */
	public function toNixAST()
	{
		return new NixFunction(array(
			"pkgs" => new NixFunInvocation(new NixImport(new NixExpression("<nixpkgs>")), array(
				"system" => new NixInherit()
			)),
			"system" => new NixAttrReference(new NixExpression("builtins"), new NixExpression("currentSystem")),
			"noDev" => false,
			"php" => new NixAttrReference(new NixExpression("pkgs"), new NixExpression("php")),
			"phpPackages" => new NixAttrReference(new NixExpression("pkgs"), new NixExpression("phpPackages")),
		), new NixLet(array(
			"composerEnv" => new NixFunInvocation(new NixImport(new NixFile($this->prefixRelativePath($this->composerEnvFile))), array(
				"stdenv" => new NixInherit("pkgs"),
				"lib" => new NixInherit("pkgs"),
				"writeTextFile" => new NixInherit("pkgs"),
				"fetchurl" => new NixInherit("pkgs"),
				"unzip" => new NixInherit("pkgs"),
				"php" => new NixInherit(),
				"phpPackages" => new NixInherit()
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
