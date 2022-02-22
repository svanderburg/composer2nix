{ nixpkgs ? <nixpkgs>
, systems ? [ "x86_64-linux" ]
}:

let
  pkgs = import nixpkgs {};
in
rec {
  package = pkgs.lib.genAttrs systems (system: (import ./default.nix {
    inherit pkgs system;
    noDev = true;
  }).override {
    executable = true;
  });

  dev = pkgs.lib.genAttrs systems (system: (import ./default.nix {
    inherit pkgs system;
  }).override (oldAttrs: {
    buildInputs = [ pkgs.doxygen ];
    executable = true;
    postInstall = ''
      doxygen
      mkdir -p $out/nix-support
      echo "doc api $out/share/php/composer-svanderburg-composer2nix/doc/html" >> $out/nix-support/hydra-build-products
    '';
  }));

  tests = {
    dependencies = pkgs.lib.genAttrs systems (system:
      import ./tests/dependencies {
        inherit pkgs;
      }
    );

    enduser = pkgs.lib.genAttrs systems (system:
      import ./tests/enduser {
        inherit pkgs;
      }
    );
  };

  release = pkgs.releaseTools.aggregate {
    name = "composer2nix";
    constituents = map (system: builtins.getAttr system package) systems
    ++ map (system: builtins.getAttr system dev) systems
    ++ map (system: builtins.getAttr system tests.dependencies) systems
    ++ map (system: builtins.getAttr system tests.enduser) systems;
  };
}
