<?php
namespace Composer2Nix\Dependencies;
use Composer2Nix\NixASTNode;
use Exception;

abstract class Dependency extends NixASTNode
{
	public $package;

	protected $sourceObj;

	protected function __construct(array $package, array $sourceObj)
	{
		$this->package = $package;
		$this->sourceObj = $sourceObj;
	}

	private static function selectSourceObject($preferredInstall, array $package)
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

	public static function constructDependency(array $package, $preferredInstall)
	{
		$sourceObj = Dependency::selectSourceObject($preferredInstall, $package);

		switch($sourceObj["type"])
		{
			case "path":
				return new PathDependency($package, $sourceObj);
			case "zip":
				return new ZipDependency($package, $sourceObj);
			case "git":
				return new GitDependency($package, $sourceObj);
			case "hg":
				return new HgDependency($package, $sourceObj);
			case "svn":
				return new SVNDependency($package, $sourceObj);
			default:
				throw new Exception("Cannot convert dependency of type: ".$sourceObj["type"]);
		}
	}

	public function toNixAST()
	{
		$dependency = array();

		if(array_key_exists("target-dir", $this->package))
			$dependency["targetDir"] = $this->package["target-dir"];
		else
			$dependency["targetDir"] = "";

		return $dependency;
	}
}
?>
