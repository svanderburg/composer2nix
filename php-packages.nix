{composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false}:

let
  packages = {
    "svanderburg/pndp" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "svanderburg-pndp-4bfe9c4120c23354ab8dc295957dc3009a39bff0";
        src = fetchurl {
          url = "https://api.github.com/repos/svanderburg/pndp/zipball/4bfe9c4120c23354ab8dc295957dc3009a39bff0";
          sha256 = "0n2vwpwshv16bhb7a6j95m664zh4lpfa7dqmcyhmn89nxpgvg91y";
        };
      };
    };
  };
  devPackages = {
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
