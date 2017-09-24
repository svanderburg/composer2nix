#!/bin/sh -e

php ~/composer.phar install
php bin/composer2nix
rm -Rf vendor
