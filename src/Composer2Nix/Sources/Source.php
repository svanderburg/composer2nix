<?php
namespace Composer2Nix\Sources;

use PNDP\AST\NixASTNode;
use Exception;

/**
 * Represents a dependency of a composer package that can be converted into a
 * Nix expression that obtains it.
 */
abstract class Source extends NixASTNode
{
    /** An array of package configuration properties */
    public $package;

    /** An array of download properties */
    protected $sourceObj;

    /**
     * Creates a new source instance. This constructor should never be used
     * directly. Instead, use Source::constructSource()
     *
     * @param array $package An array of package configuration properties
     * @param array $sourceObj An array of download properties
     */
    public function __construct(array $package, array $sourceObj)
    {
        $this->package = $package;
        $this->sourceObj = $sourceObj;
    }

    private static function selectSourceObject($preferredInstall, array $package)
    {
        if ($preferredInstall === "source") {
            if (array_key_exists("source", $package)) {
                return $package["source"];
            } elseif (array_key_exists("dist", $package)) {
                return $package["dist"];
            } else {
                throw new Exception("Encountered a dangling package reference");
            }
        } else {
            if (array_key_exists("dist", $package)) {
                return $package["dist"];
            } elseif (array_key_exists("source", $package)) {
                return $package["source"];
            } else {
                throw new Exception("Encountered a dangling package reference");
            }
        }
    }

    /**
     * Constructs a new source from a package configuration.
     *
     * @param array $package An array of package configuration properties
     * @param string $preferredInstall Preferred installation type (source or dist)
     * @return Source A specific kind of dependency object derived from the source's type
     * @throw An exception if the type is unrecognized
     */
    public static function constructSource(array $package, $preferredInstall)
    {
        $sourceObj = Source::selectSourceObject($preferredInstall, $package);

        switch ($sourceObj["type"]) {
            case "path":
                return new PathSource($package, $sourceObj);
            case "zip":
                return new ZipSource($package, $sourceObj);
            case "git":
                return new GitSource($package, $sourceObj);
            case "hg":
                return new HgSource($package, $sourceObj);
            case "svn":
                return new SVNSource($package, $sourceObj);
            default:
                throw new Exception("Cannot convert dependency of type: ".$sourceObj["type"]);
        }
    }

    /**
     * Fetches the package metadata from the external source.
     */
    abstract public function fetch();

    /**
     * @see NixASTNode::toNixAST()
     */
    public function toNixAST()
    {
        $ast = array();

        if (array_key_exists("target-dir", $this->package)) {
            $ast["targetDir"] = $this->package["target-dir"];
        } else {
            $ast["targetDir"] = "";
        }

        return $ast;
    }
}
