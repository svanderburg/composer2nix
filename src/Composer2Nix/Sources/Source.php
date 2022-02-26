<?php
namespace Composer2Nix\Sources;
use Exception;
use PNDP\AST\NixASTNode;

/**
 * Represents a dependency of a composer package that can be converted into a
 * Nix expression that obtains it.
 */
abstract class Source extends NixASTNode
{
	/** An array of package configuration properties */
	public array $package;

	/** An array of download properties */
	protected array $sourceObj;

	/**
	 * Creates a new source instance. This constructor should never be used
	 * directly. Instead, use Source::constructSource()
	 *
	 * @param $package An array of package configuration properties
	 * @param $sourceObj An array of download properties
	 */
	public function __construct(array $package, array $sourceObj)
	{
		$this->package = $package;
		$this->sourceObj = $sourceObj;
	}

	private static function selectSourceObject(string $preferredInstall, array $package): array
	{
		if($preferredInstall === "source")
		{
			if(array_key_exists("source", $package))
				return $package["source"];
			else if(array_key_exists("dist", $package))
				return $package["dist"];
			else
				throw new Exception("Encountered a dangling package reference");
		}
		else
		{
			if(array_key_exists("dist", $package))
				return $package["dist"];
			else if(array_key_exists("source", $package))
				return $package["source"];
			else
				throw new Exception("Encountered a dangling package reference");
		}
	}

	/**
	 * Constructs a new source from a package configuration.
	 *
	 * @param $package An array of package configuration properties
	 * @param $preferredInstall Preferred installation type (source or dist)
	 * @return A specific kind of dependency object derived from the source's type
	 * @throw An exception if the type is unrecognized
	 */
	public static function constructSource(array $package, string $preferredInstall): Source
	{
		$sourceObj = Source::selectSourceObject($preferredInstall, $package);

		switch($sourceObj["type"])
		{
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
	abstract public function fetch(): void;

	/**
	 * @see NixASTNode::toNixAST()
	 */
	public function toNixAST()
	{
		$ast = array();

		if(array_key_exists("target-dir", $this->package))
			$ast["targetDir"] = $this->package["target-dir"];
		else
			$ast["targetDir"] = "";

		return $ast;
	}
}
?>
