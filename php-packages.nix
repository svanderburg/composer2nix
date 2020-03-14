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
        name = "doctrine-annotations-fa4c4e861e809d6a1103bd620cce63ed91aedfeb";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/annotations/zipball/fa4c4e861e809d6a1103bd620cce63ed91aedfeb;
          sha256 = "0kq06g613kvfki3lynxbzj5jhlpdx5pr2fiay3nfbrcbfp1r2cmb";
        };
      };
    };
    "doctrine/instantiator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-instantiator-a2c590166b2133a4633738648b6b064edae0814a";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/instantiator/zipball/a2c590166b2133a4633738648b6b064edae0814a;
          sha256 = "1d75i3rhml0amm7wvgb3ixzlkn97x4hmdb9xcr6m8dbqhnzjqy24";
        };
      };
    };
    "doctrine/lexer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-lexer-e17f069ede36f7534b95adec71910ed1b49c74ea";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/lexer/zipball/e17f069ede36f7534b95adec71910ed1b49c74ea;
          sha256 = "1amc4245djbw822fwkmwssgl6a0991i1l8g3k8501xc6383mjkz1";
        };
      };
    };
    "erusev/parsedown" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "erusev-parsedown-6d893938171a817f4e9bc9e86f2da1e370b7bcd7";
        src = fetchurl {
          url = https://api.github.com/repos/erusev/parsedown/zipball/6d893938171a817f4e9bc9e86f2da1e370b7bcd7;
          sha256 = "1jswm82xydyi4622hhks4zwa4a0w0adm14zjvjip1kqvm6lbhnpa";
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
    "hoa/compiler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "hoa-compiler-aa09caf0bf28adae6654ca6ee415ee2f522672de";
        src = fetchurl {
          url = https://api.github.com/repos/hoaproject/Compiler/zipball/aa09caf0bf28adae6654ca6ee415ee2f522672de;
          sha256 = "0qnk59vl87296j3ka853jbmqp0x9hs2vgdhvcz6n2qsdb8zyr8sj";
        };
      };
    };
    "hoa/consistency" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "hoa-consistency-fd7d0adc82410507f332516faf655b6ed22e4c2f";
        src = fetchurl {
          url = https://api.github.com/repos/hoaproject/Consistency/zipball/fd7d0adc82410507f332516faf655b6ed22e4c2f;
          sha256 = "1vwf5rpn4v85fsbwwjasxb2f9d4r9r6wa9n6lcnjxxk6l30j32fb";
        };
      };
    };
    "hoa/event" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "hoa-event-6c0060dced212ffa3af0e34bb46624f990b29c54";
        src = fetchurl {
          url = https://api.github.com/repos/hoaproject/Event/zipball/6c0060dced212ffa3af0e34bb46624f990b29c54;
          sha256 = "1yqs54b7jihsfn8hzxhhac4k205f0skri06ik3jd3vvl4dgkk3ih";
        };
      };
    };
    "hoa/exception" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "hoa-exception-091727d46420a3d7468ef0595651488bfc3a458f";
        src = fetchurl {
          url = https://api.github.com/repos/hoaproject/Exception/zipball/091727d46420a3d7468ef0595651488bfc3a458f;
          sha256 = "105npikirx21b7g06j2dv6k0n686d3wxf8n8afn2fxifp0r9y9yx";
        };
      };
    };
    "hoa/file" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "hoa-file-35cb979b779bc54918d2f9a4e02ed6c7a1fa67ca";
        src = fetchurl {
          url = https://api.github.com/repos/hoaproject/File/zipball/35cb979b779bc54918d2f9a4e02ed6c7a1fa67ca;
          sha256 = "0ldgcy1i6r9kmg8gc4s44m3d3dgnmr3nvxav01zw3bhppcpwqndc";
        };
      };
    };
    "hoa/iterator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "hoa-iterator-d1120ba09cb4ccd049c86d10058ab94af245f0cc";
        src = fetchurl {
          url = https://api.github.com/repos/hoaproject/Iterator/zipball/d1120ba09cb4ccd049c86d10058ab94af245f0cc;
          sha256 = "0g3whchg1bv7mlvpp056saji7zsz5hmp4npl95f6bbdq7c41c4a0";
        };
      };
    };
    "hoa/math" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "hoa-math-7150785d30f5d565704912116a462e9f5bc83a0c";
        src = fetchurl {
          url = https://api.github.com/repos/hoaproject/Math/zipball/7150785d30f5d565704912116a462e9f5bc83a0c;
          sha256 = "1k7blsh5ml31imdwd2jbw5z1kn1c6gx3cn2y9jvxxpjfcv5yb5fp";
        };
      };
    };
    "hoa/protocol" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "hoa-protocol-5c2cf972151c45f373230da170ea015deecf19e2";
        src = fetchurl {
          url = https://api.github.com/repos/hoaproject/Protocol/zipball/5c2cf972151c45f373230da170ea015deecf19e2;
          sha256 = "1w29dclrdyg3bkqcxpp1sccmbx0aakh2y6l5m1lw1s3245k029d4";
        };
      };
    };
    "hoa/regex" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "hoa-regex-7e263a61b6fb45c1d03d8e5ef77668518abd5bec";
        src = fetchurl {
          url = https://api.github.com/repos/hoaproject/Regex/zipball/7e263a61b6fb45c1d03d8e5ef77668518abd5bec;
          sha256 = "0h1wrgsbk7lpiwrqz1yim5znn168k6z6ywbwfacyaxnwzxzvg126";
        };
      };
    };
    "hoa/stream" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "hoa-stream-3293cfffca2de10525df51436adf88a559151d82";
        src = fetchurl {
          url = https://api.github.com/repos/hoaproject/Stream/zipball/3293cfffca2de10525df51436adf88a559151d82;
          sha256 = "1bjdzf3q3hqahlc4ckxal3izbrf32hf0mdfrisr72lyz3wk462my";
        };
      };
    };
    "hoa/ustring" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "hoa-ustring-e6326e2739178799b1fe3fdd92029f9517fa17a0";
        src = fetchurl {
          url = https://api.github.com/repos/hoaproject/Ustring/zipball/e6326e2739178799b1fe3fdd92029f9517fa17a0;
          sha256 = "166dd103j8m7xna0m6ddsa03frayvkmlmg8wkq9ksh2yn642zhb3";
        };
      };
    };
    "hoa/visitor" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "hoa-visitor-c18fe1cbac98ae449e0d56e87469103ba08f224a";
        src = fetchurl {
          url = https://api.github.com/repos/hoaproject/Visitor/zipball/c18fe1cbac98ae449e0d56e87469103ba08f224a;
          sha256 = "083ypy5f5zxvf9nc49h46chihympxrpng8sjxh7mkmp4y6cvyj9l";
        };
      };
    };
    "hoa/zformat" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "hoa-zformat-522c381a2a075d4b9dbb42eb4592dd09520e4ac2";
        src = fetchurl {
          url = https://api.github.com/repos/hoaproject/Zformat/zipball/522c381a2a075d4b9dbb42eb4592dd09520e4ac2;
          sha256 = "0fcn5gi0yma7pw6q8xq0i9a76afh9cbqd69qac5881qh85dyb9dz";
        };
      };
    };
    "jms/metadata" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jms-metadata-8d8958103485c2cbdd9a9684c3869312ebdaf73a";
        src = fetchurl {
          url = https://api.github.com/repos/schmittjoh/metadata/zipball/8d8958103485c2cbdd9a9684c3869312ebdaf73a;
          sha256 = "094ibw4ghzisv8zsmsh0zzh2xkkkap2rcwrci5znyh5nb32yqjhp";
        };
      };
    };
    "jms/serializer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jms-serializer-4c1e4296734385af7718ca71ec0febb4815b4a87";
        src = fetchurl {
          url = https://api.github.com/repos/schmittjoh/serializer/zipball/4c1e4296734385af7718ca71ec0febb4815b4a87;
          sha256 = "00dk9caig2v0knvqkf5k495zrhpi5ryv6rk4phkxdh2lcsmrvl0q";
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
        name = "monolog-monolog-70e65a5470a42cfec1a7da00d30edb6e617e8dcf";
        src = fetchurl {
          url = https://api.github.com/repos/Seldaek/monolog/zipball/70e65a5470a42cfec1a7da00d30edb6e617e8dcf;
          sha256 = "0rqqqcjzy1wn7565vnj2a9v28m459hxdjadgs48nmlbmvs5w88gz";
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
        name = "psr-log-6c001f1daafa3a3ac1d8ff69ee4db8e799a654dd";
        src = fetchurl {
          url = https://api.github.com/repos/php-fig/log/zipball/6c001f1daafa3a3ac1d8ff69ee4db8e799a654dd;
          sha256 = "1i351p3gd1pgjcjxv7mwwkiw79f1xiqr38irq22156h05zlcx80d";
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
    "seld/jsonlint" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "seld-jsonlint-d15f59a67ff805a44c50ea0516d2341740f81a38";
        src = fetchurl {
          url = https://api.github.com/repos/Seldaek/jsonlint/zipball/d15f59a67ff805a44c50ea0516d2341740f81a38;
          sha256 = "1yd37g3c9gjk6d0qpd12xrlgd9mfvndv69h41n6fasvr1ags4ya1";
        };
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
        name = "symfony-polyfill-ctype-550ebaac289296ce228a706d0867afc34687e3f4";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-ctype/zipball/550ebaac289296ce228a706d0867afc34687e3f4;
          sha256 = "06bfnlp5qwi2544ldmc800aggk0r3v4pwrbfiy8jcn0i3vqqx78a";
        };
      };
    };
    "symfony/polyfill-mbstring" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-mbstring-b42a2f66e8f1b15ccf25652c3424265923eb4f17";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-mbstring/zipball/b42a2f66e8f1b15ccf25652c3424265923eb4f17;
          sha256 = "021q6zj07rb2qaia6rvdpbs432313dh4zfq13hmkmpr32wsnv1v8";
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
    "twig/twig" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "twig-twig-201baee843e0ffe8b0b956f336dd42b2a92fae4e";
        src = fetchurl {
          url = https://api.github.com/repos/twigphp/Twig/zipball/201baee843e0ffe8b0b956f336dd42b2a92fae4e;
          sha256 = "176k7bzxg7vlyka1hwi25v8s2gdq3lk0kjiwr5n16zkaq509s9wz";
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
        name = "zendframework-zend-i18n-e17a54b3aee333ab156958f570cde630acee8b07";
        src = fetchurl {
          url = https://api.github.com/repos/zendframework/zend-i18n/zipball/e17a54b3aee333ab156958f570cde630acee8b07;
          sha256 = "0f1zfac33ddyxsn9vzr5rsyih8xhny9qpdvc0qc1kvjl3whjaqs2";
        };
      };
    };
    "zendframework/zend-json" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zendframework-zend-json-21c6027f3c4a5177cbef8ed08d1037b17188a0d8";
        src = fetchurl {
          url = https://api.github.com/repos/zendframework/zend-json/zipball/21c6027f3c4a5177cbef8ed08d1037b17188a0d8;
          sha256 = "1v7ih9q20cbpnaxw7k7sci52hfhzr583lj57jinmvilhydkbv4wb";
        };
      };
    };
    "zendframework/zend-serializer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zendframework-zend-serializer-0172690db48d8935edaf625c4cba38b79719892c";
        src = fetchurl {
          url = https://api.github.com/repos/zendframework/zend-serializer/zipball/0172690db48d8935edaf625c4cba38b79719892c;
          sha256 = "1v32lvzby6sv6mcy2fdvl89g71hd4lq7y1hmgm55vlw741l754x0";
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