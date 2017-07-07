# This file originates from composer2nix

{ stdenv, writeTextFile, fetchurl, php, unzip }:

rec {
  composer = stdenv.mkDerivation {
    name = "composer-1.4.2";
    src = fetchurl {
      url = https://github.com/composer/composer/releases/download/1.4.2/composer.phar;
      sha256 = "1x467ngxb976ba2r9kqba7jpvm95a0db8nwaa2z14zs7xv1la6bb";
    };
    buildInputs = [ php ];
    
    # We must wrap the composer.phar because of the impure shebang.
    # We cannot use patchShebangs because the executable verifies its own integrity and will detect that somebody has tampered with it.
    
    buildCommand = ''
      # Copy phar file
      mkdir -p $out/share/php
      cp $src $out/share/php/composer.phar
      chmod 755 $out/share/php/composer.phar

      # Create wrapper executable
      mkdir -p $out/bin
      cat > $out/bin/composer <<EOF
      #! ${stdenv.shell} -e
      exec ${php}/bin/php $out/share/php/composer.phar "\$@"
      EOF
      chmod +x $out/bin/composer
    '';
    meta = {
      description = "Dependency Manager for PHP";
      #license = stdenv.licenses.mit;
      maintainers = [ stdenv.lib.maintainers.sander ];
      platforms = stdenv.lib.platforms.unix;
    };
  };

  buildZipPackage = { name, url, sha256 }:
    stdenv.mkDerivation {
      inherit name;
      src = fetchurl {
        inherit url sha256;
      };
      buildInputs = [ unzip ];
      buildCommand = ''
        unzip $src
        baseDir=$(find . -type d -mindepth 1 -maxdepth 1)
        cd $baseDir
        mkdir -p $out
        mv * $out
      '';
    };

  buildPackage = { name, src, dependencies ? [], removeComposerArtifacts ? false }:
    let
      reconstructInstalled = writeTextFile {
        name = "reconstructinstalled.php";
        executable = true;
        text = ''
          #! ${php}/bin/php
          <?php
          $composerLockStr = file_get_contents($argv[1]);

          if($composerLockStr === false)
          {
              print("Cannot open composer.lock contents");
              exit(1);
          }
          else
          {
              $config = json_decode($composerLockStr);
              $packagesStr = json_encode($config->packages, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);
              print($packagesStr);
          }
          ?>
        '';
      };
    in
    stdenv.mkDerivation {
      inherit name src;
      buildInputs = [ php composer ];
      buildCommand = ''
        cp -av $src $out
        chmod -R u+w $out
        cd $out

        # Remove unwanted files
        rm -f *.nix

        export HOME=$TMPDIR

        # Reconstruct the installed.json file from the lock file
        mkdir -p vendor/composer
        ${reconstructInstalled} composer.lock > vendor/composer/installed.json

        # Symlink the provided dependencies
        cd vendor
        ${stdenv.lib.concatMapStrings (dependencyName:
          let
            dependency = dependencies.${dependencyName};
          in
          ''
            vendorDir="$(dirname ${dependencyName})"
            mkdir -p "$vendorDir"
            ln -s "${dependency}" "$vendorDir/$(basename "${dependencyName}")"
          '') (builtins.attrNames dependencies)}
        cd ..

        # Reconstruct autoload scripts
        # We use the optimize feature because Nix packages cannot change after they have been built
        # Using the dynamic loader for a Nix package is useless since there is nothing to dynamically reload.
        composer dump-autoload --optimize

        # Run the install step as a validation to confirm that everything works out as expected
        composer install --optimize-autoloader

        ${stdenv.lib.optionalString (removeComposerArtifacts) ''
          # Remove composer stuff
          rm composer.json composer.lock
        ''}
    '';
  };
}
