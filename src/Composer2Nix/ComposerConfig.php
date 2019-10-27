<?php
namespace Composer2Nix;

use Exception;

/**
 * A representation of a composer package configuration that is derived from a
 * composer.json and composer.lock file.
 */
class ComposerConfig
{
    /** Name of the package or null to derive it from the config file */
    public $packageName;

    /** An array of packages that should be deployed as dependencies */
    public $packages;

    /** An array of packages that should be deployed as development dependencies */
    public $devPackages;

    /** An array of config values derived from the configuration files */
    public $values;

    /**
     * Constructs a new composer configuration object.
     *
     * @param string $configFile Path to a composer.json configuration file
     * @param string $lockFile Path to a composer.lock configuration file
     * @param string $packageName Name of the package or null to derive it from the config file
     * @param bool $noDev Indicates whether development dependencies should be excluded or not
     */
    public function __construct($configFile, $lockFile, $packageName, $noDev)
    {
        /* Open the composer.json file and decode it */
        $composerJSONStr = file_get_contents($configFile);

        if ($composerJSONStr === false) {
            throw new Exception("Cannot open contents of: ".$configFile);
        }

        $this->values = json_decode($composerJSONStr, true);

        /* If no package name has been provided, attempt to use the name in the composer config file */
        if ($packageName === null) {
            if (array_key_exists("name", $this->values)) {
                $packageName = $this->values["name"];
            } else {
                throw new Exception("Cannot determine a package name! Either add a name\n".
                    "property to the composer.json file or provide a --name parameter!");
            }
        }

        // replace / by - since / is not allowed in Nix package names
        $this->packageName = strtr($packageName, "/", "-");

        /* Open the lock file and decode it */

        if (file_exists($lockFile)) {
            $composerLockStr = file_get_contents($lockFile);

            if ($composerLockStr === false) {
                throw new Exception("Cannot open contents of: ".$lockFile);
            }

            $lockConfig = json_decode($composerLockStr, true);

            if (array_key_exists("packages", $lockConfig)) {
                $this->packages = $lockConfig["packages"];
            } else {
                $this->packages = array();
            }

            if (!$noDev && array_key_exists("packages-dev", $lockConfig)) {
                $this->devPackages = $lockConfig["packages-dev"];
            } else {
                $this->devPackages = array();
            }
        } else {
            $this->packages = array();
            $this->devPackages = array();
        }
    }
}
