<?php
namespace Composer2Nix\Sources;

use PNDP\NixGenerator;
use PNDP\AST\NixExpression;
use PNDP\AST\NixFile;
use PNDP\AST\NixFunInvocation;
use PNDP\AST\NixURL;

/**
 * Represents a Zip package source.
 */
class ZipSource extends Source
{
    /* Contains a SHA1 reference to the corresponding Git revision */
    public $reference;

    /** Stores the output hash of the download */
    public $hash;

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
     * @see Source::fetch()
     */
    public function fetch()
    {
        if ($this->sourceObj["reference"] == "") {
            $this->reference = "";
        } else {
            $this->reference = "-".$this->sourceObj["reference"];
        }

        if (substr($this->sourceObj["url"], 0, 7) === "http://" ||
            substr($this->sourceObj["url"], 0, 8) === "https://") {
            $this->hash = shell_exec('nix-prefetch-url "'.$this->sourceObj['url'].'"');

            if ($this->hash === false) {
                throw new Exception("Error while invoking nix-prefetch-url");
            }
        } else {
            $this->hash = null;
        }
    }

    /**
     * @see NixASTNode::toNixAST()
     */
    public function toNixAST()
    {
        $ast = parent::toNixAST();

        if ($this->hash === null) {
            $src = new NixFile($this->sourceObj['url']);
        } else {
            $src = new NixFunInvocation(new NixFile("fetchurl"), array(
                "url" => new NixURL($this->sourceObj["url"]),
                "sha256" => substr($this->hash, 0, -1)
            ));
        }

        $ast["src"] = new NixFunInvocation(new NixExpression("composerEnv.buildZipPackage"), array(
            "name" => strtr($this->package["name"], "/", "-").$this->reference,
            "src" => $src
        ));

        return $ast;
    }
}
