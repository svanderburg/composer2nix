<?php
namespace Composer2Nix\Dependencies;
use PNDP\NixGenerator;
use PNDP\AST\NixExpression;
use PNDP\AST\NixFile;
use PNDP\AST\NixFunInvocation;
use PNDP\AST\NixURL;

/**
 * Represents a Zip package dependency.
 */
class ZipDependency extends Dependency
{
	/**
	 * Constructs a new Zip dependency instance.
	 *
	 * @param array $package An array of package configuration properties
	 * @param array $sourceObj An array of download properties
	 */
	public function __construct(array $package, array $sourceObj)
	{
		parent::__construct($package, $sourceObj);
	}

	/**
	 * @see NixAST::toNixAST
	 */
	public function toNixAST()
	{
		$dependency = parent::toNixAST();

		if($this->sourceObj["reference"] == "")
			$reference = "";
		else
			$reference = "-".$this->sourceObj["reference"];

		if(substr($this->sourceObj["url"], 0, 7) === "http://" || substr($this->sourceObj["url"], 0, 8) === "https://")
		{
			$hash = shell_exec('nix-prefetch-url "'.$this->sourceObj['url'].'"');

			if($hash === null)
				throw new Exception("Error while invoking nix-prefetch-url");
			else
			{
				$src = new NixFunInvocation(new NixFile("fetchurl"), array(
					"url" => new NixURL($this->sourceObj["url"]),
					"sha256" => substr($hash, 0, -1)
				));
			}
		}
		else
			$src = new NixFile($this->sourceObj['url']);

		$dependency["src"] = new NixFunInvocation(new NixExpression("composerEnv.buildZipPackage"), array(
			"name" => strtr($this->package["name"], "/", "-").$reference,
			"src" => $src
		));

		return $dependency;
	}
}
?>
