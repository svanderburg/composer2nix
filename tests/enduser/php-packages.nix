{composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false}:

let
  packages = {
    "myclabs/deep-copy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "myclabs-deep-copy-8680aa248f8e07bc8fb43f56f0f5fc77a0c96aae";
        src = fetchurl {
          url = "https://api.github.com/repos/myclabs/DeepCopy/zipball/8680aa248f8e07bc8fb43f56f0f5fc77a0c96aae";
          sha256 = "1033kq4aip379m7vn8115lrfzzzy5mqjdk0z60c5ihca1pzmrgan";
        };
      };
    };
    "nikic/php-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nikic-php-parser-9e33da9553fe7786f0962b35f4e4ecf01be89def";
        src = fetchurl {
          url = "https://api.github.com/repos/nikic/PHP-Parser/zipball/9e33da9553fe7786f0962b35f4e4ecf01be89def";
          sha256 = "0il8hi2aahypy235wrpqyzs8x4q06vf6c60g8q95y43a8q62c1y3";
        };
      };
    };
    "phar-io/manifest" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-manifest-54750ef60c58e43759730615a392c31c80e23176";
        src = fetchurl {
          url = "https://api.github.com/repos/phar-io/manifest/zipball/54750ef60c58e43759730615a392c31c80e23176";
          sha256 = "0xas0i7jd6w4hknfmbwdswpzngblm3d884hy3rba0q2cs928ndml";
        };
      };
    };
    "phar-io/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-version-4f7fd7836c6f332bb2933569e566a0d6c4cbed74";
        src = fetchurl {
          url = "https://api.github.com/repos/phar-io/version/zipball/4f7fd7836c6f332bb2933569e566a0d6c4cbed74";
          sha256 = "0mdbzh1y0m2vvpf54vw7ckcbcf1yfhivwxgc9j9rbb7yifmlyvsg";
        };
      };
    };
    "phpunit/php-code-coverage" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-code-coverage-96af7aaa1e15561a67b2fa5b98906b063ebec9c2";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-code-coverage/zipball/96af7aaa1e15561a67b2fa5b98906b063ebec9c2";
          sha256 = "1bf51m6ga1amsvp63wa2jwjv4xv38096839v5jk7f9iy7qb6wxcm";
        };
      };
    };
    "phpunit/php-file-iterator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-file-iterator-9bb4e6c58b62c1e043be995c66abec7c97307aae";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-file-iterator/zipball/9bb4e6c58b62c1e043be995c66abec7c97307aae";
          sha256 = "1k89bdrbhciqcv2zz5sj6f904jcjrdm5m2f7vck4ckgbnbh7i9an";
        };
      };
    };
    "phpunit/php-invoker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-invoker-42e5c5cae0c65df12d1b1a3ab52bf3f50f244d88";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-invoker/zipball/42e5c5cae0c65df12d1b1a3ab52bf3f50f244d88";
          sha256 = "156599hrr0a0hlkyikbs5z3gssw1cyn1v8yppm2f7chrn2gl1jai";
        };
      };
    };
    "phpunit/php-text-template" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-text-template-a47af19f93f76aa3368303d752aa5272ca3299f4";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-text-template/zipball/a47af19f93f76aa3368303d752aa5272ca3299f4";
          sha256 = "1kacjd1zkz6i98vj52lvavgj97b71fv8kz6hd65cwxx896kfs3cw";
        };
      };
    };
    "phpunit/php-timer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-timer-a0e12065831f6ab0d83120dc61513eb8d9a966f6";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-timer/zipball/a0e12065831f6ab0d83120dc61513eb8d9a966f6";
          sha256 = "1drj1mzamljq8h84mgvxg2ab81j6ijmxljsrjk2pyswnxbz94q58";
        };
      };
    };
    "phpunit/phpunit" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-phpunit-1b482b9a77774705a5c4a47ab7d60819d2589e90";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/phpunit/zipball/1b482b9a77774705a5c4a47ab7d60819d2589e90";
          sha256 = "0nl4qhsvxn4mgvkf6ynwd7j8r61xcwylx2fk8kqjmddhafphs6vl";
        };
      };
    };
    "sebastian/cli-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-cli-parser-eeb759ad3146b7096fb59c3195d39e071cd409e3";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/cli-parser/zipball/eeb759ad3146b7096fb59c3195d39e071cd409e3";
          sha256 = "0znwsz89g43f2pi3qs3fcbgbazcm0rbqcww0p3xrnzg5aig2xji8";
        };
      };
    };
    "sebastian/comparator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-comparator-3b070e608146cba00fd6fd1f0ffba89e5a8897fb";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/comparator/zipball/3b070e608146cba00fd6fd1f0ffba89e5a8897fb";
          sha256 = "1xvvd5ccysh4w4lka05kiahrga4k1d0gpc0jz9ih41yyvmm1v8xb";
        };
      };
    };
    "sebastian/complexity" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-complexity-c5651c795c98093480df79350cb050813fc7a2f3";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/complexity/zipball/c5651c795c98093480df79350cb050813fc7a2f3";
          sha256 = "0affzjx3m2z4dhmpnvflj1l61ykq51f0k5kh2m8sygp143rdhvhn";
        };
      };
    };
    "sebastian/diff" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-diff-a2df6626c1baf31d5a88674882a3072f151b5a26";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/diff/zipball/a2df6626c1baf31d5a88674882a3072f151b5a26";
          sha256 = "03ixrw8rkp878rbvnxhr5gxz4d65ijs6hhm2pzpm625nqvgr9j8p";
        };
      };
    };
    "sebastian/environment" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-environment-6c9e487c9eb706a8d258102a1c0b0a3e53e86c2e";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/environment/zipball/6c9e487c9eb706a8d258102a1c0b0a3e53e86c2e";
          sha256 = "12hr5gxpqk5nwm2flyd12pfb0lm2qb0vyvqbgsxywf16m8961p3g";
        };
      };
    };
    "sebastian/exporter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-exporter-24a3b69bba4a12ab615fca9d34680c5598d9ab7a";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/exporter/zipball/24a3b69bba4a12ab615fca9d34680c5598d9ab7a";
          sha256 = "0vhkkd38y8r6dcmhnwjrrm88cjbak3xlmmsw0g8gsph4plsp61yp";
        };
      };
    };
    "sebastian/file-filter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-file-filter-33a26f394330f6faa7684bb9cc73afb7727aae93";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/file-filter/zipball/33a26f394330f6faa7684bb9cc73afb7727aae93";
          sha256 = "0vvw64580v9mlfd181g6d654wghvkk9ydi1b8ib21mf8ywgyvzd3";
        };
      };
    };
    "sebastian/git-state" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-git-state-792a952e0eba55b6960a48aeceb9f371aad1f76b";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/git-state/zipball/792a952e0eba55b6960a48aeceb9f371aad1f76b";
          sha256 = "1dh7smjk2y11m0rlc565l4c2r1qy0mnw4smjwl4cfzjkqi9v4mr3";
        };
      };
    };
    "sebastian/global-state" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-global-state-ba68ba79da690cf7eddefd3ce5b78b20b9ba9945";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/global-state/zipball/ba68ba79da690cf7eddefd3ce5b78b20b9ba9945";
          sha256 = "1v7v3smnb565mri4lwdzcfkk1vi7hkxrj3yf8sfmc71npwjzphs0";
        };
      };
    };
    "sebastian/lines-of-code" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-lines-of-code-d1b6f8fce682505dbd048977f1abedf1b8ad3ff8";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/lines-of-code/zipball/d1b6f8fce682505dbd048977f1abedf1b8ad3ff8";
          sha256 = "0jc2v3dai794q9a3snrrk65hrm86qnfvdn2cyxhin0ks90dr0ig8";
        };
      };
    };
    "sebastian/object-enumerator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-object-enumerator-511064ecde82bd747e2ba2fab3dda8d977b59576";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/object-enumerator/zipball/511064ecde82bd747e2ba2fab3dda8d977b59576";
          sha256 = "0fpvm8m1dwfzzgc9dl3fzrg50m7ix2am94v74snlrjjpfxplckc9";
        };
      };
    };
    "sebastian/object-reflector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-object-reflector-f71bbcdc4f95456b4622810bec64eb06372e25b2";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/object-reflector/zipball/f71bbcdc4f95456b4622810bec64eb06372e25b2";
          sha256 = "06lcxymp5lxlkalxzqvfxgab36zm5ig30s4wm9cxlyp3p16x7ld4";
        };
      };
    };
    "sebastian/recursion-context" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-recursion-context-32dba72f2b4642d6a93db22d6c0a9280ff2e3ca0";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/recursion-context/zipball/32dba72f2b4642d6a93db22d6c0a9280ff2e3ca0";
          sha256 = "0g9w49w0fajn0ccld99sq3nhxc6mssmiiymrznlbxpf6mx3a2k73";
        };
      };
    };
    "sebastian/type" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-type-bd1df467864cb95140414059a535b2d906173fcf";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/type/zipball/bd1df467864cb95140414059a535b2d906173fcf";
          sha256 = "0vzi84ja0l8jh155bv1jm6wa0fd3lx7j3pvyxgqjdp3lx7330pv3";
        };
      };
    };
    "sebastian/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-version-ad37a5552c8e2b88572249fdc19b6da7792e021b";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/version/zipball/ad37a5552c8e2b88572249fdc19b6da7792e021b";
          sha256 = "0dcqca5znng956763iwdwzplphy2ngr86di521g1dfsagl0nygfa";
        };
      };
    };
    "staabm/side-effects-detector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "staabm-side-effects-detector-d8334211a140ce329c13726d4a715adbddd0a163";
        src = fetchurl {
          url = "https://api.github.com/repos/staabm/side-effects-detector/zipball/d8334211a140ce329c13726d4a715adbddd0a163";
          sha256 = "04kvzfgwpgncn3wm316l24a02lzds05z3nf83wrm9kk2vg52rn4h";
        };
      };
    };
    "theseer/tokenizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "theseer-tokenizer-7989e43bf381af0eac72e4f0ca5bcbfa81658be4";
        src = fetchurl {
          url = "https://api.github.com/repos/theseer/tokenizer/zipball/7989e43bf381af0eac72e4f0ca5bcbfa81658be4";
          sha256 = "1d0rsx96jylbjvnhi0ylwrq5pxcmlmqir8n63cajy2zrvhzngkcp";
        };
      };
    };
  };
  devPackages = {};
in
composerEnv.buildPackage {
  inherit packages devPackages noDev;
  name = "phpunit-phpunit";
  src = composerEnv.filterSrc ./.;
  executable = true;
  symlinkDependencies = false;
  meta = {};
}
