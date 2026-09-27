{composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false}:

let
  packages = {
    "svanderburg/pndp" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "svanderburg-pndp-098f3fc2906b54f50c6b18aa045e5e414bbe3b92";
        src = fetchurl {
          url = "https://api.github.com/repos/svanderburg/pndp/zipball/098f3fc2906b54f50c6b18aa045e5e414bbe3b92";
          sha256 = "1kqvwsmbq5rxbbnj2shkzyjs20xz09yw1ffmchmz87d4yrq78f6k";
        };
      };
    };
  };
  devPackages = {};
in
composerEnv.buildPackage {
  inherit packages devPackages noDev;
  name = "svanderburg-composer2nix";
  src = composerEnv.filterSrc ./.;
  executable = true;
  symlinkDependencies = false;
  meta = {
    license = "MIT";
  };
}
