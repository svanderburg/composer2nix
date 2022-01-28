{pkgs ? import <nixpkgs> {
    inherit system;
  }, system ? builtins.currentSystem, noDev ? false, php ? pkgs.php, phpPackages ? pkgs.phpPackages}:

let
  composerEnv = import ../../src/Composer2Nix/composer-env.nix {
    inherit (pkgs) stdenv lib writeTextFile fetchurl unzip;
    inherit php phpPackages;
  };
in
import ./php-packages.nix {
  inherit composerEnv noDev;
  inherit (pkgs) fetchurl fetchgit fetchhg fetchsvn;
}
