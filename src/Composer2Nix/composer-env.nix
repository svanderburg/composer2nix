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

  buildZipPackage = { name, src }:
    stdenv.mkDerivation {
      inherit name src;
      buildInputs = [ unzip ];
      buildCommand = ''
        unzip $src
        baseDir=$(find . -type d -mindepth 1 -maxdepth 1)
        cd $baseDir
        mkdir -p $out
        mv * $out
      '';
    };

  buildPackage = { name, src, dependencies ? [], executable ? false, removeComposerArtifacts ? false }:
    let
      reconstructInstalled = writeTextFile {
        name = "reconstructinstalled.php";
        executable = true;
        text = ''
          #! ${php}/bin/php
          <?php
          if(file_exists($argv[1]))
          {
              $composerLockStr = file_get_contents($argv[1]);

              if($composerLockStr === false)
              {
                  fwrite(STDERR, "Cannot open composer.lock contents\n");
                  exit(1);
              }
              else
              {
                  $config = json_decode($composerLockStr);
                  $packagesStr = json_encode($config->packages, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);
                  print($packagesStr);
              }
          }
          else
              print("[]");
          ?>
        '';
      };

      constructBin = writeTextFile {
        name = "constructbin.php";
        executable = true;
        text = ''
          #! ${php}/bin/php
          <?php
          $composerJSONStr = file_get_contents($argv[1]);

          if($composerJSONStr === false)
          {
              fwrite(STDERR, "Cannot open composer.json contents\n");
              exit(1);
          }
          else
          {
              $config = json_decode($composerJSONStr, true);

              if(array_key_exists("bin-dir", $config))
                  $binDir = $config["bin-dir"];
              else
                  $binDir = "bin";

              if(array_key_exists("bin", $config))
              {
                  mkdir("vendor/".$binDir);
                  
                  foreach($config["bin"] as $bin)
                      symlink("../../".$bin, "vendor/".$binDir."/".basename($bin));
              }
          }
          ?>
        '';
      };
    in
    stdenv.mkDerivation {
      inherit name src;
      buildInputs = [ php composer ];
      buildCommand = ''
        ${if executable then ''
          mkdir -p $out/share/php
          cp -av $src $out/share/php/$name
          chmod -R u+w $out/share/php/$name
          cd $out/share/php/$name
        '' else ''
          cp -av $src $out
          chmod -R u+w $out
          cd $out
        ''}

        # Remove unwanted files
        rm -f *.nix

        export HOME=$TMPDIR

        # Remove the provided vendor folder if it exists
        rm -Rf vendor

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
            ${if dependency.targetDir == "" then ''
              vendorDir="$(dirname ${dependencyName})"
              mkdir -p "$vendorDir"
              ln -s "${dependency.src}" "$vendorDir/$(basename "${dependencyName}")"
            '' else ''
              namespaceDir="${dependencyName}/$(dirname "${dependency.targetDir}")"
              mkdir -p "$namespaceDir"
              ln -s "${dependency.src}" "$namespaceDir/$(basename "${dependency.targetDir}")"
            ''}
          '') (builtins.attrNames dependencies)}
        cd ..

        # Reconstruct autoload scripts
        # We use the optimize feature because Nix packages cannot change after they have been built
        # Using the dynamic loader for a Nix package is useless since there is nothing to dynamically reload.
        composer dump-autoload --optimize

        # Run the install step as a validation to confirm that everything works out as expected
        composer install --optimize-autoloader

        ${stdenv.lib.optionalString executable ''
          ${constructBin} composer.json
          ln -s $(pwd)/vendor/bin $out/bin
          patchShebangs $out/bin
        ''}

        ${stdenv.lib.optionalString (removeComposerArtifacts) ''
          # Remove composer stuff
          rm -f composer.json composer.lock
        ''}
    '';
  };
}
