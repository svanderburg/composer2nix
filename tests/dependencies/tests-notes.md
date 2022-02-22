Notes about the testcases
=========================
composer supports all kinds of dependency specifiers and can refer to packages
coming from all kinds of sources.

For validation purposes, I could implement test cases from scratch, but this is
a lot of work. Instead, I took existing packages as test cases.

The test scenarios are captured in the `composer.json` file (that is translated
by `composer2nix` into a set of Nix expressions).

This code snippet explains the purpose of each test package:

```javascript
{
  "require": {
    // A common package and exact dependency specifier
    "seld/jsonlint": "1.8.3",
    // A common package and version range dependency specifier
    "phpunit/phpunit": "9.5.x",
    // A reference to a Git repository using the master branch
    "svanderburg/php-sblayout": "dev-master",
    // A reference to a generic VCS repository using the a Git master branch
    "svanderburg/php-sbbiblio": "dev-master"
  }
}
```
