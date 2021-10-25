{
  description = "Generate Nix expressions to build Composer packages";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        composer2nix = import ./default.nix { inherit pkgs; };
        app = flake-utils.lib.mkApp {
          drv = composer2nix;
          exePath = "/bin/composer2nix";
        };
        overlays = final: prev: {
          composer2nix = composer2nix;
        };
      in {
        packages.composer2nix = composer2nix;
        defaultPackage = composer2nix;
        apps.node2nix = app;
        defaultApp = app;
        inherit overlays;
      });
}
