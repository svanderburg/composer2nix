{composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false}:

let
  packages = {
    "cilex/cilex" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "cilex-cilex-7acd965a609a56d0345e8b6071c261fbdb926cb5";
        src = fetchurl {
          url = https://api.github.com/repos/Cilex/Cilex/zipball/7acd965a609a56d0345e8b6071c261fbdb926cb5;
          sha256 = "0hi8xfwkj7bj15mpaqxj06bngz4gk2idhkc9yxxr5k4x72swvhzp";
        };
      };
    };
    "cilex/console-service-provider" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "cilex-console-service-provider-25ee3d1875243d38e1a3448ff94bdf944f70d24e";
        src = fetchurl {
          url = https://api.github.com/repos/Cilex/console-service-provider/zipball/25ee3d1875243d38e1a3448ff94bdf944f70d24e;
          sha256 = "1g9zgx1hplkbhhqsci5l4m9j7mi6w6j6b32bg0sn3b9q3510damg";
        };
      };
    };
    "composer/ca-bundle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-ca-bundle-47fe531de31fca4a1b997f87308e7d7804348f7e";
        src = fetchurl {
          url = https://api.github.com/repos/composer/ca-bundle/zipball/47fe531de31fca4a1b997f87308e7d7804348f7e;
          sha256 = "0cvmfh4d5v4ws5sc1c9g57wvq5zfxj9biljq586kcl4j43c6pyis";
        };
      };
    };
    "container-interop/container-interop" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "container-interop-container-interop-79cbf1341c22ec75643d841642dd5d6acd83bdb8";
        src = fetchurl {
          url = https://api.github.com/repos/container-interop/container-interop/zipball/79cbf1341c22ec75643d841642dd5d6acd83bdb8;
          sha256 = "1pxm461g5flcq50yabr01nw8w17n3g7klpman9ps3im4z0604m52";
        };
      };
    };
    "doctrine/annotations" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-annotations-904dca4eb10715b92569fbcd79e201d5c349b6bc";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/annotations/zipball/904dca4eb10715b92569fbcd79e201d5c349b6bc;
          sha256 = "0sskldckhf7dfd8r6dz1jla660kyj9zlxp3giv2a7g8g758pwy06";
        };
      };
    };
    "doctrine/instantiator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-instantiator-ae466f726242e637cebdd526a7d991b9433bacf1";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/instantiator/zipball/ae466f726242e637cebdd526a7d991b9433bacf1;
          sha256 = "1dzx7ql2qjkk902g02salvz0yarf1a17q514l3y6rqg53i3rmxp7";
        };
      };
    };
    "doctrine/lexer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-lexer-5242d66dbeb21a30dd8a3e66bf7a73b66e05e1f6";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/lexer/zipball/5242d66dbeb21a30dd8a3e66bf7a73b66e05e1f6;
          sha256 = "1sxadyv4b6i75v46dzc7jqqbshwx9smyj5j2gwg5j6jf2h6l10hm";
        };
      };
    };
    "erusev/parsedown" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "erusev-parsedown-cb17b6477dfff935958ba01325f2e8a2bfa6dab3";
        src = fetchurl {
          url = https://api.github.com/repos/erusev/parsedown/zipball/cb17b6477dfff935958ba01325f2e8a2bfa6dab3;
          sha256 = "1iil9v8g03m5vpxxg3a5qb2sxd1cs5c4p5i0k00cqjnjsxfrazxd";
        };
      };
    };
    "jms/metadata" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jms-metadata-e5854ab1aa643623dc64adde718a8eec32b957a8";
        src = fetchurl {
          url = https://api.github.com/repos/schmittjoh/metadata/zipball/e5854ab1aa643623dc64adde718a8eec32b957a8;
          sha256 = "0rzdbhy2bpzm4d8ai1d9ybv26ri6n5y1x9wdrr0r40hh4ngypffy";
        };
      };
    };
    "jms/parser-lib" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jms-parser-lib-c509473bc1b4866415627af0e1c6cc8ac97fa51d";
        src = fetchurl {
          url = https://api.github.com/repos/schmittjoh/parser-lib/zipball/c509473bc1b4866415627af0e1c6cc8ac97fa51d;
          sha256 = "1jkgihdxc28vklqzp7zd6wvi6q9dsym1q8cig9x6rm0ws51fns85";
        };
      };
    };
    "jms/serializer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jms-serializer-4fad8bbbe76e05de3b79ffa3db027058ed3813ff";
        src = fetchurl {
          url = https://api.github.com/repos/schmittjoh/serializer/zipball/4fad8bbbe76e05de3b79ffa3db027058ed3813ff;
          sha256 = "1mcxqdqjg021rsii90fkmii2brk9ahn4yrlbnyr9839nlv9w5cgb";
        };
      };
    };
    "monolog/monolog" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "monolog-monolog-fa82921994db851a8becaf3787a9e73c5976b6f1";
        src = fetchurl {
          url = https://api.github.com/repos/Seldaek/monolog/zipball/fa82921994db851a8becaf3787a9e73c5976b6f1;
          sha256 = "0vcn1j16pjbya65cd3c8wm4383mi96l5ys195ni8nvchna7a6b6v";
        };
      };
    };
    "myclabs/deep-copy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "myclabs-deep-copy-b2c28789e80a97badd14145fda39b545d83ca3ef";
        src = fetchurl {
          url = https://api.github.com/repos/myclabs/DeepCopy/zipball/b2c28789e80a97badd14145fda39b545d83ca3ef;
          sha256 = "1a7vr0kb54z8cpal0hqlar9dg5jaklhr4pckvwahgdk37kh38p0s";
        };
      };
    };
    "nikic/php-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nikic-php-parser-f78af2c9c86107aa1a34cd1dbb5bbe9eeb0d9f51";
        src = fetchurl {
          url = https://api.github.com/repos/nikic/PHP-Parser/zipball/f78af2c9c86107aa1a34cd1dbb5bbe9eeb0d9f51;
          sha256 = "008iv40q92cldbfqs5bc9s11i0fpycjafv7s4wk4y6h5wrbf34qk";
        };
      };
    };
    "padraic/humbug_get_contents" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "padraic-humbug_get_contents-dcb086060c9dd6b2f51d8f7a895500307110b7a7";
        src = fetchurl {
          url = https://api.github.com/repos/humbug/file_get_contents/zipball/dcb086060c9dd6b2f51d8f7a895500307110b7a7;
          sha256 = "1pw0dwhd3h7jdjx9llliphym1x30lfc2h93577p3ax1dqphhkh8y";
        };
      };
    };
    "padraic/phar-updater" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "padraic-phar-updater-d01d3b8f26e541ac9b9eeba1e18d005d852f7ff1";
        src = fetchurl {
          url = https://api.github.com/repos/humbug/phar-updater/zipball/d01d3b8f26e541ac9b9eeba1e18d005d852f7ff1;
          sha256 = "0lwrb0g55k09qqpbnjr0i2flka3pj1qa5w7k8bxh77ypx7qadg4f";
        };
      };
    };
    "phar-io/manifest" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-manifest-7761fcacf03b4d4f16e7ccb606d4879ca431fcf4";
        src = fetchurl {
          url = https://api.github.com/repos/phar-io/manifest/zipball/7761fcacf03b4d4f16e7ccb606d4879ca431fcf4;
          sha256 = "1n59a0gnk43ryl54bc37hlsi1spvi8280bq64zddxrpagyjyp15a";
        };
      };
    };
    "phar-io/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-version-45a2ec53a73c70ce41d55cedef9063630abaf1b6";
        src = fetchurl {
          url = https://api.github.com/repos/phar-io/version/zipball/45a2ec53a73c70ce41d55cedef9063630abaf1b6;
          sha256 = "0syr7v2b3lsdavfa22z55sdkg5awc3jlzpgn0qk0d3vf6x96hvzp";
        };
      };
    };
    "phpcollection/phpcollection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpcollection-phpcollection-f2bcff45c0da7c27991bbc1f90f47c4b7fb434a6";
        src = fetchurl {
          url = https://api.github.com/repos/schmittjoh/php-collection/zipball/f2bcff45c0da7c27991bbc1f90f47c4b7fb434a6;
          sha256 = "0bfbg7bs7q3wmyl3kp3vqshcj0pklj14z1vlxk4ymxrjzxwmb8my";
        };
      };
    };
    "phpdocumentor/fileset" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-fileset-bfa78d8fa9763dfce6d0e5d3730c1d8ab25d34b0";
        src = fetchurl {
          url = https://api.github.com/repos/phpDocumentor/Fileset/zipball/bfa78d8fa9763dfce6d0e5d3730c1d8ab25d34b0;
          sha256 = "0ncvq8zfnr3azzpw0navm2lk9w0dskk7mar2m4immzxyip00gp89";
        };
      };
    };
    "phpdocumentor/graphviz" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-graphviz-a906a90a9f230535f25ea31caf81b2323956283f";
        src = fetchurl {
          url = https://api.github.com/repos/phpDocumentor/GraphViz/zipball/a906a90a9f230535f25ea31caf81b2323956283f;
          sha256 = "06y7pha2nrki27k2jdpb4l1px5ngpwlwrmgg6lcxlzp4brf1q7ds";
        };
      };
    };
    "phpdocumentor/phpdocumentor" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-phpdocumentor-2e4f981a55ebe6f5db592d7da892d13d5b3c7816";
        src = fetchurl {
          url = https://api.github.com/repos/phpDocumentor/phpDocumentor/zipball/2e4f981a55ebe6f5db592d7da892d13d5b3c7816;
          sha256 = "0553jx5n6pr6a4qrqz0y007saxd61q4z6r0dcwaw71r7q4fw76wa";
        };
      };
    };
    "phpdocumentor/reflection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-793bfd92d9a0fc96ae9608fb3e947c3f59fb3a0d";
        src = fetchurl {
          url = https://api.github.com/repos/phpDocumentor/Reflection/zipball/793bfd92d9a0fc96ae9608fb3e947c3f59fb3a0d;
          sha256 = "1k2hbcjkiyyb8yzw9682i4i0bnrdzfapj6qhh4idn2d80bqzgkir";
        };
      };
    };
    "phpdocumentor/reflection-docblock" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-docblock-e6a969a640b00d8daa3c66518b0405fb41ae0c4b";
        src = fetchurl {
          url = https://api.github.com/repos/phpDocumentor/ReflectionDocBlock/zipball/e6a969a640b00d8daa3c66518b0405fb41ae0c4b;
          sha256 = "0hgrmgcdi9qadwsjcplg6lfjjwdjfajd2vm97bd0jkh0ykrxqghs";
        };
      };
    };
    "phpoption/phpoption" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpoption-phpoption-4acfd6a4b33a509d8c88f50e5222f734b6aeebae";
        src = fetchurl {
          url = https://api.github.com/repos/schmittjoh/php-option/zipball/4acfd6a4b33a509d8c88f50e5222f734b6aeebae;
          sha256 = "0wb6zmnj6kh78gvmscmy0y7w3vcmc730gdyg5y6zwgqqz5976f10";
        };
      };
    };
    "phpspec/prophecy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpspec-prophecy-451c3cd1418cf640de218914901e51b064abb093";
        src = fetchurl {
          url = https://api.github.com/repos/phpspec/prophecy/zipball/451c3cd1418cf640de218914901e51b064abb093;
          sha256 = "0z6wh1lygafcfw36r9abrg7fgq9r3v1233v38g4wbqy3jf7xfrzb";
        };
      };
    };
    "phpunit/php-code-coverage" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-code-coverage-31e94ccc084025d6abee0585df533eb3a792b96a";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/php-code-coverage/zipball/31e94ccc084025d6abee0585df533eb3a792b96a;
          sha256 = "1pjxxd3qal8wmq4sjww7j533abk3lvlfrl7lfahimfch6490cxc7";
        };
      };
    };
    "phpunit/php-file-iterator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-file-iterator-354d4a5faa7449a377a18b94a2026ca3415e3d7a";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/php-file-iterator/zipball/354d4a5faa7449a377a18b94a2026ca3415e3d7a;
          sha256 = "1826gkf2zp42i0739zzprwfhjphfx98a0vzlriq17a8a9y8kdn94";
        };
      };
    };
    "phpunit/php-invoker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-invoker-7579d5a1ba7f3ac11c80004d205877911315ae7a";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/php-invoker/zipball/7579d5a1ba7f3ac11c80004d205877911315ae7a;
          sha256 = "05x8ln7p8vzq8s4z9zb1h73zmbjysd6fs2hxpp7cbqd9sw2lzwdz";
        };
      };
    };
    "phpunit/php-text-template" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-text-template-526dc996cc0ebdfa428cd2dfccd79b7b53fee346";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/php-text-template/zipball/526dc996cc0ebdfa428cd2dfccd79b7b53fee346;
          sha256 = "1ynq62shrk2jcpdxd2rq1spg7g8xwvqd6ckl975x4f4wj09q45f2";
        };
      };
    };
    "phpunit/php-timer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-timer-4118013a4d0f97356eae8e7fb2f6c6472575d1df";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/php-timer/zipball/4118013a4d0f97356eae8e7fb2f6c6472575d1df;
          sha256 = "0wfgyqz45k9qf0j6llzf61haijz57az0w3px54y489aqk4k7f6dd";
        };
      };
    };
    "phpunit/php-token-stream" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-token-stream-b2560a0c33f7710e4d7f8780964193e8e8f8effe";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/php-token-stream/zipball/b2560a0c33f7710e4d7f8780964193e8e8f8effe;
          sha256 = "190d0h48nwalhwwips1vnv303hy8h3ikjf38zhqzxmid98a0b518";
        };
      };
    };
    "phpunit/phpunit" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-phpunit-c0ecbfb898ab8b24d8a59a23520f7b2a73e27b5b";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/phpunit/zipball/c0ecbfb898ab8b24d8a59a23520f7b2a73e27b5b;
          sha256 = "1ndngpvk8hxvcgrnnsd8sv9r2mbk4172r85ixm5mhcd4spfl9fsm";
        };
      };
    };
    "pimple/pimple" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pimple-pimple-2019c145fe393923f3441b23f29bbdfaa5c58c4d";
        src = fetchurl {
          url = https://api.github.com/repos/silexphp/Pimple/zipball/2019c145fe393923f3441b23f29bbdfaa5c58c4d;
          sha256 = "17rnqcfmdr7lfvqprcnn3cbldj37gi9d7g8rjz6lzr813cj9q826";
        };
      };
    };
    "psr/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-cache-d11b50ad223250cf17b86e38383413f5a6764bf8";
        src = fetchurl {
          url = https://api.github.com/repos/php-fig/cache/zipball/d11b50ad223250cf17b86e38383413f5a6764bf8;
          sha256 = "06i2k3dx3b4lgn9a4v1dlgv8l9wcl4kl7vzhh63lbji0q96hv8qz";
        };
      };
    };
    "psr/container" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-container-b7ce3b176482dbbc1245ebf52b181af44c2cf55f";
        src = fetchurl {
          url = https://api.github.com/repos/php-fig/container/zipball/b7ce3b176482dbbc1245ebf52b181af44c2cf55f;
          sha256 = "0rkz64vgwb0gfi09klvgay4qnw993l1dc03vyip7d7m2zxi6cy4j";
        };
      };
    };
    "psr/log" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-log-0f73288fd15629204f9d42b7055f72dacbe811fc";
        src = fetchurl {
          url = https://api.github.com/repos/php-fig/log/zipball/0f73288fd15629204f9d42b7055f72dacbe811fc;
          sha256 = "1npi9ggl4qll4sdxz1xgp8779ia73gwlpjxbb1f1cpl1wn4s42r4";
        };
      };
    };
    "psr/simple-cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-simple-cache-408d5eafb83c57f6365a3ca330ff23aa4a5fa39b";
        src = fetchurl {
          url = https://api.github.com/repos/php-fig/simple-cache/zipball/408d5eafb83c57f6365a3ca330ff23aa4a5fa39b;
          sha256 = "1djgzclkamjxi9jy4m9ggfzgq1vqxaga2ip7l3cj88p7rwkzjxgw";
        };
      };
    };
    "sebastian/code-unit-reverse-lookup" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-code-unit-reverse-lookup-5b5dbe0044085ac41df47e79d34911a15b96d82e";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/code-unit-reverse-lookup/zipball/5b5dbe0044085ac41df47e79d34911a15b96d82e;
          sha256 = "0smlmirqcq4r6jhh7f59a11pczgk02zlq8z9zwk744q292ly218f";
        };
      };
    };
    "sebastian/comparator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-comparator-85b3435da967696ed618ff745f32be3ff4a2b8e8";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/comparator/zipball/85b3435da967696ed618ff745f32be3ff4a2b8e8;
          sha256 = "0wcvmnsc066kiwmlvjnavwf4s6dh0za8j2c3qkqd4f18gijvab1d";
        };
      };
    };
    "sebastian/diff" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-diff-c0c26c9188b538bfa985ae10c9f05d278f12060d";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/diff/zipball/c0c26c9188b538bfa985ae10c9f05d278f12060d;
          sha256 = "16hn6xd3d00mc3cpv3idaazp843fh5r4yj6aym8wsq5r0v75imhd";
        };
      };
    };
    "sebastian/environment" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-environment-c39c1db0a5cffc98173f3de5a17d489d1043fd7b";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/environment/zipball/c39c1db0a5cffc98173f3de5a17d489d1043fd7b;
          sha256 = "0d3p163bbf071w0cn7cikz4n9gnybzhj0qq3d6w01bb4fypy196q";
        };
      };
    };
    "sebastian/exporter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-exporter-80c26562e964016538f832f305b2286e1ec29566";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/exporter/zipball/80c26562e964016538f832f305b2286e1ec29566;
          sha256 = "0ayy2cdpfkfplfb0x7cy323drw7an48wzhnmcf7vidfh8xg9wmhc";
        };
      };
    };
    "sebastian/global-state" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-global-state-bdb1e7c79e592b8c82cb1699be3c8743119b8a72";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/global-state/zipball/bdb1e7c79e592b8c82cb1699be3c8743119b8a72;
          sha256 = "0cvdij0s98ggd3rh3in5dc4kc108jc8cz644js80i3v81xmb5x0i";
        };
      };
    };
    "sebastian/object-enumerator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-object-enumerator-e67516b175550abad905dc952f43285957ef4363";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/object-enumerator/zipball/e67516b175550abad905dc952f43285957ef4363;
          sha256 = "0gf6awkx3m9nfqh4wlf7hjbly708kkvpmb6vkya80vqmsc9qs5kf";
        };
      };
    };
    "sebastian/object-reflector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-object-reflector-f4fd0835cabb0d4a6546d9fe291e5740037aa1e7";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/object-reflector/zipball/f4fd0835cabb0d4a6546d9fe291e5740037aa1e7;
          sha256 = "1f3n757dbwxl57bmd1i4b1l17yy38qj8d7klmfsywnzy4yasv8yr";
        };
      };
    };
    "sebastian/recursion-context" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-recursion-context-cdd86616411fc3062368b720b0425de10bd3d579";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/recursion-context/zipball/cdd86616411fc3062368b720b0425de10bd3d579;
          sha256 = "0641ksvxzmlnv04qkdaq3vgdl7ms27mq8z6xl3x9d7yswry37b56";
        };
      };
    };
    "sebastian/resource-operations" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-resource-operations-8c98bf0dfa1f9256d0468b9803a1e1df31b6fa98";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/resource-operations/zipball/8c98bf0dfa1f9256d0468b9803a1e1df31b6fa98;
          sha256 = "109j6bpw51hrkjhw6dfx2y6l2ikj77znwdk04z9fq53krfv1y2l7";
        };
      };
    };
    "sebastian/type" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-type-9e8f42f740afdea51f5f4e8cec2035580e797ee1";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/type/zipball/9e8f42f740afdea51f5f4e8cec2035580e797ee1;
          sha256 = "1rqz9hn5w2dyx6gcp757fd7jhxgjdnfqjq3ndasi2n430sar775p";
        };
      };
    };
    "sebastian/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-version-0411bde656dce64202b39c2f4473993a9081d39e";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/version/zipball/0411bde656dce64202b39c2f4473993a9081d39e;
          sha256 = "0bgkdyfgmnmcba5fr9pkq1b965asrxdidn3r795qn4vg585iasck";
        };
      };
    };
    "svanderburg/php-sbbiblio" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "svanderburg-php-sbbiblio-b0e97a59d7d3b3fa72ea2227869e491e0203f7fd";
        src = fetchurl {
          url = https://api.github.com/repos/svanderburg/php-sbbiblio/zipball/b0e97a59d7d3b3fa72ea2227869e491e0203f7fd;
          sha256 = "0k04kzj6xpqlx24mj36k65sbrb88k4ia3pcdzf7js1fpk6mbc9i2";
        };
      };
    };
    "svanderburg/php-sblayout" = {
      targetDir = "";
      src = fetchgit {
        name = "svanderburg-php-sblayout-df261b792f8eebc98fe62981b237a04d6e647ba9";
        url = "https://github.com/svanderburg/php-sblayout.git";
        rev = "df261b792f8eebc98fe62981b237a04d6e647ba9";
        sha256 = "0giyk5v3h3ql685j41jndr0dbvqms25xidjn6aabbijyskk68j1f";
      };
    };
    "symfony/config" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-config-7dd5f5040dc04c118d057fb5886563963eb70011";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/config/zipball/7dd5f5040dc04c118d057fb5886563963eb70011;
          sha256 = "09cmr151xyl76il2vdgy92vpmhxg5wpmi8jbxxvxlphh6bqk6l3h";
        };
      };
    };
    "symfony/console" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-console-cbcf4b5e233af15cd2bbd50dee1ccc9b7927dc12";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/console/zipball/cbcf4b5e233af15cd2bbd50dee1ccc9b7927dc12;
          sha256 = "1bcjfhpccs4r5988rqmfdi1xx0pcvc9yh5hba11ba46sql1hwxr3";
        };
      };
    };
    "symfony/debug" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-debug-697c527acd9ea1b2d3efac34d9806bf255278b0a";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/debug/zipball/697c527acd9ea1b2d3efac34d9806bf255278b0a;
          sha256 = "00d4kbzswrymand3rrhyc173fs26x55d38bvs17d5y6bk5glr6q1";
        };
      };
    };
    "symfony/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-a77e974a5fecb4398833b0709210e3d5e334ffb0";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/event-dispatcher/zipball/a77e974a5fecb4398833b0709210e3d5e334ffb0;
          sha256 = "1v0hv5ghbrjl3hhvrfhhks1adwms05ybm4yvffwyqqcm77yvv8cg";
        };
      };
    };
    "symfony/filesystem" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-filesystem-b2da5009d9bacbd91d83486aa1f44c793a8c380d";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/filesystem/zipball/b2da5009d9bacbd91d83486aa1f44c793a8c380d;
          sha256 = "1ijgs2yj900q26f1dr81nbb1s3hjmhzh4pap13145r71acjh7q37";
        };
      };
    };
    "symfony/finder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-finder-1444eac52273e345d9b95129bf914639305a9ba4";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/finder/zipball/1444eac52273e345d9b95129bf914639305a9ba4;
          sha256 = "0vnc79kvnk6n5jcd3kfp5sfgm0q4ghh3wv33nnjpkavl894zlv7f";
        };
      };
    };
    "symfony/polyfill-ctype" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-ctype-4719fa9c18b0464d399f1a63bf624b42b6fa8d14";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-ctype/zipball/4719fa9c18b0464d399f1a63bf624b42b6fa8d14;
          sha256 = "16argd4p6fi28l4dwgmrlp8cwczx8qay14dbicjj9zxnrqb41cqb";
        };
      };
    };
    "symfony/polyfill-mbstring" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-mbstring-81ffd3a9c6d707be22e3012b827de1c9775fc5ac";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-mbstring/zipball/81ffd3a9c6d707be22e3012b827de1c9775fc5ac;
          sha256 = "196ql3qk157nqy1sq5xxcac5fliws3bc67zi5scxa471y3jy497j";
        };
      };
    };
    "symfony/process" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-process-c3591a09c78639822b0b290d44edb69bf9f05dc8";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/process/zipball/c3591a09c78639822b0b290d44edb69bf9f05dc8;
          sha256 = "1xm7v9zzy9ccrq2c87asqzzcp2vrjgi659hxssj3x5qxahpgp0c7";
        };
      };
    };
    "symfony/stopwatch" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-stopwatch-752586c80af8a85aeb74d1ae8202411c68836663";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/stopwatch/zipball/752586c80af8a85aeb74d1ae8202411c68836663;
          sha256 = "1gsrf5388a6vzmdsxlnb4v5a0i01cz4s0da38h9nv7nmwr2f8hdw";
        };
      };
    };
    "symfony/translation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-translation-eee6c664853fd0576f21ae25725cfffeafe83f26";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/translation/zipball/eee6c664853fd0576f21ae25725cfffeafe83f26;
          sha256 = "1l6nxk7ik8a0hj9lrxgbzwi07xiwm9aai1yd4skswnb0r3qbbxzq";
        };
      };
    };
    "symfony/validator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-validator-d5d2090bba3139d8ddb79959fbf516e87238fe3a";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/validator/zipball/d5d2090bba3139d8ddb79959fbf516e87238fe3a;
          sha256 = "16y25dj2ag825s0xhx89ajk5di0w4i804p7nw1n10ji6mbswx42w";
        };
      };
    };
    "theseer/tokenizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "theseer-tokenizer-11336f6f84e16a720dae9d8e6ed5019efa85a0f9";
        src = fetchurl {
          url = https://api.github.com/repos/theseer/tokenizer/zipball/11336f6f84e16a720dae9d8e6ed5019efa85a0f9;
          sha256 = "1nnym5d45fanxfp18yb0ylpwcvg3973ppzc67ana02g9w72gfspl";
        };
      };
    };
    "twig/twig" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "twig-twig-87b2ea9d8f6fd014d0621ca089bb1b3769ea3f8e";
        src = fetchurl {
          url = https://api.github.com/repos/twigphp/Twig/zipball/87b2ea9d8f6fd014d0621ca089bb1b3769ea3f8e;
          sha256 = "0n51x7glzq3c582p8nf1dwm569i64jwh18vrwk49n715bvm6pixz";
        };
      };
    };
    "webmozart/assert" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "webmozart-assert-aed98a490f9a8f78468232db345ab9cf606cf598";
        src = fetchurl {
          url = https://api.github.com/repos/webmozart/assert/zipball/aed98a490f9a8f78468232db345ab9cf606cf598;
          sha256 = "00w4s4z7vlsyvx3ii7374vgq705a3yi4maw3haa05906srn3d1ik";
        };
      };
    };
    "zendframework/zend-cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zendframework-zend-cache-edde41f1ee5c28e01701a032f434d03751b65df4";
        src = fetchurl {
          url = https://api.github.com/repos/zendframework/zend-cache/zipball/edde41f1ee5c28e01701a032f434d03751b65df4;
          sha256 = "0c01n0y4w2znx5rpwgiy4rnf0bsrmp45r17hh0gg15rjbzmqkmzk";
        };
      };
    };
    "zendframework/zend-config" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zendframework-zend-config-2920e877a9f6dca9fa8f6bd3b1ffc2e19bb1e30d";
        src = fetchurl {
          url = https://api.github.com/repos/zendframework/zend-config/zipball/2920e877a9f6dca9fa8f6bd3b1ffc2e19bb1e30d;
          sha256 = "1gv5pcv7hclyk77sfc722w7qhxkgpz42wayj7nmqfjda0i6ka8fy";
        };
      };
    };
    "zendframework/zend-eventmanager" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zendframework-zend-eventmanager-a5e2583a211f73604691586b8406ff7296a946dd";
        src = fetchurl {
          url = https://api.github.com/repos/zendframework/zend-eventmanager/zipball/a5e2583a211f73604691586b8406ff7296a946dd;
          sha256 = "08a05gn40hfdy2zhz4gcd3r6q7m7zcaks5kpvb9dx1awgx0pzr8n";
        };
      };
    };
    "zendframework/zend-filter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zendframework-zend-filter-d78f2cdde1c31975e18b2a0753381ed7b61118ef";
        src = fetchurl {
          url = https://api.github.com/repos/zendframework/zend-filter/zipball/d78f2cdde1c31975e18b2a0753381ed7b61118ef;
          sha256 = "1bh1jfr7w864zknm327r536qdi3fxwz9013acc0bh3kpvlksygy1";
        };
      };
    };
    "zendframework/zend-hydrator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zendframework-zend-hydrator-22652e1661a5a10b3f564cf7824a2206cf5a4a65";
        src = fetchurl {
          url = https://api.github.com/repos/zendframework/zend-hydrator/zipball/22652e1661a5a10b3f564cf7824a2206cf5a4a65;
          sha256 = "1wys4x4bw2i83h85wirl4b8l2pszzyr0d067mn6h7njipkqdn0dp";
        };
      };
    };
    "zendframework/zend-i18n" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zendframework-zend-i18n-84038e6a1838b611dcc491b1c40321fa4c3a123c";
        src = fetchurl {
          url = https://api.github.com/repos/zendframework/zend-i18n/zipball/84038e6a1838b611dcc491b1c40321fa4c3a123c;
          sha256 = "1zgpzpcn714vv05k4ply0d68fkvqhg7sga2852i7ycd4rajyy2zl";
        };
      };
    };
    "zendframework/zend-json" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zendframework-zend-json-e9ddb1192d93fe7fff846ac895249c39db75132b";
        src = fetchurl {
          url = https://api.github.com/repos/zendframework/zend-json/zipball/e9ddb1192d93fe7fff846ac895249c39db75132b;
          sha256 = "0sr08m6rqa8svs86hmp1cvxvkyc93w7s62kp9c1ad0alhfb3ky67";
        };
      };
    };
    "zendframework/zend-serializer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zendframework-zend-serializer-6fb7ae016cfdf0cfcdfa2b989e6a65f351170e21";
        src = fetchurl {
          url = https://api.github.com/repos/zendframework/zend-serializer/zipball/6fb7ae016cfdf0cfcdfa2b989e6a65f351170e21;
          sha256 = "1s3cyr5qpll8s51p133biad5xyn4v2zr1vp2xys9wlq658yli9x6";
        };
      };
    };
    "zendframework/zend-servicemanager" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zendframework-zend-servicemanager-99ec9ed5d0f15aed9876433c74c2709eb933d4c7";
        src = fetchurl {
          url = https://api.github.com/repos/zendframework/zend-servicemanager/zipball/99ec9ed5d0f15aed9876433c74c2709eb933d4c7;
          sha256 = "0s5d5yh9d8s0grrwpc8rw5cp5ww7x9f1n09d9w3qch6py1l2prz4";
        };
      };
    };
    "zendframework/zend-stdlib" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zendframework-zend-stdlib-0e44eb46788f65e09e077eb7f44d2659143bcc1f";
        src = fetchurl {
          url = https://api.github.com/repos/zendframework/zend-stdlib/zipball/0e44eb46788f65e09e077eb7f44d2659143bcc1f;
          sha256 = "0i4cds0qql22fj2bipkcpv9pc30s63h10gr15kh8k6jxd04ln2fn";
        };
      };
    };
    "zetacomponents/base" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zetacomponents-base-489e20235989ddc97fdd793af31ac803972454f1";
        src = fetchurl {
          url = https://api.github.com/repos/zetacomponents/Base/zipball/489e20235989ddc97fdd793af31ac803972454f1;
          sha256 = "0fwzbz6a47l0lmfw52rvmbd1fds06vdwjpmvgkivgqmzp8r87zl5";
        };
      };
    };
    "zetacomponents/document" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zetacomponents-document-688abfde573cf3fe0730f82538fbd7aa9fc95bc8";
        src = fetchurl {
          url = https://api.github.com/repos/zetacomponents/Document/zipball/688abfde573cf3fe0730f82538fbd7aa9fc95bc8;
          sha256 = "15bxwfcd934c41lw1ccmdypn4m1xq0p540x2bfcsc80m6d51nnll";
        };
      };
    };
  };
  devPackages = {};
in
composerEnv.buildPackage {
  inherit packages devPackages noDev;
  name = "dependencies";
  src = ./.;
  executable = false;
  symlinkDependencies = false;
  meta = {};
}