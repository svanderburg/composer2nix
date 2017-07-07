composer2nix
============
`composer2nix` is a tool that can be used to generate [Nix](http://nixos.org)
expressions for PHP [composer](https://getcomposer.org) packages.

Nix integration makes it possible to use the Nix package manager (as opposed to
composer) to deploy PHP packages including all their required dependencies.

In addition, generated Nix composer packages
support convenient integration of PHP applications with NixOS services, such as
NixOS' Apache HTTP service.

Usage
=====
You need a project providing both a `composer.json` and a `composer.lock`
configuration file.

Running the following command generates Nix expressions from the composer
configuration files:

    $ composer2nix

The above command produces three expressions: `php-packages.nix` containing the
dependencies, `composer-env.nix` the build infrastructure and `default.nix` that
can be used to compose the package from its dependencies.

Running the following command-line instruction deploys the package with Nix
including its dependencies:

    $ nix-build

Limitations
===========
Currently, the state of this tool is that it is just a proof on concept
implementation. As a result, it is lacking many features and probably buggy.
Most importantly, only the `zip` and `git` dependencies are supported.

License
=======
The contents of this package is available under the [MIT license](http://opensource.org/licenses/MIT)
