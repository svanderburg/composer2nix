composer2nix
============
`composer2nix` is a tool that can be used to generate [Nix](http://nixos.org/nix)
expressions for PHP [composer](https://getcomposer.org) packages.

Nix integration makes it possible to use the Nix package manager (as opposed to
composer) to deploy PHP packages including all their required dependencies.

In addition, generated Nix composer packages
support convenient integration of PHP applications with NixOS services, such as
NixOS' Apache HTTP service.

Prerequisites
=============
This package requires the following packages to be installed:

* [Nix package manager](http://nixos.org/nix)
* The Nix prefetch scripts. They can be installed from Nix packages by running:

```bash
$ nix-env -f '<nixpkgs>' -iA nix-prefetch-scripts
```

Consult the Nix documentation for detailed installation instructions.

Usage
=====
You need a project providing a `composer.json` and (if applicable) a
`composer.lock` configuration file.

Running the following command generates Nix expressions from the composer
configuration files:

    $ composer2nix

The above command produces three expressions: `php-packages.nix` containing the
dependencies, `composer-env.nix` the build infrastructure and `default.nix` that
can be used to compose the package from its dependencies.

Running the following command-line instruction deploys the package with Nix
including its dependencies:

    $ nix-build

Deploying a web application project
-----------------------------------
We can use `composer2nix` to automate the deployment of a web application project
as part of a NixOS configuration.

For example, we can create the following trivial PHP web application
(`index.php`) that uses the [dompdf](http://dompdf.github.io/) library to
generate a PDF file from an HTML page:

```php
<?php
require 'vendor/autoload.php';

use Dompdf\Dompdf;

$dompdf = new Dompdf();
$dompdf->loadHtml('hello world');

$dompdf->setPaper('A4', 'landscape');
$dompdf->render();

$dompdf->stream();
?>
```

We can write the following `composer.json` configuration file to configure the
`dompdf` dependency:

```json
{
    "name": "exampleapp/exampleapp",

    "require": {
        "dompdf/dompdf": "^0.8.0"
    }
}
```

With the following commmand we can let `composer` deploy the dependencies (and
pinpoint the used versions in a `composer.lock` file):

    $ composer install

Instead, we can also use `composer2nix`:

    $ composer2nix

The above command generates Nix expressions that can be used to deploy the web
application and its dependencies.

We can use Nix to build a bundle of our web application including its
dependencies:

```bash
$ nix-build
$ ls result/
index.php  vendor/
```

(As may be observed, the `vendor/` folder contains all dependency artifacts).

We can attach the generated package to a document root of the Apache server in
a NixOS configuration:

```nix
{pkgs, config, ...}:

let
  myexampleapp = import /home/sander/myexampleapp {
    inherit pkgs;
  };
in
{
  services.httpd = {
    enable = true;
    adminAddr = "admin@localhost";
    extraModules = [
      { name = "php7"; path = "${pkgs.php}/modules/libphp7.so"; }
    ];
    documentRoot = myexampleapp;
  };

  ...
}
```

We can deploy the above NixOS configuration as follows:

    $ nixos-rebuild switch

If the above command succeeds, we have a running system with the Apache
webserver serving our web application.

Deploying a command-line utility project
----------------------------------------
In addition to web applications, we can also deploy command-line utility
projects implemented in PHP.

For example, for the `composer2nix` project, we can generate a CLI-specific
expression by adding the `--executable` parameter:

    $ composer2nix --executable

We can install the `composer2nix` executable in our Nix profile by running:

    $ nix-env -f default.nix -i

Deploying third-party end user packages
---------------------------------------
Aside from deploying development projects, we may also want to deploy third
party end-user packages, typically command-line tools.

We can use `composer2nix` to automatically generate expressions from a third
party package that comes from Packagist, such as `phpunit`:

    $ composer2nix -p phpunit/phpunit

After generating the expressions, we can deploy `phpunit` in our Nix profile,
by running:

    $ nix-env -f default.nix -iA phpunit-phpunit

And after installing the package with Nix, we should be able to run:

    $ phpunit --version

By default, `composer2nix` attempts to download the latest version of a package.
We can also add a parameter that specifies the version we want to use:

    $ composer2nix -p phpunit/phpunit --package-version 6.2.0

The above command-line instruction deploys `phpunit` version `6.2.0`.

The `--package-version` parameter supports any version specifier supported by
`composer`, including version ranges.

Advanced features
=================
`composer2nix` supports a number of less commonly used advanced features.

Disabling the deployment of development dependencies
----------------------------------------------------
By default `composer` (and as a result, also `composer2nix`) will include all
development dependencies. However, in production environments you typically want
to exclude them to reduce the amount of disk space consumed and the deployment
times.

By overriding the expression (e.g. creating a file named: `override.nix`) and
appending the `noDev = true;` parameter, we can disable development
dependencies:

```nix
{pkgs ? import <nixpkgs> {
  inherit system;
}, system ? builtins.currentSystem}:

let
  phpPackage = import ./default.nix {
    inherit pkgs system;
    noDev = true; # Disable development dependencies
  };
in
phpPackage
```

We can deploy the above package with the following command-line instruction:

    $ nix-build override.nix

Running post installation instructions
--------------------------------------
For some packages, we may want to run additional command line instructions after
the packaging process completes, such as running unit tests.

By creating an override Nix expression that invokes the generated build function
and providing a `postInstall` hook, we can specify additional command-line
instructions to run:

```nix
{pkgs ? import <nixpkgs> {
  inherit system;
}, system ? builtins.currentSystem}:

let
  phpPackage = import ./default.nix {
    inherit pkgs system;
  };
in
phpPackage.override {
  postInstall = ''
    php vendor/bin/phpunit tests
  '';
}
```

In the above code fragment, we invoke `phpunit` to run all our unit tests.

Adding unspecified dependencies
-------------------------------
Some packages may also require non-PHP package dependencies. Since these
dependencies are not specified in a composer configuration file, their
deployments may typically fail in a Nix builder environment, because they cannot
be implicitly found.

By overriding the generated package expression, we can supply these missing
dependencies ourselves:

```nix
{pkgs ? import <nixpkgs> {
  inherit system;
}, system ? builtins.currentSystem}:

let
  phpPackage = import ./default.nix {
    inherit pkgs system;
  };
in
phpPackage.override (oldAttrs: {
  buildInputs = oldAttrs.buildInputs ++ [ pkgs.graphviz ];
  postInstall = ''
    php vendor/bin/phpdocumentor -d src -t out
  '';
})
```

The above expression overrides the generated PHP package by supplying `graphviz`
as an extra dependency. This package is particularly useful when it is desired
to use `phpdocumentor` -- it uses `graphviz` to generate class diagrams. If this
tool is not present in the build environment, class diagrams will not be
generated.

Symlinking dependencies
-----------------------
By default, `composer2nix` makes copies of all packages that end up in the
`vendor/` folder. This is the default option, because some packages load the
`autoload.php` relative from its resolved location, such as `phpunit` and may
not work properly if a dependency is a symlink.

It is also possible to symlink all dependencies as opposed to copying them which
makes deployments faster and more space efficient:

    $ composer2nix --symlink-dependencies

Limitations
===========
This tool is still in the prototype stage. As a result, it may have some issues.
Furthermore, support for fossil repositories is currently completely absent.

License
=======
The contents of this package is available under the [MIT license](http://opensource.org/licenses/MIT)
