{composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false}:

let
  packages = {
    "svanderburg/pndp" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "svanderburg-pndp-bc795b341d95c24bb577e0d7a4a37fde98b1cce8";
        src = fetchurl {
          url = "https://api.github.com/repos/svanderburg/pndp/zipball/bc795b341d95c24bb577e0d7a4a37fde98b1cce8";
          sha256 = "1y46wsccjwdkvs1c1bklwbp7crsg0axyr7ncdibbny1sr54xb24i";
        };
      };
    };
  };
  devPackages = {};
in
composerEnv.buildPackage {
  inherit packages devPackages noDev;
  name = "svanderburg-composer2nix";
  src = ./.;
  executable = true;
  symlinkDependencies = false;
  meta = {
    license = "MIT";
  };
}
