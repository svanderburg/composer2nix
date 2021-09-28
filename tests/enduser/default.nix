{pkgs ? import <nixpkgs> {
    inherit system;
  }, system ? builtins.currentSystem, noDev ? false, packageOverrides ? {}}:

let
  composerEnv = import ../../src/Composer2Nix/composer-env.nix {
    inherit (pkgs) stdenv lib writeTextFile fetchurl php unzip phpPackages;
  };
in
import ./php-packages.nix {
  inherit composerEnv noDev packageOverrides;
  inherit (pkgs) fetchurl fetchgit fetchhg fetchsvn;
}
