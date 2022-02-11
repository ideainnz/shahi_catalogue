'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/assets/shahi_logo_isolated.png": "8785f31ca9e31699c79e6d83f4ad8d8e",
"assets/assets/aas_pas_logo.png": "eea6905f2451199a4649ad7e26fe6d3d",
"assets/assets/images/shahi_logo_red.png": "06ad42b8fcab5180902a93bffbec485d",
"assets/assets/images/csr/csr_icons/health_care_icon.png": "7da958ebc8d82f8820e877cd5bb3ff88",
"assets/assets/images/csr/csr_icons/education_icon.png": "ffa0b61acf9f1069f51095e1a32968a6",
"assets/assets/images/csr/csr_header.jpg": "58c9b0118b3f010fccdb1b1581d84037",
"assets/assets/images/csr/csr_education.jpg": "dabf24c71884afdaca76d5a3f2b73bcb",
"assets/assets/images/csr/more/csr2.jpg": "595ab4596769045046d3ae38297b37ce",
"assets/assets/images/csr/more/csr3.jpg": "4161d386dca1f941a3e172bb3915ca87",
"assets/assets/images/csr/more/csr5.jpg": "c0942f826c4b944e8a3ee4571642c3ec",
"assets/assets/images/csr/more/csr4.jpg": "374534f87e64be2f0d52ada150424e39",
"assets/assets/images/csr/more/csr1.jpg": "33bf370f58e260996e20dd2c0f76aa17",
"assets/assets/images/csr/more/csr6.jpg": "4884304136e9b117574e8969525a887f",
"assets/assets/images/csr/press_release/pr_2019_1.jpg": "7b8c6a0c431f79d73fc70748065acba6",
"assets/assets/images/csr/press_release/pr_2019_2.jpg": "d5b08b09887d9f1b8df55392931f0ced",
"assets/assets/images/csr/csr_health_care.jpg": "b5b04f43891e2709ee4e1cf3cb2100b9",
"assets/assets/images/mouth_freshener/mf6.png": "277bcce9f364cc3f0cd2a7b740b8debe",
"assets/assets/images/mouth_freshener/mf9.png": "7f6d4fa15240ba597e9dc5c953fd01fa",
"assets/assets/images/mouth_freshener/mf3.png": "bab456ddcfd5ea5f7f0cbe4f0049d180",
"assets/assets/images/mouth_freshener/mf7.png": "286c9e5b84efbd819e5fb06b3cd3917e",
"assets/assets/images/mouth_freshener/mf2.png": "7551fb98a96726f34d8b2be47393aa2c",
"assets/assets/images/mouth_freshener/mf4.png": "36f0d1b20b93afeef13f9750d8ffc542",
"assets/assets/images/mouth_freshener/mf10.png": "4245f1a21bfb6a258a715e40fc97dec3",
"assets/assets/images/mouth_freshener/mf8.png": "0a6671ee05e53e4bcc5ff6d3d303ce7e",
"assets/assets/images/mouth_freshener/mf1.png": "3d555cbb9e1624c4c871b8b8fb80eab9",
"assets/assets/images/mouth_freshener/mf5.png": "a8c0c5220216b69d6733ab18abb6dd76",
"assets/assets/images/about_icons/global_foot_prints.png": "dc7960863da20830c4b9f5da319abd46",
"assets/assets/images/about_icons/mission.png": "02fb7a674e809c1ac14e2778a7f8b0d0",
"assets/assets/images/about_icons/values.png": "03d5585fa55530b95abf197def91692e",
"assets/assets/images/about_icons/about_us_red.png": "3d205b3c6427b06ab5a3af584721f411",
"assets/assets/images/about_icons/vision.png": "9024ee5611941cd5d996c61faaf6bc71",
"assets/assets/images/snacks/snacks9.png": "36e69df635a8787df70c0c1d139e37f9",
"assets/assets/images/snacks/snacks5.png": "66149628259cc00c346e618d7a45cf56",
"assets/assets/images/snacks/snacks7.png": "a0671ace8408eaf603a357bd316fc774",
"assets/assets/images/snacks/snacks1.png": "3d19f2cfe334f3a00cbd93f4e67b1ecd",
"assets/assets/images/snacks/snacks11.png": "83263237277f8f461e848339e15c7064",
"assets/assets/images/snacks/snacks2.png": "1b11f00f310fbaf9ded67374e15992c7",
"assets/assets/images/snacks/snacks4.png": "203712177a9f304a9775f1a5dbde7876",
"assets/assets/images/snacks/snacks8.png": "4407b076e6dd8e26c228a789e0ba18d5",
"assets/assets/images/snacks/snacks6.png": "07a981a8c0ef20068c71a1a8a85815d9",
"assets/assets/images/snacks/snacks10.png": "f49c8df0ced0629e3aa7b948b2ce6aac",
"assets/assets/images/snacks/snacks3.png": "510a5f67e7989a53bb56d3203568ad31",
"assets/assets/images/about_us.png": "98833f5344c98a68db3748c5d7dfcc52",
"assets/assets/images/bg_category_title.png": "b00fa4b3b7e05247391c89fb65213381",
"assets/assets/images/transparent_image.png": "f88f3ab9bb21fa5b41c2304dcc6973a9",
"assets/assets/images/dashboard_icons/product_icon.png": "9aecd1791787dc48fa1fe7749c8ae1e4",
"assets/assets/images/dashboard_icons/dashboard_icon_2.png": "03f70b8b88c5ee19f03a382d265aeed6",
"assets/assets/images/dashboard_icons/dashboard_icon_1.png": "e8746cf25be4591e58b8632afc30b0b0",
"assets/assets/images/dashboard_icons/dashboard_icon_3.png": "21567495af9b73d46a66329811cc96cb",
"assets/assets/images/dashboard_icons/dashboard_icon_14.png": "f7b785c8e75c1761d8ceb5aa797aee1d",
"assets/assets/images/dashboard_icons/dashboard_icon_4.png": "417ffd1b6ccea9604f1d31caafd00bbc",
"assets/assets/images/dashboard_icons/dashboard_icon_0.png": "d256ea2b543473c2ed33f19e57448f17",
"assets/assets/images/nimco/nimco7.png": "79785f78e209fdfff13359020acf41dd",
"assets/assets/images/nimco/nimco9.png": "06bdf988d6a76b4fdabfcde51e375235",
"assets/assets/images/nimco/nimco6.png": "931178e91588908783b2c65e1648bc77",
"assets/assets/images/nimco/nimco3.png": "be272d4c373abc4475e00f7a71abdf67",
"assets/assets/images/nimco/nimco5.png": "36375d7ae0805ff88cefac95973e9772",
"assets/assets/images/nimco/nimco4.png": "8eea0ca338a3f06837c4774df26741a3",
"assets/assets/images/nimco/nimco1.png": "3b9a3e84ef56697b7c32751eee915a65",
"assets/assets/images/nimco/nimco2.png": "574d3fad7d8fb11c0051c031b8f95605",
"assets/assets/images/nimco/nimco8.png": "906263271fe435a7429e61dae2166970",
"assets/assets/images/export_products/mouth_freshener/mf_export_1.png": "e42e09c556257601b0540daba222b5c9",
"assets/assets/images/export_products/mouth_freshener/mf_export_4.png": "e020da33a98acdc7ece7fdaea72b11ff",
"assets/assets/images/export_products/mouth_freshener/mf_export_9.png": "eb136dc5012c3627768c48e36c6b1e2a",
"assets/assets/images/export_products/mouth_freshener/mf_export_7.png": "d8f38e3b334bb3f1798b4cdfb7365cc0",
"assets/assets/images/export_products/mouth_freshener/mf_export_3.png": "75431b9019343fb71bea174b94a0d49a",
"assets/assets/images/export_products/mouth_freshener/mf_export_8.png": "3995f250fe5e6bec4f9a091deaa392e7",
"assets/assets/images/export_products/mouth_freshener/mf_export_2.png": "98b150acc3e6597026a0f901d4540892",
"assets/assets/images/export_products/mouth_freshener/mf_export_5.png": "b82a50adc5b28d961684c45f3a6a0faa",
"assets/assets/images/export_products/mouth_freshener/mf_export_6.png": "9388fd16ba6833a3d326eba071452b86",
"assets/assets/images/export_products/nimco/nimco_export_5.png": "e9c9f7eb78310154e0138362395337c4",
"assets/assets/images/export_products/nimco/nimco_export_2.png": "4b77303f5b4968250925535d65ee92e8",
"assets/assets/images/export_products/nimco/nimco_export_4.png": "8f484671134ffdd91b453eb5365a4584",
"assets/assets/images/export_products/nimco/nimco_export_9.png": "6cb93d067c1de39dce2fa684cb96157b",
"assets/assets/images/export_products/nimco/nimco_export_10.png": "a52a917dbc82719a0e8b96e2045ec263",
"assets/assets/images/export_products/nimco/nimco_export_7.png": "342eb322660b46663b1691c6b7c68207",
"assets/assets/images/export_products/nimco/nimco_export_6.png": "f9557754d817cfaa91608f543a7c3253",
"assets/assets/images/export_products/nimco/nimco_export_11.png": "65ce1bda2b4159add636df63b6acc6ee",
"assets/assets/images/export_products/nimco/nimco_export_3.png": "3711911431b5331cfc4051ddb2c7a9f4",
"assets/assets/images/export_products/nimco/nimco_export_8.png": "e9051f7c450c146ae5c6f513db60f4fb",
"assets/assets/images/export_products/nimco/nimco_export_1.png": "0341b9b1fd414738aaf6c168ba123030",
"assets/assets/images/export_products/nutrition_facts/aas_pas_nf.jpg": "177915ca9af06b57bf5ce296b8d56e0c",
"assets/assets/images/export_products/nutrition_facts/shahi_boondi_nf.jpg": "7e0274710fde59331c8b23bfc91530e8",
"assets/assets/images/export_products/nutrition_facts/shahi_meva_nf.jpg": "ad20464c12630c3fa1a088b656830deb",
"assets/assets/images/export_products/nutrition_facts/shahi_classic_jar_nf.jpg": "9d13f0d75cbd7005573bcdb1288fe665",
"assets/assets/images/export_products/nutrition_facts/shahi_spicy_dc_nf.jpg": "8757a7b4c83c74e6af906e969cc1b7cc",
"assets/assets/images/export_products/nutrition_facts/shahi_cc_nf.jpg": "877827ec6b505fd3b0f1c0a6c44a4806",
"assets/assets/images/export_products/nutrition_facts/shahi_savory_mix_nf.jpg": "fc29122a13b050292aad16c2bb4fed6d",
"assets/assets/images/export_products/nutrition_facts/shahi_deluxe_premium_nf.jpg": "ec0c4d92fb0fd21c75b2456577ea3a5b",
"assets/assets/images/export_products/nutrition_facts/shahi_elaichi_nf.jpg": "09d15c640ea1a998a38211f03148ef91",
"assets/assets/images/export_products/nutrition_facts/shahi_sev_nf.jpg": "e3cd93507ce1d64e10300e1fac782551",
"assets/assets/images/export_products/nutrition_facts/shahi_dal_moth_nf.jpg": "47e4ddff62d00d85ef5df423618675e4",
"assets/assets/images/export_products/nutrition_facts/shahi_chewra_nf.jpg": "9dc55c198defd17075a6dd6ccc4ab027",
"assets/assets/images/export_products/nutrition_facts/shahi_munchy_mix_nf.jpg": "13d0b3d6e5b369d1a03b5db041e86cc0",
"assets/assets/images/export_products/nutrition_facts/shahi_rainbo_nf.jpg": "9540230f568ba2cee9ccce04e31d5bb0",
"assets/assets/images/export_products/nutrition_facts/shahi_papdi_nf.jpg": "829def7cd63d1d62cbaf8c5b8f9d4d59",
"assets/assets/images/export_products/nutrition_facts/shahi_dal_moong_nf.jpg": "47e4ddff62d00d85ef5df423618675e4",
"assets/assets/images/export_products/nutrition_facts/shahi_gathia_nf.jpg": "34cd04b9b8afeeaa7d538bcbc4741dc3",
"assets/assets/images/export_products/nutrition_facts/shahi_super_mint_nf.jpg": "b7a8cd23472f6195f959c8aa324cca9c",
"assets/assets/images/header_product_detail.png": "bea91854f4d0f10beb0cb111408ea643",
"assets/assets/images/tab_icons/frozen_food_tab_icon.png": "521be8edcd756eb8f1af7a367f297e0c",
"assets/assets/images/tab_icons/nimco_tab_icon.png": "e62ded0608701a7b662f1436659b88b7",
"assets/assets/images/tab_icons/mouth_freshener_tab_icon.png": "5b60d8f4069629f516f0fbadc5bf81eb",
"assets/assets/images/tab_icons/snacks_tab_icon.png": "3116083c733c68ff30b93c85d1f08b8a",
"assets/assets/images/social_icons/youtube_icon.png": "4f9c80b7140086a7f9d6a86ad608703b",
"assets/assets/images/social_icons/facebook_icon.png": "d809c338aba0459f654570d8635507b6",
"assets/assets/images/social_icons/facebook_white_icon.png": "e02cb45e2eb02b5e37acc0c015ef3533",
"assets/assets/images/social_icons/instagram_icon.png": "c195dab944c5453ad9567e9d836d1f32",
"assets/assets/images/social_icons/instagram_white_icon.png": "052b5523f4d040d23c88b85fbd012778",
"assets/assets/images/social_icons/youtube_white_icon.png": "87974b02a9d41f4df2469bb824446ab7",
"assets/assets/images/products/shahi_nimco/nutrition/nutrition6.png": "bb8fa0d29bf6f7c1f41bf31954ce457c",
"assets/assets/images/products/shahi_nimco/nutrition/nutrition2.png": "91b90a24e44a96a5eda8c7a931f288fc",
"assets/assets/images/products/shahi_nimco/nutrition/nutrition11.png": "95b66af92061517b5c805cb05d941b06",
"assets/assets/images/products/shahi_nimco/nutrition/nutrition3.png": "4aea1ef8ee5490440651c8192abdee08",
"assets/assets/images/products/shahi_nimco/nutrition/nutrition4.png": "ab256c9eda57ecb75a8afefa503b54aa",
"assets/assets/images/products/shahi_nimco/nutrition/nutrition9.png": "0912124574bed954d564a4437d84c1e2",
"assets/assets/images/products/shahi_nimco/nutrition/nutrition10.png": "2271fdd0481a21dd2099397db0d6f786",
"assets/assets/images/products/shahi_nimco/nutrition/nutrition12.png": "987abf3695a51d509f75118f3f66f620",
"assets/assets/images/products/shahi_nimco/nutrition/nutrition7.png": "ec5791873341ee9d25252963609de60a",
"assets/assets/images/products/shahi_nimco/nutrition/nutrition1.png": "761ced4db9177180d639dc0477aaef89",
"assets/assets/images/products/shahi_nimco/nutrition/nutrition5.png": "669c0d09ae26ea815936af9b1625207a",
"assets/assets/images/products/shahi_nimco/nutrition/nutrition8.png": "7692c51c792a684ae584bb3b0f34b779",
"assets/assets/images/products/shahi_nimco/back/back8.png": "743778fe8bd7cf6815ad41d66d11e961",
"assets/assets/images/products/shahi_nimco/back/back2.png": "768d38bc7c72415071eca8d56a8ce035",
"assets/assets/images/products/shahi_nimco/back/back12.png": "f72388d4f639e9f2711bede703440333",
"assets/assets/images/products/shahi_nimco/back/back5.png": "76b920727324790bec9cd8da60acfcfa",
"assets/assets/images/products/shahi_nimco/back/back9.png": "0828b8fcfb392d824d1696a2d6c078d8",
"assets/assets/images/products/shahi_nimco/back/back3.png": "d6954c56ee90da6dc66a11f3c8aebff4",
"assets/assets/images/products/shahi_nimco/back/back6.png": "3b5c5612f7fa96b4810ab86dc16790c9",
"assets/assets/images/products/shahi_nimco/back/back4.png": "389a0648ee1d9fae8daa1aec0823b214",
"assets/assets/images/products/shahi_nimco/back/back7.png": "75c8a33db9b9038e3ce5a7774d07d1ab",
"assets/assets/images/products/shahi_nimco/back/back10.png": "5d5abd8f1723c092768866bec506f491",
"assets/assets/images/products/shahi_nimco/back/back1.png": "ab230e5f64b6ca89ddc4de6f07d2145e",
"assets/assets/images/products/shahi_nimco/back/back11.png": "59716c6aefc5180002b2a3df84ae7e3f",
"assets/assets/images/products/shahi_nimco/arabic/arabic11.png": "9953b12b50e5cfa13091f26fa756f0fd",
"assets/assets/images/products/shahi_nimco/arabic/arabic12.png": "dcccbb27a933bde772269701b93b6501",
"assets/assets/images/products/shahi_nimco/arabic/arabic9.png": "fb7f383154aadf1200612e36e9f06086",
"assets/assets/images/products/shahi_nimco/arabic/arabic6.png": "fd585b4894cc9b9adfcb5353de8f9b55",
"assets/assets/images/products/shahi_nimco/arabic/arabic2.png": "70d038a3a12796ffad73165e120eb36e",
"assets/assets/images/products/shahi_nimco/arabic/arabic10.png": "b00810b39278c97df3fb2c5a3285d726",
"assets/assets/images/products/shahi_nimco/arabic/arabic8.png": "0819668e001c17eff43be4b7108fbbd9",
"assets/assets/images/products/shahi_nimco/arabic/arabic7.png": "aa5643576974c7552bf790afda56f28d",
"assets/assets/images/products/shahi_nimco/arabic/arabic4.png": "c06dd3f8c21d2da79e088ecadded2781",
"assets/assets/images/products/shahi_nimco/arabic/arabic5.png": "d90348375a1220d2a16cdc6945cd2947",
"assets/assets/images/products/shahi_nimco/arabic/arabic3.png": "50395c949e6b3eca25edc9c3bd0896b9",
"assets/assets/images/products/shahi_nimco/arabic/arabic1.png": "36f2b287ec30fc72169603bb47ce606b",
"assets/assets/images/products/shahi_nimco/front/front8.png": "d09d66ff3050401af3cd4177f7ac6afd",
"assets/assets/images/products/shahi_nimco/front/front7.png": "2da9450cba8e80b2663f531cc1ebd079",
"assets/assets/images/products/shahi_nimco/front/front10.png": "2ce9a7efb01fab10c68097320531dd93",
"assets/assets/images/products/shahi_nimco/front/front3.png": "130c3fadaefd95c3782df3b7b85a1f98",
"assets/assets/images/products/shahi_nimco/front/front5.png": "8c0ad619f7b81d1cc2060ec00df2b8bc",
"assets/assets/images/products/shahi_nimco/front/front11.png": "e4e4e924af9e751fee4eb52c47a9b460",
"assets/assets/images/products/shahi_nimco/front/front1.png": "3b04d650d1ad00752d92b38f354af54d",
"assets/assets/images/products/shahi_nimco/front/front12.png": "24263b56be92c5de846a7aecca32201d",
"assets/assets/images/products/shahi_nimco/front/front2.png": "d9658e828ea4941225b2266aa939d104",
"assets/assets/images/products/shahi_nimco/front/front9.png": "ce0b854b63e0f74511c7d0f8e49de344",
"assets/assets/images/products/shahi_nimco/front/front6.png": "af55792d1f10304025a2aceaeb6a6f9f",
"assets/assets/images/products/shahi_nimco/front/front4.png": "e542b15d0508f57bb4cf1a42b54bb252",
"assets/assets/images/products/mouth_freshener/side/side6.png": "cfa1b8f29a719d51ce07e76450c6d285",
"assets/assets/images/products/mouth_freshener/side/side8.png": "140f7ed7d658f14f74713747d087a534",
"assets/assets/images/products/mouth_freshener/side/side11.png": "5361c11cc8e69b59270a0e48b5bd1614",
"assets/assets/images/products/mouth_freshener/side/side7.png": "d42c069acaaea8648b1f0ebfcd6f74cb",
"assets/assets/images/products/mouth_freshener/side/side1.png": "60eb488c5492abb9306c3f78bd45f4af",
"assets/assets/images/products/mouth_freshener/side/side2.png": "d1f5521847036bf82fd0400b946c4de6",
"assets/assets/images/products/mouth_freshener/side/side10.png": "5b4f1482d640c0b7718eb66f63162af6",
"assets/assets/images/products/mouth_freshener/side/side5.png": "15b2e72ad27681cf363cd51b75cc35f1",
"assets/assets/images/products/mouth_freshener/side/side3.png": "1af736002664a5c1e61d665202ec7466",
"assets/assets/images/products/mouth_freshener/side/side9.png": "a33d2aedce82dd08574517c73e4c5472",
"assets/assets/images/products/mouth_freshener/side/side4.png": "9baf071a65545bd72b5d5cfcb194a007",
"assets/assets/images/products/mouth_freshener/side/side12.png": "0fcd027b7af6ca5bea5b38b596f69006",
"assets/assets/images/products/mouth_freshener/nutrition/nutrition2.png": "2266a4754041ce6fc8d2a6a9ad4ff4e8",
"assets/assets/images/products/mouth_freshener/nutrition/nutrition4.png": "754a995f7513ecbb01fba44162069712",
"assets/assets/images/products/mouth_freshener/nutrition/nutrition9.png": "7289930061dc2f1b613e1bd15281f408",
"assets/assets/images/products/mouth_freshener/nutrition/nutrition10.png": "57a81a4d05b8addcf54ffd1a8eb197e6",
"assets/assets/images/products/mouth_freshener/nutrition/nutrition12.png": "d5ec2ae36f1386044a0884c04df38cd1",
"assets/assets/images/products/mouth_freshener/nutrition/nutrition1.png": "38f907e5ce35c5d37c144ed251d8dd8f",
"assets/assets/images/products/mouth_freshener/nutrition/nutrition5.png": "9bde345b60954a934342a843c3e74154",
"assets/assets/images/products/mouth_freshener/nutrition/nutrition8.png": "faaebcf28816e52943f1d7e9b1900d10",
"assets/assets/images/products/mouth_freshener/arabic/arabic11.png": "2a6c54254b6f8caf7e8e01fc74cdb82a",
"assets/assets/images/products/mouth_freshener/arabic/arabic12.png": "56e55ce4c0896b827191ee1209807f80",
"assets/assets/images/products/mouth_freshener/arabic/arabic9.png": "65aa828631f717b3a4c2338b77d371ae",
"assets/assets/images/products/mouth_freshener/arabic/arabic6.png": "b172b6686e7c637f7149e279b8048717",
"assets/assets/images/products/mouth_freshener/arabic/arabic2.png": "9a90ef1f9172560077f8ee31d1f8ba5c",
"assets/assets/images/products/mouth_freshener/arabic/arabic10.png": "bf4fc4662011a5feadcd33e213e6d690",
"assets/assets/images/products/mouth_freshener/arabic/arabic8.png": "f458cc8c48b1b36aaa5f25986da7e078",
"assets/assets/images/products/mouth_freshener/arabic/arabic7.png": "e6b6ab4ed1aa3d93ae17eb732b07cb2d",
"assets/assets/images/products/mouth_freshener/arabic/arabic4.png": "3508f60fccbe71a5a23c85583131db5a",
"assets/assets/images/products/mouth_freshener/arabic/arabic5.png": "f2c0e0064e05d667e7a0d94c6485a07a",
"assets/assets/images/products/mouth_freshener/arabic/arabic3.png": "a64f54c66237ec97486c86948ba26071",
"assets/assets/images/products/mouth_freshener/arabic/arabic1.png": "f940555c6f48f7e7b8e5462dc7f93882",
"assets/assets/images/products/mouth_freshener/front/front8.png": "1adf42a0863827f1097093d5e68a5246",
"assets/assets/images/products/mouth_freshener/front/front7.png": "5326e409edd7fbed7e93b8327d090df9",
"assets/assets/images/products/mouth_freshener/front/front10.png": "794994c37520f64b237e2a9b36ff08b7",
"assets/assets/images/products/mouth_freshener/front/front3.png": "2d4eaad4a7724c19a52261c2b92f21eb",
"assets/assets/images/products/mouth_freshener/front/front5.png": "9139314b86fed62d5d8210b99ac20fd9",
"assets/assets/images/products/mouth_freshener/front/front11.png": "5eee93c0a41b3701db873a03c7f63a1c",
"assets/assets/images/products/mouth_freshener/front/front1.png": "335f1db4960e3b7ef405887178782d73",
"assets/assets/images/products/mouth_freshener/front/front12.png": "361d84858f26c3abcfba7f9a3eb0d08c",
"assets/assets/images/products/mouth_freshener/front/front2.png": "5a3a35c349f569c36a74620cf20ff688",
"assets/assets/images/products/mouth_freshener/front/front9.png": "cf433fa5e25834ea5eefba0220003e45",
"assets/assets/images/products/mouth_freshener/front/front6.png": "4e9606fc46cc04d823f3111ef698208a",
"assets/assets/images/products/mouth_freshener/front/front4.png": "babb125f1827ea63a599ea6d211f68d5",
"assets/assets/images/products/snacks/nutrition/nutrition6.png": "fbf3ebc4df12d231671e53764758b6d3",
"assets/assets/images/products/snacks/nutrition/nutrition2.png": "d45d24daaadae58c1a5456b81c5531fc",
"assets/assets/images/products/snacks/nutrition/nutrition11.png": "72493cc09ca9a8846ad1f5efb6cc01c2",
"assets/assets/images/products/snacks/nutrition/nutrition3.png": "9d7f648fd5911be7d955db4ebf117bc2",
"assets/assets/images/products/snacks/nutrition/nutrition4.png": "3e96759978863f8e9ea4f7392fa7f8c1",
"assets/assets/images/products/snacks/nutrition/nutrition9.png": "a6ca64538b26d92c956ec71e58db2c6d",
"assets/assets/images/products/snacks/nutrition/nutrition17.png": "16950ede1a9f84f91043451e581eca6f",
"assets/assets/images/products/snacks/nutrition/nutrition10.png": "706323805b3606800f6988b7cdd4a502",
"assets/assets/images/products/snacks/nutrition/nutrition13.png": "9be5225a128555892bb3a43a3ca4d52c",
"assets/assets/images/products/snacks/nutrition/nutrition12.png": "c381f1e6664dbd6581dd6413dafa66b5",
"assets/assets/images/products/snacks/nutrition/nutrition7.png": "148c4e90cb13b7b54bafcc70c59afc46",
"assets/assets/images/products/snacks/nutrition/nutrition16.png": "7f8ae1d5e6fe65770e305a1db8594610",
"assets/assets/images/products/snacks/nutrition/nutrition1.png": "9e2aedcc47d5203757745d58952d4feb",
"assets/assets/images/products/snacks/nutrition/nutrition5.png": "c0494315752bd68c27ad48b135299b43",
"assets/assets/images/products/snacks/nutrition/nutrition15.png": "ead5d9998f64878d06ed55805718b130",
"assets/assets/images/products/snacks/nutrition/nutrition8.png": "15230e3342365095d5304b939506ed48",
"assets/assets/images/products/snacks/nutrition/nutrition14.png": "9e588041c6b786ad6ba928cb08877bd6",
"assets/assets/images/products/snacks/back/back14.png": "6316b96a5c14dfb2048b6c04a9ec1db0",
"assets/assets/images/products/snacks/back/back15.png": "1b7ada3fe9aa26c954530d4551979f83",
"assets/assets/images/products/snacks/back/back8.png": "4ce4641a59b05edb1e667607f7a8713a",
"assets/assets/images/products/snacks/back/back2.png": "6677ece7e390da40ab38759fb5937c4a",
"assets/assets/images/products/snacks/back/back13.png": "260d05198022030943fbe3c39b2728b5",
"assets/assets/images/products/snacks/back/back12.png": "f9a0e57a0e56b53625725aa47e38a0ed",
"assets/assets/images/products/snacks/back/back5.png": "c27eb39494b28df2c0cb806d3128fc90",
"assets/assets/images/products/snacks/back/back17.png": "2c8bfb4e7a26f19a2df1db078b2c262b",
"assets/assets/images/products/snacks/back/back16.png": "d812ddefd181fe98a04d97d8e7589e2d",
"assets/assets/images/products/snacks/back/back9.png": "c955534ce48ee4cf5a31efa1a89f5e6a",
"assets/assets/images/products/snacks/back/back3.png": "84ad02ae77b4e12ba2d32f07e16adac2",
"assets/assets/images/products/snacks/back/back6.png": "51290fbb2d4ca41ccfd17d142073fb12",
"assets/assets/images/products/snacks/back/back4.png": "20fb329d5b3427ae10f2f208c24aeefa",
"assets/assets/images/products/snacks/back/back7.png": "df33b84434aa0de8f4b4a28ca5752538",
"assets/assets/images/products/snacks/back/back10.png": "25bafbd4170d40d15cefec812bfe8bae",
"assets/assets/images/products/snacks/back/back1.png": "0ee213ca2e3fe3a599d20f29607bd767",
"assets/assets/images/products/snacks/back/back11.png": "8c5bd1ad693517443bee87647b054c87",
"assets/assets/images/products/snacks/arabic/arabic11.png": "0e0a98abb4c5c4d36c7be1fc2aa8afb6",
"assets/assets/images/products/snacks/arabic/arabic14.png": "37f9d6221fb46d1b1fb0a730dfc9114f",
"assets/assets/images/products/snacks/arabic/arabic12.png": "b6851671324cb7fc6231cf28590d1d33",
"assets/assets/images/products/snacks/arabic/arabic9.png": "2cb74f393801a64e80cafdfeaaa278d6",
"assets/assets/images/products/snacks/arabic/arabic6.png": "7bb5d84b08dea585ffbfb5b43a768d86",
"assets/assets/images/products/snacks/arabic/arabic17.png": "1fe0da5f415992118291bd7dcffa3368",
"assets/assets/images/products/snacks/arabic/arabic13.png": "c9bc63c2e1d47c0b5d0d9c1f5578c941",
"assets/assets/images/products/snacks/arabic/arabic2.png": "60e1a4ae15883e23fc821da077acba1c",
"assets/assets/images/products/snacks/arabic/arabic10.png": "1e1731f2fecc12a39c49cd000ab58f73",
"assets/assets/images/products/snacks/arabic/arabic15.png": "98c5321c9e1cd0ecad2892547ee2bd1a",
"assets/assets/images/products/snacks/arabic/arabic16.png": "89f96a42d176734152aaaf350a901bd1",
"assets/assets/images/products/snacks/arabic/arabic8.png": "da3b5ec68e8a5f7024cd20d51053c206",
"assets/assets/images/products/snacks/arabic/arabic7.png": "1dd90eca82b0613c25074afe91e2fe13",
"assets/assets/images/products/snacks/arabic/arabic4.png": "53c839f503463f4d901a21f350084621",
"assets/assets/images/products/snacks/arabic/arabic5.png": "b03684783fd49ac48eff8267a2275b33",
"assets/assets/images/products/snacks/arabic/arabic3.png": "826efc283991ad198a4346d11de2d5d2",
"assets/assets/images/products/snacks/arabic/arabic1.png": "42ea32d131b186f64693a1ef66e9c016",
"assets/assets/images/products/snacks/front/front8.png": "6f4f5189c62a838594ff632fc0fa1514",
"assets/assets/images/products/snacks/front/front7.png": "788af746fbaa602a2182435de96ba122",
"assets/assets/images/products/snacks/front/front10.png": "71b16aa64bf96fdd6b06cc4e57e30463",
"assets/assets/images/products/snacks/front/front3.png": "ebd536d7e0a85f7e352676f84dadec19",
"assets/assets/images/products/snacks/front/front5.png": "ec85319fabc94237e6e2f6e51ca8c182",
"assets/assets/images/products/snacks/front/front11.png": "00703ef87799e915c0e1aa9f8c5c6e0b",
"assets/assets/images/products/snacks/front/front1.png": "04789a5f1103c7b051e3d40d440e2113",
"assets/assets/images/products/snacks/front/front14.png": "32fbf41f56f7c34258fcf2efe0869b5c",
"assets/assets/images/products/snacks/front/front13.png": "24182f009c5fde3cb0a4e2a4ac7efeeb",
"assets/assets/images/products/snacks/front/front12.png": "4a350da05b27c7c609134edfeefc001c",
"assets/assets/images/products/snacks/front/front2.png": "0906fcff39ac8f7f5e3e834b255e7866",
"assets/assets/images/products/snacks/front/front9.png": "96ca9f941dd3c1fda265fcf5a3e67cfa",
"assets/assets/images/products/snacks/front/front16.png": "c245886537af314a68af337ab6ab4fbe",
"assets/assets/images/products/snacks/front/front6.png": "c4b1b043c4784875f74966d96a1355d3",
"assets/assets/images/products/snacks/front/front4.png": "c044f746dd10b8ebbd86aefa26d57e79",
"assets/assets/images/products/snacks/front/front17.png": "ad9188c524663478488ff046a15efacb",
"assets/assets/images/products/snacks/front/front15.png": "3ff955b2451be765c5c5fec62e4526b1",
"assets/assets/images/products/ballay_ballay/nutrition/nutrition6.png": "7ef3dee4fbd085fc79bd20d16f1e5ce6",
"assets/assets/images/products/ballay_ballay/nutrition/nutrition2.png": "9ac7173192c0daadec00017e5cc6f1e5",
"assets/assets/images/products/ballay_ballay/nutrition/nutrition3.png": "3a829be0881e27c3efbbc79d5fd1032c",
"assets/assets/images/products/ballay_ballay/nutrition/nutrition4.png": "a1bd50cbe82cd04a3d0dc4fa7c239704",
"assets/assets/images/products/ballay_ballay/nutrition/nutrition7.png": "bd403046430812addf1220b00d928414",
"assets/assets/images/products/ballay_ballay/nutrition/nutrition1.png": "9172bb6143181cb25269f16280c6a6fe",
"assets/assets/images/products/ballay_ballay/nutrition/nutrition5.png": "2424e4b382b890e002b5661711f56709",
"assets/assets/images/products/ballay_ballay/back/back2.png": "ebcb82ead80d69d8486490ff39562adc",
"assets/assets/images/products/ballay_ballay/back/back5.png": "2b6114c5b8e4c38001a01a637ec3f701",
"assets/assets/images/products/ballay_ballay/back/back3.png": "b37278ddc1ceda53d442a17490d177b4",
"assets/assets/images/products/ballay_ballay/back/back6.png": "364b2a92ae5cb5b0d716334ca597d6cb",
"assets/assets/images/products/ballay_ballay/back/back4.png": "8dd11cbb7333df0aed36d8bd629c2d7d",
"assets/assets/images/products/ballay_ballay/back/back7.png": "4ec7fed9d6a397a93aee116be72eb4c2",
"assets/assets/images/products/ballay_ballay/back/back1.png": "aec1704afb877a2bf7430cccba919626",
"assets/assets/images/products/ballay_ballay/arabic/arabic6.png": "ffd16139a2fe4303b5e9e23f21af6fa9",
"assets/assets/images/products/ballay_ballay/arabic/arabic2.png": "6bcce889952cdd01181233a93f03525a",
"assets/assets/images/products/ballay_ballay/arabic/arabic7.png": "f45cdba2dbc91a4b5dcb48218df0f171",
"assets/assets/images/products/ballay_ballay/arabic/arabic4.png": "a8b5e52cc4d53f9418d07ca98b3419b2",
"assets/assets/images/products/ballay_ballay/arabic/arabic5.png": "ca955e651daff4686153c4b393dc189c",
"assets/assets/images/products/ballay_ballay/arabic/arabic3.png": "a1cb54e44c6bf26a54f9bf3166938c4d",
"assets/assets/images/products/ballay_ballay/arabic/arabic1.png": "747e1932eda6bd047202c1e6ad9bd19f",
"assets/assets/images/products/ballay_ballay/front/front7.png": "7aa0731da62083f44be230d8eb4c60fd",
"assets/assets/images/products/ballay_ballay/front/front3.png": "0a1c15e9a514dd0f436e0b424f39e2d1",
"assets/assets/images/products/ballay_ballay/front/front5.png": "176dacb4877502db37dad7d6afd28f6a",
"assets/assets/images/products/ballay_ballay/front/front1.png": "8a966cdd8c7bd7376580c74f00992cc6",
"assets/assets/images/products/ballay_ballay/front/front2.png": "af6229a515aed4bbe205aafe6c098f7e",
"assets/assets/images/products/ballay_ballay/front/front6.png": "d60e280011db6c50e2d3a3d4f39463d8",
"assets/assets/images/products/ballay_ballay/front/front4.png": "a7f506477a928af6eb3ba9130c051b43",
"assets/assets/images/nutrition_facts/ballay_ballay_savory_mix_nf.jpg": "f49781c4f45abcc61c338eaf785c9b3c",
"assets/assets/images/nutrition_facts/kinkorn_spicy_nf.jpg": "703363161f09cb23dd0a73a39523f3df",
"assets/assets/images/nutrition_facts/ballay_ballay_dal_moong_nf.jpg": "665f5ed83c58461f9808c513fad52536",
"assets/assets/images/nutrition_facts/shahi_plain_paratha_nf.jpg": "c2a64b5f2bb9c69692fcc484c1097499",
"assets/assets/images/nutrition_facts/ballay_ballay_ks_nf.jpg": "1bce08689d230e243d238295fca9005e",
"assets/assets/images/nutrition_facts/aas_pas_mpm_nf.jpg": "fe2942860b2415516db380d90eefbff1",
"assets/assets/images/nutrition_facts/kinkorn_cheese_nf.jpg": "767f4f13d32570741c6756a735bd8d02",
"assets/assets/images/nutrition_facts/ballay_ballay_dal_moth_nf.jpg": "3095bb9bcf72bef31fb3f2e0483f8414",
"assets/assets/images/nutrition_facts/wheat_o_karariyan_nf.jpg": "b851f673b3aca17c6e0f74dc396e7960",
"assets/assets/images/nutrition_facts/pop_star_chicken_chatpata_nf.jpg": "944f326782b59c3f601e37269c5b844b",
"assets/assets/images/nutrition_facts/pop_star_champ_nf.jpg": "944f326782b59c3f601e37269c5b844b",
"assets/assets/images/nutrition_facts/pop_star_ac_nf.jpg": "944f326782b59c3f601e37269c5b844b",
"assets/assets/images/nutrition_facts/wheat_o_chips_nf.jpg": "a6e458140fd6204666aa1786d11dfc1e",
"assets/assets/images/nutrition_facts/shahi_meva_nf.jpg": "0f872f7e4be5349e56fb66e007022dda",
"assets/assets/images/nutrition_facts/ballay_ballay_chewra_nf.jpg": "7c05ed564b961c81002c90baef680fef",
"assets/assets/images/nutrition_facts/ballay_ballay_mm_nf.jpg": "58e9afa2b843eaa4795f12a91587e770",
"assets/assets/images/nutrition_facts/aas_pas_ss_nf.jpg": "4e7822379dbfb160fd332981dd94c83c",
"assets/assets/images/nutrition_facts/ballay_ballay_peanut_nf.jpg": "51976ccc90d1caaba02e7f17ec052ea5",
"assets/assets/images/nutrition_facts/wheat_o_original_nf.jpg": "fa0cc547be24daee46f8f12c12c8b8a7",
"assets/assets/images/nutrition_facts/aas_pas_cpm_nf.jpg": "b0659f40091af3c74240c54c63e564cf",
"assets/assets/images/nutrition_facts/shahi_deluxe_nf.jpg": "4e7822379dbfb160fd332981dd94c83c",
"assets/assets/images/nutrition_facts/shahi_elaichi_nf.jpg": "c4f6f2a54782cb2318bbb3ffb3267f89",
"assets/assets/images/nutrition_facts/shahi_paratha_jp_nf.jpg": "c2a64b5f2bb9c69692fcc484c1097499",
"assets/assets/images/nutrition_facts/fry_o_sns_nf.jpg": "6effd74323a6a9af4446de216bc05f37",
"assets/assets/images/nutrition_facts/ballay_ballay_cc_nf.jpg": "877827ec6b505fd3b0f1c0a6c44a4806",
"assets/assets/images/nutrition_facts/ballay_ballay_dc_nf.jpg": "2fda8d8594e17c037ac8fa03ddc2d822",
"assets/assets/images/nutrition_facts/shahi_deluxe_lite_nf.jpg": "4e7822379dbfb160fd332981dd94c83c",
"assets/assets/images/nutrition_facts/hittt_nf.jpg": "4e7822379dbfb160fd332981dd94c83c",
"assets/assets/images/nutrition_facts/pop_star_cheesy_cheese_nf.jpg": "944f326782b59c3f601e37269c5b844b",
"assets/assets/images/nutrition_facts/shahi_paratha_fm_nf.jpg": "c2a64b5f2bb9c69692fcc484c1097499",
"assets/assets/images/nutrition_facts/shahi_classic_nf.jpg": "2b9e4b6bf42ada293c3f43a798929a09",
"assets/assets/images/nutrition_facts/fry_o_vd_nf.jpg": "7dd6ab16e29f9b41ae229267a2fd448f",
"assets/assets/images/nutrition_facts/shahi_super_mint_nf.jpg": "d04a66cdd482bbc9747fe9fd323950f1",
"assets/assets/images/shahi_logo_white.png": "b3f54fee74e5f9e8b33f5c98bb85b3ca",
"assets/assets/images/frozen_foods/ff1.png": "8d5b5292f9fbab7d321cf92f7a36162e",
"assets/assets/images/frozen_foods/ff3.png": "1b85af006e6d7228f18c3678651f38da",
"assets/assets/images/frozen_foods/ff2.png": "bff1388b17324ffc780523c75ba8393a",
"assets/assets/images/shahi_logo_red_2.png": "83463542858a9590df4ca1dce79c5989",
"assets/assets/images/about_us_header.jpg": "3e923ab79dd5e54dcef2f3b8afb52b6d",
"assets/assets/shahi_app_logo_white.png": "b3f54fee74e5f9e8b33f5c98bb85b3ca",
"assets/assets/shahi_logo_w_bg.png": "765f2206967ac7d10a82362d4fb9675b",
"assets/assets/fonts/roboto_regular.ttf": "54a91b0619ccf9373d525109268219dc",
"assets/assets/fonts/roboto_medium.ttf": "99fc0816a09395454061301fefa42bf1",
"assets/assets/fonts/roboto_bold.ttf": "afa7a91dadd77b23634a0fdf18c148f3",
"assets/assets/fonts/roboto_light.ttf": "e22062b3188c8199283ef2aa835d4653",
"assets/assets/shahi_app_logo.png": "06ad42b8fcab5180902a93bffbec485d",
"assets/assets/shahi_app_logo_watermark.png": "9dd02221d1fda1e7bb1fdb412e6b5a85",
"assets/FontManifest.json": "88b2f289d18f73f94f3f4b18d00e681f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/flutter_inappwebview/t_rex_runner/t-rex.css": "5a8d0222407e388155d7d1395a75d5b9",
"assets/packages/flutter_inappwebview/t_rex_runner/t-rex.html": "16911fcc170c8af1c5457940bd0bf055",
"assets/AssetManifest.json": "3176f6f3d9f34b61e9afaefe44ffbead",
"assets/NOTICES": "29d12ce10eae5e33b946220db3947ba0",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"index.html": "9820c3811287876977cdf239ebd67417",
"/": "9820c3811287876977cdf239ebd67417",
"version.json": "8642f4ed0d499a3d71cac46bbe93adb7",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"main.dart.js": "bd4b4b0b709e4596af510985d8f5c1d5",
"splash/img/light-1x.png": "5f0af2df2eb1d480b7c2923d98fa84a8",
"splash/img/dark-4x.png": "19e8f85b66fd94e66108b7288a71b825",
"splash/img/light-4x.png": "19e8f85b66fd94e66108b7288a71b825",
"splash/img/dark-1x.png": "5f0af2df2eb1d480b7c2923d98fa84a8",
"splash/img/light-3x.png": "f96305bcb83c5e4494a3aca611eabbb7",
"splash/img/dark-2x.png": "a30b28f3f53e796aac6de5d4aba34d86",
"splash/img/dark-3x.png": "f96305bcb83c5e4494a3aca611eabbb7",
"splash/img/light-2x.png": "a30b28f3f53e796aac6de5d4aba34d86",
"splash/style.css": "971b5f0ed26ca4c26c0f136cbd7c619b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"manifest.json": "07d2d40290d11b333b9beaf567aa0cee",
"canvaskit/profiling/canvaskit.js": "3783918f48ef691e230156c251169480",
"canvaskit/profiling/canvaskit.wasm": "6d1b0fc1ec88c3110db88caa3393c580",
"canvaskit/canvaskit.js": "62b9906717d7215a6ff4cc24efbd1b5c",
"canvaskit/canvaskit.wasm": "b179ba02b7a9f61ebc108f82c5a1ecdb"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
