{pkgs ? import <nixpkgs> {
    inherit system;
  }, system ? builtins.currentSystem, noDev ? false}:

let
  composerEnv = import ./src/Composer2Nix/composer-env.nix {
    inherit (pkgs) stdenv writeTextFile fetchurl php unzip;
    inherit (pkgs.phpPackages) composer;
  };
in
import ./php-packages.nix {
  inherit composerEnv noDev;
  inherit (pkgs) fetchurl fetchgit fetchhg fetchsvn;
}
