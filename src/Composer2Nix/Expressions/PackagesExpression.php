<?php
namespace Composer2Nix\Expressions;
use Composer2Nix\ComposerConfig;
use Composer2Nix\Package;
use Composer2Nix\SourcesCache;
use Composer2Nix\Sources\Source;
use PNDP\NixGenerator;
use PNDP\AST\NixASTNode;
use PNDP\AST\NixFunction;
use PNDP\AST\NixLet;
use PNDP\AST\NixNoDefault;

/**
 * A representation of a packages expression specifying all dependencies
 * involved and where to obtain them.
 */
class PackagesExpression extends NixASTNode
{
	/** Contains a cache with all the dependencies' sources */
	public SourcesCache $sourcesCache;

	/** Contains all properties of the composer package to deploy */
	public Package $package;

	/**
	 * Creates a new packages expression instance.
	 *
	 * @param $composerConfig The composer package configuration
	 * @param $executable Specifies whether the package to be deployed is an executable project
	 * @param $symlinkDependencies Specifies whether the dependencies should be symlinked
	 * @param $preferredInstall Specifies the preferred installation source ('dist' or 'source')
	 */
	public function __construct(ComposerConfig $composerConfig, bool $executable, bool $symlinkDependencies, string $preferredInstall)
	{
		$this->executable = $executable;
		$this->sourcesCache = new SourcesCache($composerConfig, $preferredInstall);
		$this->package = new Package($composerConfig, $executable, $symlinkDependencies);
	}

	/**
	 * Fetches the package metadata of all sources.
	 */
	public function fetchSources(): void
	{
		$this->sourcesCache->fetchSources();
	}

	/**
	 * @see NixASTNode::toNixAST()
	 */
	public function toNixAST()
	{
		return new NixFunction(array(
			"composerEnv" => new NixNoDefault(),
			"fetchurl" => new NixNoDefault(),
			"fetchgit" => null,
			"fetchhg" => null,
			"fetchsvn" => null,
			"noDev" => false
		), new NixLet($this->sourcesCache->toNixAST(), $this->package));
	}
}
?>
