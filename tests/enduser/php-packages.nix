{composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false}:

let
  packages = {
    "doctrine/instantiator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-instantiator-ae466f726242e637cebdd526a7d991b9433bacf1";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/instantiator/zipball/ae466f726242e637cebdd526a7d991b9433bacf1";
          sha256 = "1dzx7ql2qjkk902g02salvz0yarf1a17q514l3y6rqg53i3rmxp7";
        };
      };
    };
    "myclabs/deep-copy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "myclabs-deep-copy-b2c28789e80a97badd14145fda39b545d83ca3ef";
        src = fetchurl {
          url = "https://api.github.com/repos/myclabs/DeepCopy/zipball/b2c28789e80a97badd14145fda39b545d83ca3ef";
          sha256 = "1a7vr0kb54z8cpal0hqlar9dg5jaklhr4pckvwahgdk37kh38p0s";
        };
      };
    };
    "phar-io/manifest" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-manifest-7761fcacf03b4d4f16e7ccb606d4879ca431fcf4";
        src = fetchurl {
          url = "https://api.github.com/repos/phar-io/manifest/zipball/7761fcacf03b4d4f16e7ccb606d4879ca431fcf4";
          sha256 = "1n59a0gnk43ryl54bc37hlsi1spvi8280bq64zddxrpagyjyp15a";
        };
      };
    };
    "phar-io/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-version-45a2ec53a73c70ce41d55cedef9063630abaf1b6";
        src = fetchurl {
          url = "https://api.github.com/repos/phar-io/version/zipball/45a2ec53a73c70ce41d55cedef9063630abaf1b6";
          sha256 = "0syr7v2b3lsdavfa22z55sdkg5awc3jlzpgn0qk0d3vf6x96hvzp";
        };
      };
    };
    "phpdocumentor/reflection-common" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-common-63a995caa1ca9e5590304cd845c15ad6d482a62a";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/ReflectionCommon/zipball/63a995caa1ca9e5590304cd845c15ad6d482a62a";
          sha256 = "1fcyb675bwf9a1gjmxg0v549jjy5n16rfm0c13c5h5clz8ivfjca";
        };
      };
    };
    "phpdocumentor/reflection-docblock" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-docblock-cd72d394ca794d3466a3b2fc09d5a6c1dc86b47e";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/ReflectionDocBlock/zipball/cd72d394ca794d3466a3b2fc09d5a6c1dc86b47e";
          sha256 = "17fnqsf7vic0prp0rnqdhp7mahhwakg4nnhca86x83iwvic66sg2";
        };
      };
    };
    "phpdocumentor/type-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-type-resolver-7462d5f123dfc080dfdf26897032a6513644fc95";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/TypeResolver/zipball/7462d5f123dfc080dfdf26897032a6513644fc95";
          sha256 = "1m8651vn45mn3jxgzaq6bpawrifs2qx1nfpq86ph3wjsph7spr0a";
        };
      };
    };
    "phpspec/prophecy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpspec-prophecy-451c3cd1418cf640de218914901e51b064abb093";
        src = fetchurl {
          url = "https://api.github.com/repos/phpspec/prophecy/zipball/451c3cd1418cf640de218914901e51b064abb093";
          sha256 = "0z6wh1lygafcfw36r9abrg7fgq9r3v1233v38g4wbqy3jf7xfrzb";
        };
      };
    };
    "phpunit/php-code-coverage" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-code-coverage-31e94ccc084025d6abee0585df533eb3a792b96a";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-code-coverage/zipball/31e94ccc084025d6abee0585df533eb3a792b96a";
          sha256 = "1pjxxd3qal8wmq4sjww7j533abk3lvlfrl7lfahimfch6490cxc7";
        };
      };
    };
    "phpunit/php-file-iterator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-file-iterator-354d4a5faa7449a377a18b94a2026ca3415e3d7a";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-file-iterator/zipball/354d4a5faa7449a377a18b94a2026ca3415e3d7a";
          sha256 = "1826gkf2zp42i0739zzprwfhjphfx98a0vzlriq17a8a9y8kdn94";
        };
      };
    };
    "phpunit/php-invoker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-invoker-7579d5a1ba7f3ac11c80004d205877911315ae7a";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-invoker/zipball/7579d5a1ba7f3ac11c80004d205877911315ae7a";
          sha256 = "05x8ln7p8vzq8s4z9zb1h73zmbjysd6fs2hxpp7cbqd9sw2lzwdz";
        };
      };
    };
    "phpunit/php-text-template" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-text-template-526dc996cc0ebdfa428cd2dfccd79b7b53fee346";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-text-template/zipball/526dc996cc0ebdfa428cd2dfccd79b7b53fee346";
          sha256 = "1ynq62shrk2jcpdxd2rq1spg7g8xwvqd6ckl975x4f4wj09q45f2";
        };
      };
    };
    "phpunit/php-timer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-timer-4118013a4d0f97356eae8e7fb2f6c6472575d1df";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-timer/zipball/4118013a4d0f97356eae8e7fb2f6c6472575d1df";
          sha256 = "0wfgyqz45k9qf0j6llzf61haijz57az0w3px54y489aqk4k7f6dd";
        };
      };
    };
    "phpunit/php-token-stream" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-token-stream-b2560a0c33f7710e4d7f8780964193e8e8f8effe";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-token-stream/zipball/b2560a0c33f7710e4d7f8780964193e8e8f8effe";
          sha256 = "190d0h48nwalhwwips1vnv303hy8h3ikjf38zhqzxmid98a0b518";
        };
      };
    };
    "phpunit/phpunit" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-phpunit-c0ecbfb898ab8b24d8a59a23520f7b2a73e27b5b";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/phpunit/zipball/c0ecbfb898ab8b24d8a59a23520f7b2a73e27b5b";
          sha256 = "1ndngpvk8hxvcgrnnsd8sv9r2mbk4172r85ixm5mhcd4spfl9fsm";
        };
      };
    };
    "sebastian/code-unit-reverse-lookup" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-code-unit-reverse-lookup-5b5dbe0044085ac41df47e79d34911a15b96d82e";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/code-unit-reverse-lookup/zipball/5b5dbe0044085ac41df47e79d34911a15b96d82e";
          sha256 = "0smlmirqcq4r6jhh7f59a11pczgk02zlq8z9zwk744q292ly218f";
        };
      };
    };
    "sebastian/comparator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-comparator-85b3435da967696ed618ff745f32be3ff4a2b8e8";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/comparator/zipball/85b3435da967696ed618ff745f32be3ff4a2b8e8";
          sha256 = "0wcvmnsc066kiwmlvjnavwf4s6dh0za8j2c3qkqd4f18gijvab1d";
        };
      };
    };
    "sebastian/diff" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-diff-c0c26c9188b538bfa985ae10c9f05d278f12060d";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/diff/zipball/c0c26c9188b538bfa985ae10c9f05d278f12060d";
          sha256 = "16hn6xd3d00mc3cpv3idaazp843fh5r4yj6aym8wsq5r0v75imhd";
        };
      };
    };
    "sebastian/environment" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-environment-c39c1db0a5cffc98173f3de5a17d489d1043fd7b";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/environment/zipball/c39c1db0a5cffc98173f3de5a17d489d1043fd7b";
          sha256 = "0d3p163bbf071w0cn7cikz4n9gnybzhj0qq3d6w01bb4fypy196q";
        };
      };
    };
    "sebastian/exporter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-exporter-80c26562e964016538f832f305b2286e1ec29566";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/exporter/zipball/80c26562e964016538f832f305b2286e1ec29566";
          sha256 = "0ayy2cdpfkfplfb0x7cy323drw7an48wzhnmcf7vidfh8xg9wmhc";
        };
      };
    };
    "sebastian/global-state" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-global-state-bdb1e7c79e592b8c82cb1699be3c8743119b8a72";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/global-state/zipball/bdb1e7c79e592b8c82cb1699be3c8743119b8a72";
          sha256 = "0cvdij0s98ggd3rh3in5dc4kc108jc8cz644js80i3v81xmb5x0i";
        };
      };
    };
    "sebastian/object-enumerator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-object-enumerator-e67516b175550abad905dc952f43285957ef4363";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/object-enumerator/zipball/e67516b175550abad905dc952f43285957ef4363";
          sha256 = "0gf6awkx3m9nfqh4wlf7hjbly708kkvpmb6vkya80vqmsc9qs5kf";
        };
      };
    };
    "sebastian/object-reflector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-object-reflector-f4fd0835cabb0d4a6546d9fe291e5740037aa1e7";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/object-reflector/zipball/f4fd0835cabb0d4a6546d9fe291e5740037aa1e7";
          sha256 = "1f3n757dbwxl57bmd1i4b1l17yy38qj8d7klmfsywnzy4yasv8yr";
        };
      };
    };
    "sebastian/recursion-context" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-recursion-context-cdd86616411fc3062368b720b0425de10bd3d579";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/recursion-context/zipball/cdd86616411fc3062368b720b0425de10bd3d579";
          sha256 = "0641ksvxzmlnv04qkdaq3vgdl7ms27mq8z6xl3x9d7yswry37b56";
        };
      };
    };
    "sebastian/resource-operations" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-resource-operations-8c98bf0dfa1f9256d0468b9803a1e1df31b6fa98";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/resource-operations/zipball/8c98bf0dfa1f9256d0468b9803a1e1df31b6fa98";
          sha256 = "109j6bpw51hrkjhw6dfx2y6l2ikj77znwdk04z9fq53krfv1y2l7";
        };
      };
    };
    "sebastian/type" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-type-9e8f42f740afdea51f5f4e8cec2035580e797ee1";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/type/zipball/9e8f42f740afdea51f5f4e8cec2035580e797ee1";
          sha256 = "1rqz9hn5w2dyx6gcp757fd7jhxgjdnfqjq3ndasi2n430sar775p";
        };
      };
    };
    "sebastian/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-version-0411bde656dce64202b39c2f4473993a9081d39e";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/version/zipball/0411bde656dce64202b39c2f4473993a9081d39e";
          sha256 = "0bgkdyfgmnmcba5fr9pkq1b965asrxdidn3r795qn4vg585iasck";
        };
      };
    };
    "symfony/polyfill-ctype" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-ctype-4719fa9c18b0464d399f1a63bf624b42b6fa8d14";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-ctype/zipball/4719fa9c18b0464d399f1a63bf624b42b6fa8d14";
          sha256 = "16argd4p6fi28l4dwgmrlp8cwczx8qay14dbicjj9zxnrqb41cqb";
        };
      };
    };
    "theseer/tokenizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "theseer-tokenizer-11336f6f84e16a720dae9d8e6ed5019efa85a0f9";
        src = fetchurl {
          url = "https://api.github.com/repos/theseer/tokenizer/zipball/11336f6f84e16a720dae9d8e6ed5019efa85a0f9";
          sha256 = "1nnym5d45fanxfp18yb0ylpwcvg3973ppzc67ana02g9w72gfspl";
        };
      };
    };
    "webmozart/assert" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "webmozart-assert-aed98a490f9a8f78468232db345ab9cf606cf598";
        src = fetchurl {
          url = "https://api.github.com/repos/webmozart/assert/zipball/aed98a490f9a8f78468232db345ab9cf606cf598";
          sha256 = "11jp2d9nxjjm9c5z3bm8icp0pixw1gbs23aq5hl6rkal1hq13cs9";
        };
      };
    };
  };
  devPackages = {};
in
composerEnv.buildPackage {
  inherit packages devPackages noDev;
  name = "phpunit-phpunit";
  src = ./.;
  executable = true;
  symlinkDependencies = false;
  meta = {};
}