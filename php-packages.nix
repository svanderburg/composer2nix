{composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false}:

let
  packages = {
    "svanderburg/pndp" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "svanderburg-pndp-4bfe9c4120c23354ab8dc295957dc3009a39bff0";
        src = fetchurl {
          url = https://api.github.com/repos/svanderburg/pndp/zipball/4bfe9c4120c23354ab8dc295957dc3009a39bff0;
          sha256 = "0n2vwpwshv16bhb7a6j95m664zh4lpfa7dqmcyhmn89nxpgvg91y";
        };
      };
    };
  };
  devPackages = {
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
        name = "doctrine-annotations-5beebb01b025c94e93686b7a0ed3edae81fe3e7f";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/annotations/zipball/5beebb01b025c94e93686b7a0ed3edae81fe3e7f;
          sha256 = "0g3bjkid96yqxn54fz4pzqwlkiig5lfgdgfhi393s5ay0qqv782p";
        };
      };
    };
    "doctrine/instantiator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-instantiator-185b8868aa9bf7159f5f953ed5afb2d7fcdc3bda";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/instantiator/zipball/185b8868aa9bf7159f5f953ed5afb2d7fcdc3bda;
          sha256 = "1mah9a6mb30qad1zryzjain2dxw29d8h4bjkbcs3srpm3p891msy";
        };
      };
    };
    "doctrine/lexer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-lexer-83893c552fd2045dd78aef794c31e694c37c0b8c";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/lexer/zipball/83893c552fd2045dd78aef794c31e694c37c0b8c;
          sha256 = "0cyh3vwcl163cx1vrcwmhlh5jg9h47xwiqgzc6rwscxw0ppd1v74";
        };
      };
    };
    "erusev/parsedown" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "erusev-parsedown-728952b90a333b5c6f77f06ea9422b94b585878d";
        src = fetchurl {
          url = https://api.github.com/repos/erusev/parsedown/zipball/728952b90a333b5c6f77f06ea9422b94b585878d;
          sha256 = "0zvn5zw0snzvs9qh1kymi55rmz7dvr2f4l4ixvdycpyp4km1zmh7";
        };
      };
    };
    "herrera-io/json" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "herrera-io-json-60c696c9370a1e5136816ca557c17f82a6fa83f1";
        src = fetchurl {
          url = https://api.github.com/repos/kherge-php/json/zipball/60c696c9370a1e5136816ca557c17f82a6fa83f1;
          sha256 = "1bx6rnrhvfn0ia2c95nhjk2mci0c4aj2s7ijqv0ihvda54abpws0";
        };
      };
    };
    "herrera-io/phar-update" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "herrera-io-phar-update-00a79e1d5b8cf3c080a2e3becf1ddf7a7fea025b";
        src = fetchurl {
          url = https://api.github.com/repos/kherge-abandoned/php-phar-update/zipball/00a79e1d5b8cf3c080a2e3becf1ddf7a7fea025b;
          sha256 = "0dz3pbba9b6x6l8rba36mxa75dy131j3pvjbgads5xibdzb6zsj0";
        };
      };
    };
    "jms/metadata" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jms-metadata-6a06970a10e0a532fb52d3959547123b84a3b3ab";
        src = fetchurl {
          url = https://api.github.com/repos/schmittjoh/metadata/zipball/6a06970a10e0a532fb52d3959547123b84a3b3ab;
          sha256 = "0bmmgwgnphlsp5da9xjxmwky837k8fqyqrwcrfi37c2c32qm1h68";
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
        name = "jms-serializer-f4683f41ebf21e60667447bb49939bee35807c3c";
        src = fetchurl {
          url = https://api.github.com/repos/schmittjoh/serializer/zipball/f4683f41ebf21e60667447bb49939bee35807c3c;
          sha256 = "077w893kr9hg7jb83b49954253y97rzglai3kmcpqhf9sjm258mi";
        };
      };
    };
    "justinrainbow/json-schema" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "justinrainbow-json-schema-cc84765fb7317f6b07bd8ac78364747f95b86341";
        src = fetchurl {
          url = https://api.github.com/repos/justinrainbow/json-schema/zipball/cc84765fb7317f6b07bd8ac78364747f95b86341;
          sha256 = "0hgk8yqis25ymjcn1nhvdmbk5rkbr0qdz4jqm84zr1rkk2v5ckv9";
        };
      };
    };
    "kherge/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "kherge-version-f07cf83f8ce533be8f93d2893d96d674bbeb7e30";
        src = fetchurl {
          url = https://api.github.com/repos/kherge-abandoned/Version/zipball/f07cf83f8ce533be8f93d2893d96d674bbeb7e30;
          sha256 = "18l6nv6n6m85ywcmzf1d7xqjb4by26fzyjhkfvkj82rahxqji036";
        };
      };
    };
    "monolog/monolog" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "monolog-monolog-fd8c787753b3a2ad11bc60c063cff1358a32a3b4";
        src = fetchurl {
          url = https://api.github.com/repos/Seldaek/monolog/zipball/fd8c787753b3a2ad11bc60c063cff1358a32a3b4;
          sha256 = "0avf3y8raw23krwdb7kw9qb5bsr5ls4i7qd2vh7hcds3qjixg3h9";
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
        name = "phpdocumentor-phpdocumentor-be607da0eef9b9249c43c5b4820d25d631c73667";
        src = fetchurl {
          url = https://api.github.com/repos/phpDocumentor/phpDocumentor2/zipball/be607da0eef9b9249c43c5b4820d25d631c73667;
          sha256 = "1gkvxw5q8fi2rpvc2g31n3bpywwcxjx2p1ickkd40bnvj9qw5wh1";
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
        name = "phpoption-phpoption-94e644f7d2051a5f0fcf77d81605f152eecff0ed";
        src = fetchurl {
          url = https://api.github.com/repos/schmittjoh/php-option/zipball/94e644f7d2051a5f0fcf77d81605f152eecff0ed;
          sha256 = "0vl5di2k4fypy1698hl86yjchlkcc8wacrgzlk6z66szf9xnn3nc";
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
        name = "psr-log-4ebe3a8bf773a19edfe0a84b6585ba3d401b724d";
        src = fetchurl {
          url = https://api.github.com/repos/php-fig/log/zipball/4ebe3a8bf773a19edfe0a84b6585ba3d401b724d;
          sha256 = "1mlcv17fjw39bjpck176ah1z393b6pnbw3jqhhrblj27c70785md";
        };
      };
    };
    "seld/jsonlint" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "seld-jsonlint-50d63f2858d87c4738d5b76a7dcbb99fa8cf7c77";
        src = fetchurl {
          url = https://api.github.com/repos/Seldaek/jsonlint/zipball/50d63f2858d87c4738d5b76a7dcbb99fa8cf7c77;
          sha256 = "0jy7dshvi1ahxlp0gqm8kn396n6fcgm9qhi0k5yyckw3wkrmf9j7";
        };
      };
    };
    "symfony/config" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-config-1dbeaa8e2db4b29159265867efff075ad961558c";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/config/zipball/1dbeaa8e2db4b29159265867efff075ad961558c;
          sha256 = "1wxklsxdxvmbgb5903cl5irgki3yidl61rmxd280r2sfmnyjmdqs";
        };
      };
    };
    "symfony/console" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-console-f81549d2c5fdee8d711c9ab3c7e7362353ea5853";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/console/zipball/f81549d2c5fdee8d711c9ab3c7e7362353ea5853;
          sha256 = "02hibfib2gcz959dzlxf1vygghkhlh9lp6x2xfg6dmq2ygbjn0xv";
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
        name = "symfony-event-dispatcher-7fe089232554357efb8d4af65ce209fc6e5a2186";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/event-dispatcher/zipball/7fe089232554357efb8d4af65ce209fc6e5a2186;
          sha256 = "05b4mvacz66gyilnfkksizh1wiy9jsklcs0asn3qvqihxpjg75zl";
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
        name = "symfony-finder-a945724b201f74d543e356f6059c930bb8d10c92";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/finder/zipball/a945724b201f74d543e356f6059c930bb8d10c92;
          sha256 = "0bkpdhlnzzvvdxfjsmyy3hq0w5ijj6brppxq40lhli9s8qlwclhc";
        };
      };
    };
    "symfony/polyfill-mbstring" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-mbstring-2ec8b39c38cb16674bbf3fea2b6ce5bf117e1296";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-mbstring/zipball/2ec8b39c38cb16674bbf3fea2b6ce5bf117e1296;
          sha256 = "0rk5nfgxmr7i1ss67zkm25vk4wpgvhlj11lpsljr6x4400g8f33y";
        };
      };
    };
    "symfony/process" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-process-26c9fb02bf06bd6b90f661a5bd17e510810d0176";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/process/zipball/26c9fb02bf06bd6b90f661a5bd17e510810d0176;
          sha256 = "19y1qh7ij5s06lxn4g6gsnxcb61rqjl4gnx2n73jm3hvywlyn7j4";
        };
      };
    };
    "symfony/stopwatch" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-stopwatch-28ee62ea4736431ca817cdaebcb005663e9cd1cb";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/stopwatch/zipball/28ee62ea4736431ca817cdaebcb005663e9cd1cb;
          sha256 = "1mfz0kcdw7y8rklwbhwx2yanrbcc8nynn9jzsssh58j6xwg8vcnq";
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
        name = "symfony-validator-1531ddfd96efd1b2c231cbf45f22e652a8f67925";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/validator/zipball/1531ddfd96efd1b2c231cbf45f22e652a8f67925;
          sha256 = "0g390pbchvldks2iym2bqxqm5c3gg10fjmmifjsl2wiyx6pxb0lg";
        };
      };
    };
    "twig/twig" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "twig-twig-daa657073e55b0a78cce8fdd22682fddecc6385f";
        src = fetchurl {
          url = https://api.github.com/repos/twigphp/Twig/zipball/daa657073e55b0a78cce8fdd22682fddecc6385f;
          sha256 = "0fq2i9jjn1dzwx3p5dcvi82vq1988pqb1d2wqaaszf190d9srmcv";
        };
      };
    };
    "zendframework/zend-cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zendframework-zend-cache-c98331b96d3b9d9b24cf32d02660602edb34d039";
        src = fetchurl {
          url = https://api.github.com/repos/zendframework/zend-cache/zipball/c98331b96d3b9d9b24cf32d02660602edb34d039;
          sha256 = "1a3d7mkvz0d1fmrfzb9mihq5r2swfhf5iv5z1cy9aywir1y7p7kd";
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
        name = "zendframework-zend-eventmanager-9d72db10ceb6e42fb92350c0cb54460da61bd79c";
        src = fetchurl {
          url = https://api.github.com/repos/zendframework/zend-eventmanager/zipball/9d72db10ceb6e42fb92350c0cb54460da61bd79c;
          sha256 = "0cgm3yishqw4yq48mpyf5276r4ggh7xx3lcz96j8pvfr8w9kc0yq";
        };
      };
    };
    "zendframework/zend-filter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zendframework-zend-filter-b8d0ff872f126631bf63a932e33aa2d22d467175";
        src = fetchurl {
          url = https://api.github.com/repos/zendframework/zend-filter/zipball/b8d0ff872f126631bf63a932e33aa2d22d467175;
          sha256 = "0g6qw9194ixqzz8wrnkzss82kzmcndi5mi76qwi2wvqm5qlh7ffm";
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
        name = "zendframework-zend-i18n-d3431e29cc00c2a1c6704e601d4371dbf24f6a31";
        src = fetchurl {
          url = https://api.github.com/repos/zendframework/zend-i18n/zipball/d3431e29cc00c2a1c6704e601d4371dbf24f6a31;
          sha256 = "0b304idf6d5hi9hg8816yb6bncdx201x2s4hj1zia70c0y57s3wc";
        };
      };
    };
    "zendframework/zend-json" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zendframework-zend-json-f42a1588e75c2a3e338cd94c37906231e616daab";
        src = fetchurl {
          url = https://api.github.com/repos/zendframework/zend-json/zipball/f42a1588e75c2a3e338cd94c37906231e616daab;
          sha256 = "04h8xqfnc2hq9ygj7lc34dmik8j5w3i10z7726i1pvhg98i7xpda";
        };
      };
    };
    "zendframework/zend-serializer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zendframework-zend-serializer-ff74ea020f5f90866eb28365327e9bc765a61a6e";
        src = fetchurl {
          url = https://api.github.com/repos/zendframework/zend-serializer/zipball/ff74ea020f5f90866eb28365327e9bc765a61a6e;
          sha256 = "1p1yqyv9gz605ymjmsz59dxrmxkcbnl2hvkkjjhzkq52gvnvf0qw";
        };
      };
    };
    "zendframework/zend-servicemanager" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zendframework-zend-servicemanager-2ae3b6e4978ec2e9ff52352e661946714ed989f9";
        src = fetchurl {
          url = https://api.github.com/repos/zendframework/zend-servicemanager/zipball/2ae3b6e4978ec2e9ff52352e661946714ed989f9;
          sha256 = "1dz3432jl7y13778j940sll7xhj3zlc9052jc3d5niycgdlnlwv2";
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
        name = "zetacomponents-base-f20df24e8de3e48b6b69b2503f917e457281e687";
        src = fetchurl {
          url = https://api.github.com/repos/zetacomponents/Base/zipball/f20df24e8de3e48b6b69b2503f917e457281e687;
          sha256 = "0i0bv82dvk6p8fw2bnv1b0wyk6ng8jsgmcpzciixxhi6clw78ky5";
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