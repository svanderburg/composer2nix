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

An example use case scenario
============================
We can use `composer2nix` to automate the deployment of a web application as
part of a NixOS configuration.

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

$ nix-build
$ ls result/
index.php  vendor/

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

Limitations
===========
Currently, the state of this tool is that it is just a proof on concept
implementation. As a result, it is lacking many features and probably buggy.
Most importantly, only the `path`, `zip`, `git`, and `hg` dependencies are
supported.

License
=======
The contents of this package is available under the [MIT license](http://opensource.org/licenses/MIT)
