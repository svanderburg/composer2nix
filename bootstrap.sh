#!/bin/sh -e

# This script bootstraps composer2nix with composer2nix and regenerates the Nix
# expressions for the testcases.
# To do this you need to vanilla composer package manager installed on your
# system. You can install composer from Nixpkgs as follows:
#
# nix-env -f '<nixpkgs>' -iA php phpPackages.composer nix-prefetch-scripts

composer install
php bin/composer2nix --composer-env src/Composer2Nix/composer-env.nix --no-copy-composer-env --executable
cd tests/dependencies
composer install
php ../../bin/composer2nix --composer-env ../../src/Composer2Nix/composer-env.nix --no-copy-composer-env --name dependencies
rm -Rf vendor
cd ../enduser
php ../../bin/composer2nix --composer-env ../../src/Composer2Nix/composer-env.nix --no-copy-composer-env -p phpunit/phpunit
cd ../..
rm -Rf vendor
