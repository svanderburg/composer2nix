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
    "doctrine/lexer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-lexer-e864bbf5904cb8f5bb334f99209b48018522f042";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/lexer/zipball/e864bbf5904cb8f5bb334f99209b48018522f042";
          sha256 = "11lg9fcy0crb8inklajhx3kyffdbx7xzdj8kwl21xsgq9nm9iwvv";
        };
      };
    };
    "jawira/plantuml" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jawira-plantuml-03d849e1fcf6cd087c6aa963e6cec91aabb1e787";
        src = fetchurl {
          url = "https://api.github.com/repos/jawira/plantuml/zipball/03d849e1fcf6cd087c6aa963e6cec91aabb1e787";
          sha256 = "123p3z547smxvay98avvcvkgc1l42i57gnv83xgh2gqx690acza5";
        };
      };
    };
    "jean85/pretty-package-versions" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jean85-pretty-package-versions-ae547e455a3d8babd07b96966b17d7fd21d9c6af";
        src = fetchurl {
          url = "https://api.github.com/repos/Jean85/pretty-package-versions/zipball/ae547e455a3d8babd07b96966b17d7fd21d9c6af";
          sha256 = "07s7hl7705vgmyr5m7czja4426rsqrxqh8m362irn29vbc35k6q8";
        };
      };
    };
    "league/commonmark" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-commonmark-c4228d11e30d7493c6836d20872f9582d8ba6dcf";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/commonmark/zipball/c4228d11e30d7493c6836d20872f9582d8ba6dcf";
          sha256 = "0x18k1qmvskd5x1b3jkkmig6l734sxffj5xyfb82yrzgpw9lrld5";
        };
      };
    };
    "league/flysystem" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-flysystem-18634df356bfd4119fe3d6156bdb990c414c14ea";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/flysystem/zipball/18634df356bfd4119fe3d6156bdb990c414c14ea";
          sha256 = "1cy0xmnl3ck7cb6ibl9jjw5pmbw15mww5q06vacgq5lnx8r5w700";
        };
      };
    };
    "league/mime-type-detection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-mime-type-detection-b38b25d7b372e9fddb00335400467b223349fd7e";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/mime-type-detection/zipball/b38b25d7b372e9fddb00335400467b223349fd7e";
          sha256 = "02ywmarr58z5w9pf5qvk6hyrnykdh6v7n5jdkgb4ykdn2plinmlz";
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
        name = "league-tactician-bundle-89c51277423ac485b62580c38322426c3ec6ad47";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/tactician-bundle/zipball/89c51277423ac485b62580c38322426c3ec6ad47";
          sha256 = "0saqh5p4gsh617wdhvmrfi8rc9f5pqnyrvmwpsy7d8zr2i533wxf";
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
        name = "league-tactician-logger-3ff9ee04e4cbec100af827f829ed4c7ff7c08442";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/tactician-logger/zipball/3ff9ee04e4cbec100af827f829ed4c7ff7c08442";
          sha256 = "0q0cs84zcmzjbc98ba6n26m6ivzzlyd9dvz99ijjsc2z7spvakhx";
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
        name = "nikic-php-parser-50953a2691a922aa1769461637869a0a2faa3f53";
        src = fetchurl {
          url = "https://api.github.com/repos/nikic/PHP-Parser/zipball/50953a2691a922aa1769461637869a0a2faa3f53";
          sha256 = "1mkl7lbvyxs7z8lh4p3i0j296hvzslrvwbf9cjhb2qhncsxxqrz6";
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
        name = "phpdocumentor-graphviz-929e97b4ab6765fc4eb2f944b091a4a02807ee5d";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/GraphViz/zipball/929e97b4ab6765fc4eb2f944b091a4a02807ee5d";
          sha256 = "0a1ja7qjv7njhzmfin8wbx8iqshijk5lz6dmncr3f9fk8vpbg974";
        };
      };
    };
    "phpdocumentor/phpdocumentor" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-phpdocumentor-888fd76678506f9638e955218465bada0048e40a";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/phpDocumentor/zipball/888fd76678506f9638e955218465bada0048e40a";
          sha256 = "06gg7q5dlfa4617dgp7nzqn3gbla1l0ywyp1rwp02xdyc1nyvgyc";
        };
      };
    };
    "phpdocumentor/reflection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-140db6834feec47ebebc195463771c7377c73010";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/Reflection/zipball/140db6834feec47ebebc195463771c7377c73010";
          sha256 = "1bpj17h70rq30a4j028h0kydzkhhcad94wfh0y40hna6kh1sr4sd";
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
        name = "phpdocumentor-type-resolver-a12f7e301eb7258bb68acd89d4aefa05c2906cae";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/TypeResolver/zipball/a12f7e301eb7258bb68acd89d4aefa05c2906cae";
          sha256 = "1kziz1qkq15d4gbxqpv8s5sy1bfd11djsvyqn27dcqx6rx0b3pkm";
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
        name = "psr-container-8622567409010282b7aeebe4bb841fe98b58dcaf";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/container/zipball/8622567409010282b7aeebe4bb841fe98b58dcaf";
          sha256 = "0qfvyfp3mli776kb9zda5cpc8cazj3prk0bg0gm254kwxyfkfrwn";
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
    "symfony/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-cache-945bcebfef0aeef105de61843dd14105633ae38f";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/cache/zipball/945bcebfef0aeef105de61843dd14105633ae38f";
          sha256 = "0d0vd0p18fa7qac0zrxs7li1amn19bqzz87c76vfk6fl5rv43wkv";
        };
      };
    };
    "symfony/config" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-config-4268f3059c904c61636275182707f81645517a37";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/config/zipball/4268f3059c904c61636275182707f81645517a37";
          sha256 = "1izirgswwdmg6kp8akrijgc98221w97rwibrhiz89xlxx3990qyn";
        };
      };
    };
    "symfony/console" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-console-8b1008344647462ae6ec57559da166c2bfa5e16a";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/console/zipball/8b1008344647462ae6ec57559da166c2bfa5e16a";
          sha256 = "1gia4h03rs751qyik3g1k8r9g4n6xc6z60f4f9lh1j11bwyx4mcd";
        };
      };
    };
    "symfony/contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-contracts-8434102b404d119dcaf98c8fe19a2655573ac17a";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/contracts/zipball/8434102b404d119dcaf98c8fe19a2655573ac17a";
          sha256 = "08f4wxq7m5h0vp0h13r7w6bjzl0bqqf9is3hpnl4dsp3xk0i5bfv";
        };
      };
    };
    "symfony/dependency-injection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-dependency-injection-e39c344e06a3ceab531ebeb6c077e6652c4a0829";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/dependency-injection/zipball/e39c344e06a3ceab531ebeb6c077e6652c4a0829";
          sha256 = "0j6gcs4pyicw07sqbsx0f8jl4r9pg4llsxybla300phdd74cfl2a";
        };
      };
    };
    "symfony/dom-crawler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-dom-crawler-c983279c00f723eef8da2a4b1522296c82dc75da";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/dom-crawler/zipball/c983279c00f723eef8da2a4b1522296c82dc75da";
          sha256 = "0zhn8sagravp3wxiw15frdllhzfcbqmf9ji1wjrk093c0v5bfy2r";
        };
      };
    };
    "symfony/dotenv" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-dotenv-12888c9c46ac750ec5c1381db5bf3d534e7d70cb";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/dotenv/zipball/12888c9c46ac750ec5c1381db5bf3d534e7d70cb";
          sha256 = "1js1xhdfx3fgqbklihd44ygxyazz2kgpmc0hyapbpxp2pxj1f2d6";
        };
      };
    };
    "symfony/error-handler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-error-handler-3bc60d0fba00ae8d1eaa9eb5ab11a2bbdd1fc321";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/error-handler/zipball/3bc60d0fba00ae8d1eaa9eb5ab11a2bbdd1fc321";
          sha256 = "072jbhzinq43n3br8994hy2qsk1jwdqmb77p6ybql5rfww9gbkvn";
        };
      };
    };
    "symfony/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-ce7b20d69c66a20939d8952b617506a44d102130";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/event-dispatcher/zipball/ce7b20d69c66a20939d8952b617506a44d102130";
          sha256 = "0wx028n2r63sx3lq67ic6wjrw8c6dhnlsyjwgl7w9b9ab26yif9r";
        };
      };
    };
    "symfony/expression-language" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-expression-language-fe696e2669cb47507e5635223ac4b64500339658";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/expression-language/zipball/fe696e2669cb47507e5635223ac4b64500339658";
          sha256 = "1m8zq9y4byb40az2yn7rb53wdy6ryn63vj0w3sv5mcj4nkc2vgb4";
        };
      };
    };
    "symfony/filesystem" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-filesystem-343f4fe324383ca46792cae728a3b6e2f708fb32";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/filesystem/zipball/343f4fe324383ca46792cae728a3b6e2f708fb32";
          sha256 = "0a68w982cy4lqs1hz3y44n4dzsjbl1478x0dg5xmkbbszyiiwapp";
        };
      };
    };
    "symfony/finder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-finder-a10000ada1e600d109a6c7632e9ac42e8bf2fb93";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/finder/zipball/a10000ada1e600d109a6c7632e9ac42e8bf2fb93";
          sha256 = "0n1i1s9azz27kvys5q8syv6nv4anjj4ash8r5xxrzhqdvrcf8qhn";
        };
      };
    };
    "symfony/flex" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-flex-0170279814f86648c62aede39b100a343ea29962";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/flex/zipball/0170279814f86648c62aede39b100a343ea29962";
          sha256 = "06c0fh5i85l0djj1lndmwfm2hnai8smlz24c8clgjkmlpnb4rvm8";
        };
      };
    };
    "symfony/framework-bundle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-framework-bundle-ea6e30a8c9534d87187375ef4ee39d48ee40dd2d";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/framework-bundle/zipball/ea6e30a8c9534d87187375ef4ee39d48ee40dd2d";
          sha256 = "1dy3204admx2fn4hdl669jz8i4dv4c6dxygl3v5j7ji84jr5423b";
        };
      };
    };
    "symfony/http-foundation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-foundation-e36c8e5502b4f3f0190c675f1c1f1248a64f04e5";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/http-foundation/zipball/e36c8e5502b4f3f0190c675f1c1f1248a64f04e5";
          sha256 = "0h2v2kkk4svj5bf5hzinkw884f014ig23b32k79v6q0cag85xlmq";
        };
      };
    };
    "symfony/http-kernel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-kernel-ceaf46a992f60e90645e7279825a830f733a17c5";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/http-kernel/zipball/ceaf46a992f60e90645e7279825a830f733a17c5";
          sha256 = "1rn341h2jrmgky4g41g4vz56b6nbl6yp25pw9w55xnp1i3whi8rb";
        };
      };
    };
    "symfony/monolog-bridge" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-monolog-bridge-4ace41087254f099b6743333155071438bfb12c3";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/monolog-bridge/zipball/4ace41087254f099b6743333155071438bfb12c3";
          sha256 = "18kn7x1l3rn5h010sfiawn7afbmahvg7gwcfdn60xb5c4ym8lfvv";
        };
      };
    };
    "symfony/monolog-bundle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-monolog-bundle-4054b2e940a25195ae15f0a49ab0c51718922eb4";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/monolog-bundle/zipball/4054b2e940a25195ae15f0a49ab0c51718922eb4";
          sha256 = "08f95bgg6c7npa9b521cy20mlvvwl188xg9pq6znyp04j3r8n8kr";
        };
      };
    };
    "symfony/polyfill-ctype" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-ctype-46cd95797e9df938fdd2b03693b5fca5e64b01ce";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-ctype/zipball/46cd95797e9df938fdd2b03693b5fca5e64b01ce";
          sha256 = "0z4iiznxxs4r72xs4irqqb6c0wnwpwf0hklwn2imls67haq330zn";
        };
      };
    };
    "symfony/polyfill-intl-grapheme" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-grapheme-16880ba9c5ebe3642d1995ab866db29270b36535";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-grapheme/zipball/16880ba9c5ebe3642d1995ab866db29270b36535";
          sha256 = "0pb57756kvdxksqy2nndf8q7c91p2dzhysa52x2rbhba869760fv";
        };
      };
    };
    "symfony/polyfill-intl-idn" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-idn-65bd267525e82759e7d8c4e8ceea44f398838e65";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-idn/zipball/65bd267525e82759e7d8c4e8ceea44f398838e65";
          sha256 = "1cx2cjx0vzni297l7avd3cb1q4c8d2hylkvdqcjlpxjqdimn4jkn";
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
        name = "symfony-polyfill-mbstring-9174a3d80210dca8daa7f31fec659150bbeabfc6";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-mbstring/zipball/9174a3d80210dca8daa7f31fec659150bbeabfc6";
          sha256 = "17bhba3093di6xgi8f0cnf3cdd7fnbyp9l76d9y33cym6213ayx1";
        };
      };
    };
    "symfony/polyfill-php73" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php73-fba8933c384d6476ab14fb7b8526e5287ca7e010";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php73/zipball/fba8933c384d6476ab14fb7b8526e5287ca7e010";
          sha256 = "0fc1d60iw8iar2zcvkzwdvx0whkbw8p6ll0cry39nbkklzw85n1h";
        };
      };
    };
    "symfony/polyfill-php80" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php80-1100343ed1a92e3a38f9ae122fc0eb21602547be";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php80/zipball/1100343ed1a92e3a38f9ae122fc0eb21602547be";
          sha256 = "0kwk2qgwswsmbfp1qx31ahw3lisgyivwhw5dycshr5v2iwwx3rhi";
        };
      };
    };
    "symfony/polyfill-php81" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php81-e66119f3de95efc359483f810c4c3e6436279436";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php81/zipball/e66119f3de95efc359483f810c4c3e6436279436";
          sha256 = "0hg340da7m0yipj2bj5hxhd3mqidz767ivg7w85r8vwz3mr9k1p3";
        };
      };
    };
    "symfony/process" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-process-38f26c7d6ed535217ea393e05634cb0b244a1967";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/process/zipball/38f26c7d6ed535217ea393e05634cb0b244a1967";
          sha256 = "0dmbcyms9rcxz5bj9bagxgdqffrcwpkh9qbij78d2bkc3wy21m6z";
        };
      };
    };
    "symfony/routing" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-routing-be865017746fe869007d94220ad3f5297951811b";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/routing/zipball/be865017746fe869007d94220ad3f5297951811b";
          sha256 = "1pzfhvxq1idwfw6vpjfrywzr3w4j4h03vwjvqxpf43a9ccv17p31";
        };
      };
    };
    "symfony/stopwatch" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-stopwatch-b24c6a92c6db316fee69e38c80591e080e41536c";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/stopwatch/zipball/b24c6a92c6db316fee69e38c80591e080e41536c";
          sha256 = "1m26fw0ksz1qdg2f4hdd5b1jaab59r6haxkmmk7r4wdvjs1ibb46";
        };
      };
    };
    "symfony/string" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-string-8d224396e28d30f81969f083a58763b8b9ceb0a5";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/string/zipball/8d224396e28d30f81969f083a58763b8b9ceb0a5";
          sha256 = "13bv53s2s7fvk064yx2xa0f5p9jh0slxc2pnrzp7m6jnqha6mlcy";
        };
      };
    };
    "symfony/var-dumper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-var-dumper-eaaea4098be1c90c8285543e1356a09c8aa5c8da";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/var-dumper/zipball/eaaea4098be1c90c8285543e1356a09c8aa5c8da";
          sha256 = "01dnfd6s37iy1w434kpfn11cadr8ag21kw6qskikk2h7w1fagp63";
        };
      };
    };
    "symfony/var-exporter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-var-exporter-a7604de14bcf472fe8e33f758e9e5b7bf07d3b91";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/var-exporter/zipball/a7604de14bcf472fe8e33f758e9e5b7bf07d3b91";
          sha256 = "1lcd06ir1dcvk602fd3sp1bd96pcjkracmwrldbw54sw7v93dmbc";
        };
      };
    };
    "symfony/yaml" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-yaml-4500fe63dc9c6ffc32d3b1cb0448c329f9c814b7";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/yaml/zipball/4500fe63dc9c6ffc32d3b1cb0448c329f9c814b7";
          sha256 = "02qgqsiizf0zb80v7mhkz7k3dwz5ybk9p48v4hk06qicccgzmmks";
        };
      };
    };
    "twig/twig" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "twig-twig-8e202327ee1ed863629de9b18a5ec70ac614d88f";
        src = fetchurl {
          url = "https://api.github.com/repos/twigphp/Twig/zipball/8e202327ee1ed863629de9b18a5ec70ac614d88f";
          sha256 = "1w5v51yc9599w1blqf18afp9hsl3zv4bqf8yaas2davfh2zn0hhg";
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
  executable = false;
  symlinkDependencies = false;
  meta = {
    license = "MIT";
  };
}
