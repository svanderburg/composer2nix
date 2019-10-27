<?php
namespace Composer2Nix;

use Composer2Nix\Sources\Source;
use PNDP\AST\NixASTNode;
use PNDP\AST\NixAttrSet;

/**
 * A cache store that memorizes all packages to obtain from external sources.
 */
class SourcesCache extends NixASTNode
{
    /** The composer package configuration */
    public $composerConfig;

    /** Specifies the preferred installation source ('dist' or 'source') */
    public $preferredInstall;

    /** Contains all relevant metadata for the runtime dependencies */
    public $packages;

    /** Contains all relevant metadata for the development dependencies */
    public $devPackages;

    /**
     * Creates a new sources cache instance.
     *
     * @param ComposerConfig $composerConfig The composer package configuration
     * @param string $preferredInstall Specifies the preferred installation source ('dist' or 'source')
     */
    public function __construct(ComposerConfig $composerConfig, $preferredInstall)
    {
        $this->composerConfig = $composerConfig;
        $this->preferredInstall = $preferredInstall;
    }

    private function fetchSourcesOfPackages(array $packages)
    {
        $sources = array();

        foreach ($packages as $package) {
            $source = Source::constructSource($package, $this->preferredInstall);
            $source->fetch();
            $sources[$package["name"]] = $source;
        }

        return $sources;
    }

    /**
     * Fetches the package metadata of all sources.
     */
    public function fetchSources()
    {
        $this->packages = $this->fetchSourcesOfPackages($this->composerConfig->packages);
        $this->devPackages = $this->fetchSourcesOfPackages($this->composerConfig->devPackages);
    }

    /**
     * @see NixASTNode::toNixAST()
     */
    public function toNixAST()
    {
        return array(
            "packages" => new NixAttrSet($this->packages),
            "devPackages" => new NixAttrSet($this->devPackages)
        );
    }
}
