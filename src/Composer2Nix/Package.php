<?php
namespace Composer2Nix;

use PNDP\AST\NixAttrSet;
use PNDP\AST\NixASTNode;
use PNDP\AST\NixExpression;
use PNDP\AST\NixFile;
use PNDP\AST\NixFunInvocation;
use PNDP\AST\NixInherit;
use PNDP\AST\NixURL;

/**
 * A representation of an composer package that is obtained from an external
 * source and that may bundle dependencies.
 */
class Package extends NixASTNode
{
    /** The composer package configuration */
    public $composerConfig;

    /** Specifies whether the package to be deployed is an executable project */
    public $executable;

    /** Specifies whether the dependencies should be symlinked */
    public $symlinkDependencies;

    /**
     * Constructs a new package instance.
     *
     * @param ComposerConfig $composerConfig The composer package configuration
     * @param bool $executable Specifies whether the package to be deployed is an executable project
     * @param bool $symlinkDependencies Specifies whether the dependencies should be symlinked
     */
    public function __construct(ComposerConfig $composerConfig, $executable, $symlinkDependencies)
    {
        $this->composerConfig = $composerConfig;
        $this->executable = $executable;
        $this->symlinkDependencies = $symlinkDependencies;
    }

    private function generatePackageMetaDataAST()
    {
        $meta = array();

        if (array_key_exists("homepage", $this->composerConfig->values)) {
            $meta["homepage"] = new NixURL($this->composerConfig->values["homepage"]);
        }

        if (array_key_exists("license", $this->composerConfig->values)) {
            if (is_string($this->composerConfig->values["license"])) { // If the license is a string, just take it
                $meta["license"] = $this->composerConfig->values["license"];
            } elseif (is_array($this->composerConfig->values["license"])) {
                // If the license is an array, compose a comma , separated string from it
                if (count($this->composerConfig->values["license"]) > 0) {
                    $meta["license"] = $this->composerConfig->values["license"][0];
                }

                for ($i = 1; $i < count($this->composerConfig->values["license"]); $i++) {
                    $meta["license"] .= ", ".$this->composerConfig->values["license"][$i];
                }
            }
        }

        return new NixAttrSet($meta);
    }

    /**
     * @see NixASTNode::toNixAST()
     */
    public function toNixAST()
    {
        return new NixFunInvocation(new NixExpression("composerEnv.buildPackage"), array(
            "name" => $this->composerConfig->packageName,
            "src" => new NixFile("./."),
            "executable" => $this->executable,
            "packages" => new NixInherit(),
            "devPackages" => new NixInherit(),
            "noDev" => new NixInherit(),
            "symlinkDependencies" => $this->symlinkDependencies,
            "meta" => $this->generatePackageMetaDataAST()
        ));
    }
}
