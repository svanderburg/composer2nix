#!/bin/sh -e

php ~/composer.phar install
php bin/composer2nix --composer-env src/Composer2Nix/composer-env.nix --no-copy-composer-env --executable
rm -Rf vendor
