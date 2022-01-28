{composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false}:

let
  packages = {
    "composer/package-versions-deprecated" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-package-versions-deprecated-b4f54f74ef3453349c24a845d22392cd31e65f1d";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/package-versions-deprecated/zipball/b4f54f74ef3453349c24a845d22392cd31e65f1d";
          sha256 = "1hrjxvk8i14pw9gi7j3qc0gljjy74hwdkv8zwsrg5brgyzhqfwam";
        };
      };
    };
    "doctrine/event-manager" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-event-manager-41370af6a30faa9dc0368c4a6814d596e81aba7f";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/event-manager/zipball/41370af6a30faa9dc0368c4a6814d596e81aba7f";
          sha256 = "0pn2aiwl4fvv6fcwar9alng2yrqy8bzc58n4bkp6y2jnpw5gp4m8";
        };
      };
    };
    "doctrine/instantiator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-instantiator-d56bf6102915de5702778fe20f2de3b2fe570b5b";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/instantiator/zipball/d56bf6102915de5702778fe20f2de3b2fe570b5b";
          sha256 = "04rihgfjv8alvvb92bnb5qpz8fvqvjwfrawcjw34pfnfx4jflcwh";
        };
      };
    };
    "friendsofphp/proxy-manager-lts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "friendsofphp-proxy-manager-lts-006aa5d32f887a4db4353b13b5b5095613e0611f";
        src = fetchurl {
          url = "https://api.github.com/repos/FriendsOfPHP/proxy-manager-lts/zipball/006aa5d32f887a4db4353b13b5b5095613e0611f";
          sha256 = "16ps9z9ah55i7xcrgqiqxvsymx9cqvknsf87pnaszxbzl4fbkj2b";
        };
      };
    };
    "jawira/plantuml" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jawira-plantuml-fed36fefbc3fc995c62e588c487dea9d9b4ef40b";
        src = fetchurl {
          url = "https://api.github.com/repos/jawira/plantuml/zipball/fed36fefbc3fc995c62e588c487dea9d9b4ef40b";
          sha256 = "0bcg59inh55fkgf896kr1a8zbxrr77wr9842asp01ii2yzlhr4hi";
        };
      };
    };
    "jean85/pretty-package-versions" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jean85-pretty-package-versions-1e0104b46f045868f11942aea058cd7186d6c303";
        src = fetchurl {
          url = "https://api.github.com/repos/Jean85/pretty-package-versions/zipball/1e0104b46f045868f11942aea058cd7186d6c303";
          sha256 = "199zry0499agl5vjz7hfkbx404d37zya3arh8jz78a2p121s3g1d";
        };
      };
    };
    "laminas/laminas-code" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laminas-laminas-code-6fd96d4d913571a2cd056a27b123fa28cb90ac4e";
        src = fetchurl {
          url = "https://api.github.com/repos/laminas/laminas-code/zipball/6fd96d4d913571a2cd056a27b123fa28cb90ac4e";
          sha256 = "1n0i50j2kbph55xfyci7kz78dihspw7b78yv8b4bpdxyrm563mc0";
        };
      };
    };
    "league/commonmark" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-commonmark-2b8185c13bc9578367a5bf901881d1c1b5bbd09b";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/commonmark/zipball/2b8185c13bc9578367a5bf901881d1c1b5bbd09b";
          sha256 = "14hp7vmqag9jh89rcq1mi3hyw01rkmypdbw2p3zsnjq2p8wwh4r5";
        };
      };
    };
    "league/flysystem" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-flysystem-094defdb4a7001845300334e7c1ee2335925ef99";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/flysystem/zipball/094defdb4a7001845300334e7c1ee2335925ef99";
          sha256 = "0dn71b1pwikbwz1cmmz9k1fc8k1fsmah3gy8sqxbz7czhqn5qiva";
        };
      };
    };
    "league/mime-type-detection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-mime-type-detection-aa70e813a6ad3d1558fc927863d47309b4c23e69";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/mime-type-detection/zipball/aa70e813a6ad3d1558fc927863d47309b4c23e69";
          sha256 = "0k2kccf1v0002bb083p1ncmm8fbyflnkjx45808sxlkrxggzqcy3";
        };
      };
    };
    "league/pipeline" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-pipeline-aa14b0e3133121f8be39e9a3b6ddd011fc5bb9a8";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/pipeline/zipball/aa14b0e3133121f8be39e9a3b6ddd011fc5bb9a8";
          sha256 = "195bq1g3jy79a60gpbzi4jhhai09zwy3l6wda11xzpv56y667gwv";
        };
      };
    };
    "league/tactician" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-tactician-e79f763170f3d5922ec29e85cffca0bac5cd8975";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/tactician/zipball/e79f763170f3d5922ec29e85cffca0bac5cd8975";
          sha256 = "0qpli5my3b5ajbyby5jgxdywj24568fpjb1azb92hacyf9i7wzh7";
        };
      };
    };
    "league/tactician-bundle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-tactician-bundle-069c665b47530ada5a8442ba9dbbe1ff6704a1b7";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/tactician-bundle/zipball/069c665b47530ada5a8442ba9dbbe1ff6704a1b7";
          sha256 = "1gb4m30cqvwq3fvnw9hdmhayyg8z3cvvl3jv6nryjshc92wbklhp";
        };
      };
    };
    "league/tactician-container" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-tactician-container-d1a5d884e072b8cafbff802d07766076eb2ffcb0";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/tactician-container/zipball/d1a5d884e072b8cafbff802d07766076eb2ffcb0";
          sha256 = "1y5nhqwz3lcb711ljfxmf0144dg432vhrasa99k8jzzs5csr2zba";
        };
      };
    };
    "league/tactician-logger" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-tactician-logger-c2d0977445d18d7e3d85adccef7dc14948707ea9";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/tactician-logger/zipball/c2d0977445d18d7e3d85adccef7dc14948707ea9";
          sha256 = "02c41cppk98kk4cp4bv67afwjd337j4sci00bihf4mw1v7c5p3lg";
        };
      };
    };
    "league/uri" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-uri-c68ca445abb04817d740ddd6d0b3551826ef0c5a";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/uri/zipball/c68ca445abb04817d740ddd6d0b3551826ef0c5a";
          sha256 = "0sk98yk5q1qj97hsglgfsg7chbnf5hi1nhd5m09704z4b8jrcy6p";
        };
      };
    };
    "league/uri-interfaces" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-uri-interfaces-00e7e2943f76d8cb50c7dfdc2f6dee356e15e383";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/uri-interfaces/zipball/00e7e2943f76d8cb50c7dfdc2f6dee356e15e383";
          sha256 = "01jllf6n9fs4yjcf6sjc4ivqp7k7dkqhbpz354bq9mr14njsjv6x";
        };
      };
    };
    "monolog/monolog" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "monolog-monolog-fd4380d6fc37626e2f799f29d91195040137eba9";
        src = fetchurl {
          url = "https://api.github.com/repos/Seldaek/monolog/zipball/fd4380d6fc37626e2f799f29d91195040137eba9";
          sha256 = "1k56si01sjl93mxq1pk599yqqqhldqz34qi73y5jaga0m9iq07wk";
        };
      };
    };
    "myclabs/deep-copy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "myclabs-deep-copy-776f831124e9c62e1a2c601ecc52e776d8bb7220";
        src = fetchurl {
          url = "https://api.github.com/repos/myclabs/DeepCopy/zipball/776f831124e9c62e1a2c601ecc52e776d8bb7220";
          sha256 = "181f3fsxs6s2wyy4y7qfk08qmlbvz1wn3mn3lqy42grsb8g8ym0k";
        };
      };
    };
    "nikic/php-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nikic-php-parser-210577fe3cf7badcc5814d99455df46564f3c077";
        src = fetchurl {
          url = "https://api.github.com/repos/nikic/PHP-Parser/zipball/210577fe3cf7badcc5814d99455df46564f3c077";
          sha256 = "191ijb7bybqnl1jayx6bipqh91dc9acg9zsbh89fk4h1ff87b1qp";
        };
      };
    };
    "phar-io/manifest" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-manifest-97803eca37d319dfa7826cc2437fc020857acb53";
        src = fetchurl {
          url = "https://api.github.com/repos/phar-io/manifest/zipball/97803eca37d319dfa7826cc2437fc020857acb53";
          sha256 = "107dsj04ckswywc84dvw42kdrqd4y6yvb2qwacigyrn05p075c1w";
        };
      };
    };
    "phar-io/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-version-bae7c545bef187884426f042434e561ab1ddb182";
        src = fetchurl {
          url = "https://api.github.com/repos/phar-io/version/zipball/bae7c545bef187884426f042434e561ab1ddb182";
          sha256 = "0hqmrihb4wv53rl3fg93wjldwrz79jyad5bv29ynbdklsirh7b2l";
        };
      };
    };
    "phpdocumentor/flyfinder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-flyfinder-6e145e676d9fbade7527fd8d4c99ab36b687b958";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/FlyFinder/zipball/6e145e676d9fbade7527fd8d4c99ab36b687b958";
          sha256 = "1an001afm8cn34wwn1sfxxjyhvmnw02vkmbyn16yawghj1x1d7zl";
        };
      };
    };
    "phpdocumentor/graphviz" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-graphviz-115999dc7f31f2392645aa825a94a6b165e1cedf";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/GraphViz/zipball/115999dc7f31f2392645aa825a94a6b165e1cedf";
          sha256 = "1kyxy9xabc1ys8pps16sj8hv5k18nlcyrl1nwlyw6d9r8dp34vbb";
        };
      };
    };
    "phpdocumentor/phpdocumentor" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-phpdocumentor-405da431bdc7ca02512cb6aa15f4ed43ffca8175";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/phpDocumentor/zipball/405da431bdc7ca02512cb6aa15f4ed43ffca8175";
          sha256 = "0qpnj8gf3ks551m1jmxkh9azp6iyp74kn9frx6q50cqmr293kwpi";
        };
      };
    };
    "phpdocumentor/reflection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-447928a45710d6313e68774cf12b5f730b909baa";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/Reflection/zipball/447928a45710d6313e68774cf12b5f730b909baa";
          sha256 = "027fcbazi54l363nn4vin6mhx1n0bd8kmljcq4dz1pslzlffwrm1";
        };
      };
    };
    "phpdocumentor/reflection-common" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-common-1d01c49d4ed62f25aa84a747ad35d5a16924662b";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/ReflectionCommon/zipball/1d01c49d4ed62f25aa84a747ad35d5a16924662b";
          sha256 = "1wx720a17i24471jf8z499dnkijzb4b8xra11kvw9g9hhzfadz1r";
        };
      };
    };
    "phpdocumentor/reflection-docblock" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-docblock-622548b623e81ca6d78b721c5e029f4ce664f170";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/ReflectionDocBlock/zipball/622548b623e81ca6d78b721c5e029f4ce664f170";
          sha256 = "1vs0fhpqk8s9bc0sqyfhpbs63q14lfjg1f0c1dw4jz97145j6r1n";
        };
      };
    };
    "phpdocumentor/type-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-type-resolver-93ebd0014cab80c4ea9f5e297ea48672f1b87706";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/TypeResolver/zipball/93ebd0014cab80c4ea9f5e297ea48672f1b87706";
          sha256 = "0b76kr2bp9pmkilr334zv7y5ml8z2vfhhfqcpr9y2kn97hirfn35";
        };
      };
    };
    "phpspec/prophecy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpspec-prophecy-bbcd7380b0ebf3961ee21409db7b38bc31d69a13";
        src = fetchurl {
          url = "https://api.github.com/repos/phpspec/prophecy/zipball/bbcd7380b0ebf3961ee21409db7b38bc31d69a13";
          sha256 = "1xw7x12lws8qdrryhbgjiih48gxwlq99ayhhsy0q2ls9i9p6mw0w";
        };
      };
    };
    "phpunit/php-code-coverage" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-code-coverage-d5850aaf931743067f4bfc1ae4cbd06468400687";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-code-coverage/zipball/d5850aaf931743067f4bfc1ae4cbd06468400687";
          sha256 = "0amms22y1ca77is9vkzyd3n8glrs7bgp0srsr3wg5f8jwwapn8cn";
        };
      };
    };
    "phpunit/php-file-iterator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-file-iterator-cf1c2e7c203ac650e352f4cc675a7021e7d1b3cf";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-file-iterator/zipball/cf1c2e7c203ac650e352f4cc675a7021e7d1b3cf";
          sha256 = "1407d8f1h35w4sdikq2n6cz726css2xjvlyr1m4l9a53544zxcnr";
        };
      };
    };
    "phpunit/php-invoker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-invoker-5a10147d0aaf65b58940a0b72f71c9ac0423cc67";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-invoker/zipball/5a10147d0aaf65b58940a0b72f71c9ac0423cc67";
          sha256 = "1vqnnjnw94mzm30n9n5p2bfgd3wd5jah92q6cj3gz1nf0qigr4fh";
        };
      };
    };
    "phpunit/php-text-template" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-text-template-5da5f67fc95621df9ff4c4e5a84d6a8a2acf7c28";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-text-template/zipball/5da5f67fc95621df9ff4c4e5a84d6a8a2acf7c28";
          sha256 = "0ff87yzywizi6j2ps3w0nalpx16mfyw3imzn6gj9jjsfwc2bb8lq";
        };
      };
    };
    "phpunit/php-timer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-timer-5a63ce20ed1b5bf577850e2c4e87f4aa902afbd2";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-timer/zipball/5a63ce20ed1b5bf577850e2c4e87f4aa902afbd2";
          sha256 = "0g1g7yy4zk1bidyh165fsbqx5y8f1c8pxikvcahzlfsr9p2qxk6a";
        };
      };
    };
    "phpunit/phpunit" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-phpunit-597cb647654ede35e43b137926dfdfef0fb11743";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/phpunit/zipball/597cb647654ede35e43b137926dfdfef0fb11743";
          sha256 = "106d9hbnb1jzr8cbh5wjwyz0ykyr2lch04ahh32k7cgz5glwa74z";
        };
      };
    };
    "psr/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-cache-d11b50ad223250cf17b86e38383413f5a6764bf8";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/cache/zipball/d11b50ad223250cf17b86e38383413f5a6764bf8";
          sha256 = "06i2k3dx3b4lgn9a4v1dlgv8l9wcl4kl7vzhh63lbji0q96hv8qz";
        };
      };
    };
    "psr/container" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-container-513e0666f7216c7459170d56df27dfcefe1689ea";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/container/zipball/513e0666f7216c7459170d56df27dfcefe1689ea";
          sha256 = "00yvj3b5ls2l1d0sk38g065raw837rw65dx1sicggjnkr85vmfzz";
        };
      };
    };
    "psr/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-event-dispatcher-dbefd12671e8a14ec7f180cab83036ed26714bb0";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/event-dispatcher/zipball/dbefd12671e8a14ec7f180cab83036ed26714bb0";
          sha256 = "05nicsd9lwl467bsv4sn44fjnnvqvzj1xqw2mmz9bac9zm66fsjd";
        };
      };
    };
    "psr/http-message" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-http-message-f6561bf28d520154e4b0ec72be95418abe6d9363";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/http-message/zipball/f6561bf28d520154e4b0ec72be95418abe6d9363";
          sha256 = "195dd67hva9bmr52iadr4kyp2gw2f5l51lplfiay2pv6l9y4cf45";
        };
      };
    };
    "psr/log" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-log-d49695b909c3b7628b6289db5479a1c204601f11";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/log/zipball/d49695b909c3b7628b6289db5479a1c204601f11";
          sha256 = "0sb0mq30dvmzdgsnqvw3xh4fb4bqjncx72kf8n622f94dd48amln";
        };
      };
    };
    "scrivo/highlight.php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "scrivo-highlight.php-d45585504777e6194a91dffc7270ca39833787f8";
        src = fetchurl {
          url = "https://api.github.com/repos/scrivo/highlight.php/zipball/d45585504777e6194a91dffc7270ca39833787f8";
          sha256 = "1j68nhfxy44jnclalv8bfgd2hx3yhcas1av75l8avyyb6wf62160";
        };
      };
    };
    "sebastian/cli-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-cli-parser-442e7c7e687e42adc03470c7b668bc4b2402c0b2";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/cli-parser/zipball/442e7c7e687e42adc03470c7b668bc4b2402c0b2";
          sha256 = "074qzdq19k9x4svhq3nak5h348xska56v1sqnhk1aj0jnrx02h37";
        };
      };
    };
    "sebastian/code-unit" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-code-unit-1fc9f64c0927627ef78ba436c9b17d967e68e120";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/code-unit/zipball/1fc9f64c0927627ef78ba436c9b17d967e68e120";
          sha256 = "04vlx050rrd54mxal7d93pz4119pas17w3gg5h532anfxjw8j7pm";
        };
      };
    };
    "sebastian/code-unit-reverse-lookup" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-code-unit-reverse-lookup-ac91f01ccec49fb77bdc6fd1e548bc70f7faa3e5";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/code-unit-reverse-lookup/zipball/ac91f01ccec49fb77bdc6fd1e548bc70f7faa3e5";
          sha256 = "1h1jbzz3zak19qi4mab2yd0ddblpz7p000jfyxfwd2ds0gmrnsja";
        };
      };
    };
    "sebastian/comparator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-comparator-55f4261989e546dc112258c7a75935a81a7ce382";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/comparator/zipball/55f4261989e546dc112258c7a75935a81a7ce382";
          sha256 = "1d4bgf4m2x0kn3nw9hbb45asbx22lsp9vxl74rp1yl3sj2vk9sch";
        };
      };
    };
    "sebastian/complexity" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-complexity-739b35e53379900cc9ac327b2147867b8b6efd88";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/complexity/zipball/739b35e53379900cc9ac327b2147867b8b6efd88";
          sha256 = "1y4yz8n8hszbhinf9ipx3pqyvgm7gz0krgyn19z0097yq3bbq8yf";
        };
      };
    };
    "sebastian/diff" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-diff-3461e3fccc7cfdfc2720be910d3bd73c69be590d";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/diff/zipball/3461e3fccc7cfdfc2720be910d3bd73c69be590d";
          sha256 = "0967nl6cdnr0v0z83w4xy59agn60kfv8gb41aw3fpy1n2wpp62dj";
        };
      };
    };
    "sebastian/environment" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-environment-388b6ced16caa751030f6a69e588299fa09200ac";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/environment/zipball/388b6ced16caa751030f6a69e588299fa09200ac";
          sha256 = "022vn8zss3sm7hg83kg3y0lmjw2ak6cy64b584nbsgxfhlmf6msd";
        };
      };
    };
    "sebastian/exporter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-exporter-65e8b7db476c5dd267e65eea9cab77584d3cfff9";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/exporter/zipball/65e8b7db476c5dd267e65eea9cab77584d3cfff9";
          sha256 = "071813jw7nlsa3fs1hlrkl5fsjz4sidyq0i26p22m43isvvyad0q";
        };
      };
    };
    "sebastian/global-state" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-global-state-23bd5951f7ff26f12d4e3242864df3e08dec4e49";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/global-state/zipball/23bd5951f7ff26f12d4e3242864df3e08dec4e49";
          sha256 = "0hrh5knc2g5i288kh9lkwmr6hb7yav5m8i21piz8pfh7kc75czjw";
        };
      };
    };
    "sebastian/lines-of-code" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-lines-of-code-c1c2e997aa3146983ed888ad08b15470a2e22ecc";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/lines-of-code/zipball/c1c2e997aa3146983ed888ad08b15470a2e22ecc";
          sha256 = "0fay9s5cm16gbwr7qjihwrzxn7sikiwba0gvda16xng903argbk0";
        };
      };
    };
    "sebastian/object-enumerator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-object-enumerator-5c9eeac41b290a3712d88851518825ad78f45c71";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/object-enumerator/zipball/5c9eeac41b290a3712d88851518825ad78f45c71";
          sha256 = "11853z07w8h1a67wsjy3a6ir5x7khgx6iw5bmrkhjkiyvandqcn1";
        };
      };
    };
    "sebastian/object-reflector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-object-reflector-b4f479ebdbf63ac605d183ece17d8d7fe49c15c7";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/object-reflector/zipball/b4f479ebdbf63ac605d183ece17d8d7fe49c15c7";
          sha256 = "0g5m1fswy6wlf300x1vcipjdljmd3vh05hjqhqfc91byrjbk4rsg";
        };
      };
    };
    "sebastian/recursion-context" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-recursion-context-cd9d8cf3c5804de4341c283ed787f099f5506172";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/recursion-context/zipball/cd9d8cf3c5804de4341c283ed787f099f5506172";
          sha256 = "1k0ki1krwq6329vsbw3515wsyg8a7n2l83lk19pdc12i2lg9nhpy";
        };
      };
    };
    "sebastian/resource-operations" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-resource-operations-0f4443cb3a1d92ce809899753bc0d5d5a8dd19a8";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/resource-operations/zipball/0f4443cb3a1d92ce809899753bc0d5d5a8dd19a8";
          sha256 = "0p5s8rp7mrhw20yz5wx1i4k8ywf0h0ximcqan39n9qnma1dlnbyr";
        };
      };
    };
    "sebastian/type" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-type-b8cd8a1c753c90bc1a0f5372170e3e489136f914";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/type/zipball/b8cd8a1c753c90bc1a0f5372170e3e489136f914";
          sha256 = "05d36w28nr2i14nghzd279gvwwpcavcznb2h5bp2iy3rhaa14yjy";
        };
      };
    };
    "sebastian/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-version-c6c1022351a901512170118436c764e473f6de8c";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/version/zipball/c6c1022351a901512170118436c764e473f6de8c";
          sha256 = "1bs7bwa9m0fin1zdk7vqy5lxzlfa9la90lkl27sn0wr00m745ig1";
        };
      };
    };
    "svanderburg/php-sbbiblio" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "svanderburg-php-sbbiblio-45ad2238bef9b46ed839f5c17ca96fe9e05e8d1f";
        src = fetchurl {
          url = "https://api.github.com/repos/svanderburg/php-sbbiblio/zipball/45ad2238bef9b46ed839f5c17ca96fe9e05e8d1f";
          sha256 = "1zjafqqhgl3s1mx99k99iiah78xf89rlzmfp9amxdr8bsm8qafda";
        };
      };
    };
    "svanderburg/php-sblayout" = {
      targetDir = "";
      src = fetchgit {
        name = "svanderburg-php-sblayout-83d6d110494cdceb13da48a1acfa0ae989ba9ecd";
        url = "https://github.com/svanderburg/php-sblayout.git";
        rev = "83d6d110494cdceb13da48a1acfa0ae989ba9ecd";
        sha256 = null;
      };
    };
    "symfony/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-cache-4178f0a19ec3f1f76e7f1a07b8187cbe3d94b825";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/cache/zipball/4178f0a19ec3f1f76e7f1a07b8187cbe3d94b825";
          sha256 = "07az5ckjbwlvdrm0ry77ic4gacqqy7wqknzns7df9zg5v9lrzg5p";
        };
      };
    };
    "symfony/config" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-config-d65e1bd990c740e31feb07d2b0927b8d4df9956f";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/config/zipball/d65e1bd990c740e31feb07d2b0927b8d4df9956f";
          sha256 = "0pby1y6plqijz254fsb8nicgk5qxid5illdzs5r4hmbs0y9dkgj2";
        };
      };
    };
    "symfony/console" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-console-a2a86ec353d825c75856c6fd14fac416a7bdb6b8";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/console/zipball/a2a86ec353d825c75856c6fd14fac416a7bdb6b8";
          sha256 = "1dj3fsgw1bxj0igrs973734sdj4270q9rvbvjq5x1bad399fj004";
        };
      };
    };
    "symfony/contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-contracts-1f4c95d47bddf0c1579779d4b85602c923ed2f1c";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/contracts/zipball/1f4c95d47bddf0c1579779d4b85602c923ed2f1c";
          sha256 = "1smwc5qzyfc8nygg34jqrs8990mf7r49wnbbkp9frf4yfz7q51b4";
        };
      };
    };
    "symfony/dependency-injection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-dependency-injection-974580fd67f14d65b045c11b09eb149cd4b13df5";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/dependency-injection/zipball/974580fd67f14d65b045c11b09eb149cd4b13df5";
          sha256 = "0p9g38qaw5b75b83iijcx79mwnryd27rkcb1zms5yd1xq6kfmm96";
        };
      };
    };
    "symfony/dom-crawler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-dom-crawler-5d89ceb53ec65e1973a555072fac8ed5ecad3384";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/dom-crawler/zipball/5d89ceb53ec65e1973a555072fac8ed5ecad3384";
          sha256 = "0qkym314bp4iiliafkqxg0b585jf8ssddmrb30s2n6dfrlim4lfd";
        };
      };
    };
    "symfony/dotenv" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-dotenv-84d1af2d39dd81b48eb1cd3af3f107eea7a275bb";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/dotenv/zipball/84d1af2d39dd81b48eb1cd3af3f107eea7a275bb";
          sha256 = "0si0i9z160kzjjyspb358vvyb1a60jy65nmbbnsa8i0a4pjzw8a9";
        };
      };
    };
    "symfony/error-handler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-error-handler-20343b3bad7ebafa38138ddcb97290a24722b57b";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/error-handler/zipball/20343b3bad7ebafa38138ddcb97290a24722b57b";
          sha256 = "1vbc5057hb1cfiv4ln7zf5rsyjadr0s93pryrylzryyjjs6552qc";
        };
      };
    };
    "symfony/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-dec8a9f58d20df252b9cd89f1c6c1530f747685d";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/event-dispatcher/zipball/dec8a9f58d20df252b9cd89f1c6c1530f747685d";
          sha256 = "0mf1h2v8xgfn8k55y9yhwr9pb9jia4va5a91xfchyvfyzd5x4sm4";
        };
      };
    };
    "symfony/expression-language" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-expression-language-c68c6d1a308f6e2a1382bdb3a317959e1ee9aa08";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/expression-language/zipball/c68c6d1a308f6e2a1382bdb3a317959e1ee9aa08";
          sha256 = "1zrww98zkfa06s177vwm5i8f69rvi8jrnsc0blrbja29p00gvmig";
        };
      };
    };
    "symfony/filesystem" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-filesystem-0f0c4bf1840420f4aef3f32044a9dbb24682731b";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/filesystem/zipball/0f0c4bf1840420f4aef3f32044a9dbb24682731b";
          sha256 = "0cjk7blwffz3p3l5lxaldijv385bi89kcwcgyf798fx1k0niib5n";
        };
      };
    };
    "symfony/finder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-finder-196f45723b5e618bf0e23b97e96d11652696ea9e";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/finder/zipball/196f45723b5e618bf0e23b97e96d11652696ea9e";
          sha256 = "0k9grl7mmxsz59bsaqjff598mdsrh35mf9bic13zx59rgl8c21v6";
        };
      };
    };
    "symfony/flex" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-flex-d40a6b176b70ea323af2b08507319d1c417520fd";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/flex/zipball/d40a6b176b70ea323af2b08507319d1c417520fd";
          sha256 = "17ib8sllgxsczfqgbvgkr332wsnpp7ijcixadrbpmnk1wa9q5acd";
        };
      };
    };
    "symfony/framework-bundle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-framework-bundle-11b0d3892fbb72582bc2c02d3edccaf2fc096b0b";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/framework-bundle/zipball/11b0d3892fbb72582bc2c02d3edccaf2fc096b0b";
          sha256 = "181rjv4czd2l1cy0941y2x1m3d4vgzk10ycpvahw9ba55l9impfn";
        };
      };
    };
    "symfony/http-foundation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-foundation-ef409ff341a565a3663157d4324536746d49a0c7";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/http-foundation/zipball/ef409ff341a565a3663157d4324536746d49a0c7";
          sha256 = "072qr7wa8820drypg2d0fh5bpf1r1gah7bh22wlp07aml32vyfxr";
        };
      };
    };
    "symfony/http-kernel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-kernel-936ca1ba7fb197c9e100a68d7e963b93d99db26e";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/http-kernel/zipball/936ca1ba7fb197c9e100a68d7e963b93d99db26e";
          sha256 = "1yln9difwi1qpc6gnj3y7bvhhdq6y8vi3ryyi678fp7iycxwaqa9";
        };
      };
    };
    "symfony/monolog-bridge" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-monolog-bridge-10d90ee25c6a76c12d4bbe8721e354c287e177da";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/monolog-bridge/zipball/10d90ee25c6a76c12d4bbe8721e354c287e177da";
          sha256 = "1y7mml7hbp83xqxksrkhl3p1p23gh89p3h4qr2q9p6g79w9zgwqn";
        };
      };
    };
    "symfony/monolog-bundle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-monolog-bundle-fde12fc628162787a4e53877abadc30047fd868b";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/monolog-bundle/zipball/fde12fc628162787a4e53877abadc30047fd868b";
          sha256 = "03203g4rzxn3dky6qxvqnmz8p840f48dwgfd49lvygrrgd0gy3hy";
        };
      };
    };
    "symfony/polyfill-ctype" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-ctype-30885182c981ab175d4d034db0f6f469898070ab";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-ctype/zipball/30885182c981ab175d4d034db0f6f469898070ab";
          sha256 = "0dfh24f8g048vbj88vx0lvw48nq5dsamy5kva72ab1h7vw9hvpwb";
        };
      };
    };
    "symfony/polyfill-intl-grapheme" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-grapheme-81b86b50cf841a64252b439e738e97f4a34e2783";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-grapheme/zipball/81b86b50cf841a64252b439e738e97f4a34e2783";
          sha256 = "1dxymfi577yridk6dn8v2z1hyrpaxr8sp4g6dxxy913ilf6igx7r";
        };
      };
    };
    "symfony/polyfill-intl-normalizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-normalizer-8590a5f561694770bdcd3f9b5c69dde6945028e8";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-normalizer/zipball/8590a5f561694770bdcd3f9b5c69dde6945028e8";
          sha256 = "1c60xin00q0d2gbyaiglxppn5hqwki616v5chzwyhlhf6aplwsh3";
        };
      };
    };
    "symfony/polyfill-mbstring" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-mbstring-0abb51d2f102e00a4eefcf46ba7fec406d245825";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-mbstring/zipball/0abb51d2f102e00a4eefcf46ba7fec406d245825";
          sha256 = "1z17f7465fn778ak68mzz5kg2ql1n6ghgqh3827n9mcipwbp4k58";
        };
      };
    };
    "symfony/polyfill-php73" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php73-cc5db0e22b3cb4111010e48785a97f670b350ca5";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php73/zipball/cc5db0e22b3cb4111010e48785a97f670b350ca5";
          sha256 = "04z6fah8rn5b01w78j0vqa0jys4mvji66z4ql6wk1r1bf6j0048y";
        };
      };
    };
    "symfony/polyfill-php80" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php80-57b712b08eddb97c762a8caa32c84e037892d2e9";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php80/zipball/57b712b08eddb97c762a8caa32c84e037892d2e9";
          sha256 = "0dpa53wj3l84f273cnphlps23k09789z8g1znd4h4c7ly6dlqx14";
        };
      };
    };
    "symfony/polyfill-php81" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php81-5de4ba2d41b15f9bd0e19b2ab9674135813ec98f";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php81/zipball/5de4ba2d41b15f9bd0e19b2ab9674135813ec98f";
          sha256 = "0igxnmib8vkjp9x81j66hl4pf8i0nj86k4hdh8gzcymq01si0mxm";
        };
      };
    };
    "symfony/process" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-process-d279ae7f2d6e0e4e45f66de7d76006246ae00e4d";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/process/zipball/d279ae7f2d6e0e4e45f66de7d76006246ae00e4d";
          sha256 = "1xv7i14sqx6cgz6y9cbrgswfxza73yy970l2600nsgy4j3753bvz";
        };
      };
    };
    "symfony/proxy-manager-bridge" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-proxy-manager-bridge-efb82e176cd47426193ad047635ba5181dae089f";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/proxy-manager-bridge/zipball/efb82e176cd47426193ad047635ba5181dae089f";
          sha256 = "15c00njfxxfyyzrga6skprzjgy2giqm590zaw56v91119n8nx946";
        };
      };
    };
    "symfony/routing" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-routing-44b29c7a94e867ccde1da604792f11a469958981";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/routing/zipball/44b29c7a94e867ccde1da604792f11a469958981";
          sha256 = "07gscjp3zm2jlahsgaf5yamg2wh8asbfwq0rf2mr85scidwr58wp";
        };
      };
    };
    "symfony/stopwatch" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-stopwatch-395220730edceb6bd745236ccb5c9125c748f779";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/stopwatch/zipball/395220730edceb6bd745236ccb5c9125c748f779";
          sha256 = "0vb0jxjzfpcnhhhivn49i3qanss7hak002pswsddl56ylkvw0cw7";
        };
      };
    };
    "symfony/string" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-string-83bbb92d34881744b8021452a76532b28283dbfb";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/string/zipball/83bbb92d34881744b8021452a76532b28283dbfb";
          sha256 = "107c923nwh5gf0bdfd50bcj8946zdibh0s6dcbnwfqfddycnzl4b";
        };
      };
    };
    "symfony/var-dumper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-var-dumper-7b701676fc64f9ef11f9b4870f16b48f66be4834";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/var-dumper/zipball/7b701676fc64f9ef11f9b4870f16b48f66be4834";
          sha256 = "14wrp57bgbmpw9jx4167wmxm3wd8dc0ff69r46hmcp0qbp00gb25";
        };
      };
    };
    "symfony/var-exporter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-var-exporter-1261b2d4a23081cb2b59a4caa311a5ac43b845b6";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/var-exporter/zipball/1261b2d4a23081cb2b59a4caa311a5ac43b845b6";
          sha256 = "1ls7cn65mnzqvr8v90ds2krz0qsgfldij205zj7mjpmdqssp38wn";
        };
      };
    };
    "symfony/yaml" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-yaml-e80f87d2c9495966768310fc531b487ce64237a2";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/yaml/zipball/e80f87d2c9495966768310fc531b487ce64237a2";
          sha256 = "05a6sahs8jk71c9f1rzy3lbfi9l1dxmyinaqhwp0qdni6m4f9kr9";
        };
      };
    };
    "theseer/tokenizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "theseer-tokenizer-34a41e998c2183e22995f158c581e7b5e755ab9e";
        src = fetchurl {
          url = "https://api.github.com/repos/theseer/tokenizer/zipball/34a41e998c2183e22995f158c581e7b5e755ab9e";
          sha256 = "1za4a017kjb4rw2ydglip4bp5q2y7mfiycj3fvnp145i84jc7n0q";
        };
      };
    };
    "twig/twig" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "twig-twig-95fb194cd4dd6ac373a27af2bde2bad5d3f27aba";
        src = fetchurl {
          url = "https://api.github.com/repos/twigphp/Twig/zipball/95fb194cd4dd6ac373a27af2bde2bad5d3f27aba";
          sha256 = "0bs99ch11jhhq5zzjg91b8544yi37r9b29vihbq6m590kwx3pjg2";
        };
      };
    };
    "webmozart/assert" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "webmozart-assert-6964c76c7804814a842473e0c8fd15bab0f18e25";
        src = fetchurl {
          url = "https://api.github.com/repos/webmozarts/assert/zipball/6964c76c7804814a842473e0c8fd15bab0f18e25";
          sha256 = "17xqhb2wkwr7cgbl4xdjf7g1vkal17y79rpp6xjpf1xgl5vypc64";
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
