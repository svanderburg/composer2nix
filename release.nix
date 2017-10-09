{ nixpkgs ? <nixpkgs>
, systems ? [ "x86_64-linux" ]
}:

let
  pkgs = import nixpkgs {};
in
{
  package = pkgs.lib.genAttrs systems (system: (import ./default.nix {
    inherit pkgs system;
    noDev = true;
  }).override {
    executable = true;
  });

  dev = pkgs.lib.genAttrs systems (system: (import ./default.nix {
    inherit pkgs system;
  }).override (oldAttrs: {
    buildInputs = oldAttrs.buildInputs ++ [ pkgs.graphviz ];
    executable = true;
    postInstall = ''
      vendor/bin/phpdoc
      mkdir -p $out/nix-support
      echo "doc api $out/doc" >> $out/nix-support/hydra-build-products
    '';
  }));
}
