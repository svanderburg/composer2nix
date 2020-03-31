#!/bin/sh -e

# This script bootstraps composer2nix with composer2nix
# To do this you need to vanilla composer package manager installed on your
# system. You can install composer from Nixpkgs as follows:
#
# nix-env -f '<nixpkgs>' -iA php phpPackages.composer

composer install
php bin/composer2nix --composer-env src/Composer2Nix/composer-env.nix --no-copy-composer-env --executable
rm -Rf vendor
