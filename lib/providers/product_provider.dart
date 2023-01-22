import 'package:flutter/material.dart';
import 'package:shahi_catalogue/models/product_category.dart';
import 'package:shahi_catalogue/models/product_item.dart';
import 'package:shahi_catalogue/providers/product_detail_provider.dart';
import 'package:shahi_catalogue/providers/product_stats_provider.dart';

class ProductProvider with ChangeNotifier {
  final List<ProductCategory> _productCategories = [];

  final List<String> _categories = [
    'Ballay Ballay',
    'Shahi Nimco',
    'Snacks',
    'Mouth Freshener',
  ];

  ProductProvider() {
    _buildInitialProduct();
  }

  void _buildInitialProduct() {
    List<ProductItem> ballayBallayItems = [
      ProductItem(
          11,
          'Dal Chaska',
          'assets/images/products/ballay_ballay/front/front1.png',
          'assets/images/products/ballay_ballay/back/back1.png',
          'Available In Rs 5, 10 & 20',
          'Ballay Ballay',
          'Nimco',
          0xFFAFAF00,
          0xFFE72626,
          ProductDetailProvider.ballayBallayDetail
              .firstWhere((element) => element.productId == 11),
          ProductStatsProvider.bbDalChanaStats),
      ProductItem(
          12,
          'Dal Moong',
          'assets/images/products/ballay_ballay/front/front2.png',
          'assets/images/products/ballay_ballay/back/back2.png',
          'Available In Rs 20',
          'Ballay Ballay',
          'Nimco',
          0xFF1B1B8F,
          0xFFE72626,
          ProductDetailProvider.ballayBallayDetail
              .firstWhere((element) => element.productId == 12),
          ProductStatsProvider.bbDalMoongStats),
      ProductItem(
          13,
          'Dal Moth',
          'assets/images/products/ballay_ballay/front/front3.png',
          'assets/images/products/ballay_ballay/back/back3.png',
          'Available In Rs 5, 10 & 20',
          'Ballay Ballay',
          'Nimco',
          0xFF39AF36,
          0xFFE72626,
          ProductDetailProvider.ballayBallayDetail
              .firstWhere((element) => element.productId == 13),
          ProductStatsProvider.bbDalMothStats),
      ProductItem(
          14,
          'Munchy Mix',
          'assets/images/products/ballay_ballay/front/front4.png',
          'assets/images/products/ballay_ballay/back/back4.png',
          'Available In Rs 10',
          'Ballay Ballay',
          'Nimco',
          0xFFFFA700,
          0xFFE72626,
          ProductDetailProvider.ballayBallayDetail
              .firstWhere((element) => element.productId == 14),
          ProductStatsProvider.bbMunchyMixStats),
      ProductItem(
          15,
          'Namak Paray',
          'assets/images/products/ballay_ballay/front/front5.png',
          'assets/images/products/ballay_ballay/back/back5.png',
          'Available In Rs 5',
          'Ballay Ballay',
          'Nimco',
          0xFF39AF36,
          0xFFE72626,
          ProductDetailProvider.ballayBallayDetail
              .firstWhere((element) => element.productId == 15),
          ProductStatsProvider.bbNamakParayStats),
      ProductItem(
          16,
          'Salted Peanuts',
          'assets/images/products/ballay_ballay/front/front6.png',
          'assets/images/products/ballay_ballay/back/back6.png',
          'Available In Rs 20',
          'Ballay Ballay',
          'Nimco',
          0xFF19BAE0,
          0xFFE72626,
          ProductDetailProvider.ballayBallayDetail
              .firstWhere((element) => element.productId == 16),
          ProductStatsProvider.bbSaltedPeanutsStats),
      ProductItem(
          17,
          'Savory Mix',
          'assets/images/products/ballay_ballay/front/front7.png',
          'assets/images/products/ballay_ballay/back/back7.png',
          'Available In Rs 5, 10 & 20',
          'Ballay Ballay',
          'Nimco',
          0xFFE71919,
          0xFFE72626,
          ProductDetailProvider.ballayBallayDetail
              .firstWhere((element) => element.productId == 17),
          ProductStatsProvider.bbDSavoryMixStats),
      ProductItem(
          18,
          'Dl Moong',
          'assets/images/products/ballay_ballay/front/front8.png',
          'assets/images/products/ballay_ballay/back/back8.png',
          'Available In Rs 20',
          'Ballay Ballay',
          'Nimco',
          0xFF1B1B8F,
          0xFFE72626,
          ProductDetailProvider.ballayBallayDetail
              .firstWhere((element) => element.productId == 18),
          ProductStatsProvider.bbDalMoongStats2),
      ProductItem(
          19,
          'Chilli Chips',
          'assets/images/products/ballay_ballay/front/front9.png',
          'assets/images/products/ballay_ballay/back/back9.png',
          'Available In Rs 10',
          'Ballay Ballay',
          'Nimco',
          0xFFFFA700,
          0xFFE72626,
          ProductDetailProvider.ballayBallayDetail
              .firstWhere((element) => element.productId == 19),
          ProductStatsProvider.bbChilliChipsStats),
      ProductItem(
          20,
          'Dal Chaska',
          'assets/images/products/ballay_ballay/front/front10.png',
          'assets/images/products/ballay_ballay/back/back10.png',
          'Available In Rs 10 & 20',
          'Ballay Ballay',
          'Nimco',
          0xFFE71919,
          0xFFE72626,
          ProductDetailProvider.ballayBallayDetail
              .firstWhere((element) => element.productId == 20),
          ProductStatsProvider.bbDalChaskaStats),
      ProductItem(
          121,
          'Dal Moth',
          'assets/images/products/ballay_ballay/front/front11.png',
          'assets/images/products/ballay_ballay/back/back11.png',
          'Available In Rs 10 & 20',
          'Ballay Ballay',
          'Nimco',
          0xFFE71919,
          0xFFE72626,
          ProductDetailProvider.ballayBallayDetail
              .firstWhere((element) => element.productId == 121),
          ProductStatsProvider.bbDalMothStats2),
      ProductItem(
          122,
          'Munchy Mix',
          'assets/images/products/ballay_ballay/front/front12.png',
          'assets/images/products/ballay_ballay/back/back12.png',
          'Available In Rs 10 & 20',
          'Ballay Ballay',
          'Nimco',
          0xFFE71919,
          0xFFE72626,
          ProductDetailProvider.ballayBallayDetail
              .firstWhere((element) => element.productId == 122),
          ProductStatsProvider.bbMunchyMixStats2),
      ProductItem(
          123,
          'Salted Peanuts',
          'assets/images/products/ballay_ballay/front/front13.png',
          'assets/images/products/ballay_ballay/back/back13.png',
          'Available In Rs 20',
          'Ballay Ballay',
          'Nimco',
          0xFFE71919,
          0xFFE72626,
          ProductDetailProvider.ballayBallayDetail
              .firstWhere((element) => element.productId == 123),
          ProductStatsProvider.bbSaltedPeanutsStats2),
      ProductItem(
          124,
          'Savory Mix',
          'assets/images/products/ballay_ballay/front/front14.png',
          'assets/images/products/ballay_ballay/back/back14.png',
          'Available In Rs 10 & 20',
          'Ballay Ballay',
          'Nimco',
          0xFFE71919,
          0xFFE72626,
          ProductDetailProvider.ballayBallayDetail
              .firstWhere((element) => element.productId == 124),
          ProductStatsProvider.bbDSavoryMixStats2),
    ];
    _productCategories
        .add(ProductCategory(1, _categories[0], ballayBallayItems));

    List<ProductItem> shahiNimcoItems = [
      ProductItem(
          21,
          'Black Pepper Chips',
          'assets/images/products/shahi_nimco/front/front1.png',
          'assets/images/products/shahi_nimco/back/back1.png',
          'Available In Rs 20 & 100',
          'assets/shahi_logo_isolated.png',
          'Nimco',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.shahiNimcoDetail
              .firstWhere((element) => element.productId == 21),
          ProductStatsProvider.nimcoBlackPepperChipsStats),
      ProductItem(
          22,
          'Boondi',
          'assets/images/products/shahi_nimco/front/front2.png',
          'assets/images/products/shahi_nimco/back/back2.png',
          'Available In Rs 100',
          'assets/shahi_logo_isolated.png',
          'Nimco',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.shahiNimcoDetail
              .firstWhere((element) => element.productId == 22),
          ProductStatsProvider.nimcoBoondiStats),
      ProductItem(
          23,
          'Chewra',
          'assets/images/products/shahi_nimco/front/front3.png',
          'assets/images/products/shahi_nimco/back/back3.png',
          'Available In Rs 100',
          'assets/shahi_logo_isolated.png',
          'Nimco',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.shahiNimcoDetail
              .firstWhere((element) => element.productId == 23),
          ProductStatsProvider.nimcoChewraStats),
      ProductItem(
          24,
          'Chilli Chips',
          'assets/images/products/shahi_nimco/front/front4.png',
          'assets/images/products/shahi_nimco/back/back4.png',
          'Available In Rs 20, 50 & 100',
          'assets/shahi_logo_isolated.png',
          'Nimco',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.shahiNimcoDetail
              .firstWhere((element) => element.productId == 24),
          ProductStatsProvider.nimcoChilliChipsStats),
      ProductItem(
          25,
          'Spicy Dal Chana',
          'assets/images/products/shahi_nimco/front/front5.png',
          'assets/images/products/shahi_nimco/back/back5.png',
          'Available In Rs 50 & 100',
          'assets/shahi_logo_isolated.png',
          'Nimco',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.shahiNimcoDetail
              .firstWhere((element) => element.productId == 25),
          ProductStatsProvider.nimcoDalChanaStats),
      ProductItem(
          26,
          'Dal Moong',
          'assets/images/products/shahi_nimco/front/front6.png',
          'assets/images/products/shahi_nimco/back/back6.png',
          'Available In Rs 20, 50 & 100',
          'assets/shahi_logo_isolated.png',
          'Nimco',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.shahiNimcoDetail
              .firstWhere((element) => element.productId == 26),
          ProductStatsProvider.nimcoDalMoongStats),
      ProductItem(
          27,
          'Dal Moth',
          'assets/images/products/shahi_nimco/front/front7.png',
          'assets/images/products/shahi_nimco/back/back7.png',
          'Available In Rs 50 & 100',
          'assets/shahi_logo_isolated.png',
          'Nimco',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.shahiNimcoDetail
              .firstWhere((element) => element.productId == 27),
          ProductStatsProvider.nimcoDalMothStats),
      ProductItem(
          28,
          'Munchy Mix',
          'assets/images/products/shahi_nimco/front/front8.png',
          'assets/images/products/shahi_nimco/back/back8.png',
          'Available In Rs 100',
          'assets/shahi_logo_isolated.png',
          'Nimco',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.shahiNimcoDetail
              .firstWhere((element) => element.productId == 28),
          ProductStatsProvider.nimcoMunchyMixStats),
      ProductItem(
          29,
          'Papdi',
          'assets/images/products/shahi_nimco/front/front9.png',
          'assets/images/products/shahi_nimco/back/back9.png',
          'Available In Rs 100',
          'assets/shahi_logo_isolated.png',
          'Nimco',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.shahiNimcoDetail
              .firstWhere((element) => element.productId == 29),
          ProductStatsProvider.nimcoPapdiStats),
      ProductItem(
          30,
          'Royal Mix',
          'assets/images/products/shahi_nimco/front/front10.png',
          'assets/images/products/shahi_nimco/back/back10.png',
          'Available In Rs 20 & 50',
          'assets/shahi_logo_isolated.png',
          'Nimco',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.shahiNimcoDetail
              .firstWhere((element) => element.productId == 30),
          ProductStatsProvider.nimcoRoyalMixStats),
      ProductItem(
          31,
          'Salted Chips',
          'assets/images/products/shahi_nimco/front/front11.png',
          'assets/images/products/shahi_nimco/back/back11.png',
          'Available In Rs 20 & 100',
          'assets/shahi_logo_isolated.png',
          'Nimco',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.shahiNimcoDetail
              .firstWhere((element) => element.productId == 31),
          ProductStatsProvider.nimcoSaltedChipsStats),
      ProductItem(
          32,
          'Savory Mix',
          'assets/images/products/shahi_nimco/front/front12.png',
          'assets/images/products/shahi_nimco/back/back12.png',
          'Available In Rs 100',
          'assets/shahi_logo_isolated.png',
          'Nimco',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.shahiNimcoDetail
              .firstWhere((element) => element.productId == 32),
          ProductStatsProvider.nimcoSavoryMixStats),
    ];
    _productCategories.add(ProductCategory(2, _categories[1], shahiNimcoItems));

    List<ProductItem> snacksItems = [
      ProductItem(
          41,
          'Kinkorn Cheese',
          'assets/images/products/snacks/front/front1.png',
          'assets/images/products/snacks/back/back1.png',
          'Available In Rs 10',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 41),
          ProductStatsProvider.kinkornCheeseStats),
      ProductItem(
          42,
          'Kinkorn Spicy',
          'assets/images/products/snacks/front/front2.png',
          'assets/images/products/snacks/back/back2.png',
          'Available In Rs 10',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 42),
          ProductStatsProvider.kinkornSpicyStats),
      ProductItem(
          43,
          'Gollum Gol',
          'assets/images/products/snacks/front/front3.png',
          'assets/images/products/snacks/back/back3.png',
          'Available In Rs 5',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 43),
          ProductStatsProvider.gollumGolStats),
      // ProductItem(
      //     44,
      //     'Dhabay ki Daal',
      //     'assets/images/products/snacks/front/front4.png',
      //     'assets/images/products/snacks/back/back4.png',
      //     'Available In Rs 5',
      //     'assets/shahi_logo_isolated.png',
      //     'Snacks',
      //     0xFFCEA942,
      //     0xFF211F20,
      //     ProductDetailProvider.snacksDetail
      //         .firstWhere((element) => element.productId == 44),
      //     ProductStatsProvider.dhabayKiDaalStats),
      ProductItem(
          45,
          'Champ',
          'assets/images/products/snacks/front/front5.png',
          'assets/images/products/snacks/back/back5.png',
          'Available In Rs 10',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 45),
          ProductStatsProvider.champStats),
      ProductItem(
          46,
          'Fry-O Spicy',
          'assets/images/products/snacks/front/front6.png',
          'assets/images/products/snacks/back/back6.png',
          'Available In Rs 10 & 20',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 46),
          ProductStatsProvider.fryOSpicyStats),
      ProductItem(
          47,
          'Fry-O Sweet n\' Sour',
          'assets/images/products/snacks/front/front7.png',
          'assets/images/products/snacks/back/back7.png',
          'Available In Rs 10 & 20',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 47),
          ProductStatsProvider.fryOSAndSStats),
      ProductItem(
          48,
          'Fry-O Salted',
          'assets/images/products/snacks/front/front8.png',
          'assets/images/products/snacks/back/back8.png',
          'Available In Rs 10 & 20',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 48),
          ProductStatsProvider.fryOSaltedStats),
      ProductItem(
          49,
          'Pomo Bites',
          'assets/images/products/snacks/front/front9.png',
          'assets/images/products/snacks/back/back9.png',
          'Available In Rs 10',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 49),
          ProductStatsProvider.pomoBitesStats),
      ProductItem(
          50,
          'Patti Time',
          'assets/images/products/snacks/front/front10.png',
          'assets/images/products/snacks/back/back10.png',
          'Available In Rs 10',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 50),
          ProductStatsProvider.pattiTimeStats),
      ProductItem(
          51,
          'Mango Buntys',
          'assets/images/products/snacks/front/front11.png',
          'assets/images/products/snacks/back/back11.png',
          'Available In Rs 10',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 51),
          ProductStatsProvider.mangoBuntysStats),
      ProductItem(
          52,
          'Wheat-O Original',
          'assets/images/products/snacks/front/front12.png',
          'assets/images/products/snacks/back/back12.png',
          'Available In Rs 5 & 10',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 52),
          ProductStatsProvider.wheatOOriginalStats),
      ProductItem(
          53,
          'Wheat-O Karariyan',
          'assets/images/products/snacks/front/front13.png',
          'assets/images/products/snacks/back/back13.png',
          'Available In Rs 5 & 10',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 53),
          ProductStatsProvider.wheatOKarariyanStats),
      ProductItem(
          54,
          'Popstar Classic Cheese',
          'assets/images/products/snacks/front/front14.png',
          'assets/images/products/snacks/back/back14.png',
          'Available In Rs 5 & 10',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 54),
          ProductStatsProvider.popstarClassicCheeseStats),
      ProductItem(
          55,
          'Popstar Chicken Samosa',
          'assets/images/products/snacks/front/front15.png',
          'assets/images/products/snacks/back/back15.png',
          'Available In Rs 5',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 55),
          ProductStatsProvider.popstarChickenSamosaStats),
      ProductItem(
          56,
          'Popstar Chatpata Chicken',
          'assets/images/products/snacks/front/front16.png',
          'assets/images/products/snacks/back/back16.png',
          'Available In Rs 5 & 10',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 56),
          ProductStatsProvider.popstarChatpataChickenStats),
      ProductItem(
          57,
          'Popstar Chicken Pizza',
          'assets/images/products/snacks/front/front17.png',
          'assets/images/products/snacks/back/back17.png',
          'Available In Rs 10',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 57),
          ProductStatsProvider.popstarChickenPizzaStats),
      ProductItem(
          58,
          'Popstar Chatpata Chicken',
          'assets/images/products/snacks/front/front18.png',
          'assets/images/products/snacks/back/back18.png',
          'Available In Rs 10',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 58),
          ProductStatsProvider.popstarChatpataChickenStats2),
      ProductItem(
          59,
          'Popstar Chicken Samosa',
          'assets/images/products/snacks/front/front19.png',
          'assets/images/products/snacks/back/back19.png',
          'Available In Rs 5',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 59),
          ProductStatsProvider.popstarChickenSamosaStats2),
      ProductItem(
          60,
          'Fry-O Potato Snacks',
          'assets/images/products/snacks/front/front20.png',
          'assets/images/products/snacks/back/back20.png',
          'Available In Rs 10 & 20',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 60),
          ProductStatsProvider.fryOSAndSStats2),
      ProductItem(
          601,
          'Fry-O Salted',
          'assets/images/products/snacks/front/front21.png',
          'assets/images/products/snacks/back/back21.png',
          'Available In Rs 10 & 20',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 601),
          ProductStatsProvider.fryOSaltedStats2),
      ProductItem(
          602,
          'Fry-O Spicy',
          'assets/images/products/snacks/front/front22.png',
          'assets/images/products/snacks/back/back22.png',
          'Available In Rs 10 & 20',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 602),
          ProductStatsProvider.fryOSpicyStats2),
      ProductItem(
          603,
          'Kinkorn Spicy',
          'assets/images/products/snacks/front/front23.png',
          'assets/images/products/snacks/back/back23.png',
          'Available In Rs 10',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 603),
          ProductStatsProvider.kinkornSpicyStats2),
      ProductItem(
          604,
          'Kinkorn Cheese',
          'assets/images/products/snacks/front/front24.png',
          'assets/images/products/snacks/back/back24.png',
          'Available In Rs 10',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 604),
          ProductStatsProvider.kinkornCheeseStats2),
      ProductItem(
          605,
          'Mango Buntys',
          'assets/images/products/snacks/front/front25.png',
          'assets/images/products/snacks/back/back25.png',
          'Available In Rs 10',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 605),
          ProductStatsProvider.mangoBuntysStats2),
      ProductItem(
          606,
          'Patti Time',
          'assets/images/products/snacks/front/front26.png',
          'assets/images/products/snacks/back/back26.png',
          'Available In Rs 10',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 606),
          ProductStatsProvider.pattiTimeStats2),
      ProductItem(
          607,
          'Pomo Bites',
          'assets/images/products/snacks/front/front27.png',
          'assets/images/products/snacks/back/back27.png',
          'Available In Rs 10',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 607),
          ProductStatsProvider.pomoBitesStats2),
      ProductItem(
          608,
          'Popstar Classic Cheese',
          'assets/images/products/snacks/front/front28.png',
          'assets/images/products/snacks/back/back28.png',
          'Available In Rs 10 & 20',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 608),
          ProductStatsProvider.popstarClassicCheeseStats2),
      ProductItem(
          609,
          'Popstar Chicken Pizza',
          'assets/images/products/snacks/front/front29.png',
          'assets/images/products/snacks/back/back29.png',
          'Available In Rs 10',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 609),
          ProductStatsProvider.popstarChickenPizzaStats2),
      ProductItem(
          610,
          'Rocco',
          'assets/images/products/snacks/front/front30.png',
          'assets/images/products/snacks/back/back30.png',
          'Available In Rs 10',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 610),
          ProductStatsProvider.roccoStats),
      ProductItem(
          611,
          'Wheat-O Karariyan',
          'assets/images/products/snacks/front/front31.png',
          'assets/images/products/snacks/back/back31.png',
          'Available In Rs 10',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 611),
          ProductStatsProvider.wheatOKarariyanStats2),
      ProductItem(
          612,
          'Wheat-O Original',
          'assets/images/products/snacks/front/front32.png',
          'assets/images/products/snacks/back/back32.png',
          'Available In Rs 10',
          'assets/shahi_logo_isolated.png',
          'Snacks',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.snacksDetail
              .firstWhere((element) => element.productId == 612),
          ProductStatsProvider.wheatOOriginalStats2),
    ];
    _productCategories.add(ProductCategory(3, _categories[2], snacksItems));

    List<ProductItem> mouthFreshenerItems = [
      ProductItem(
          61,
          'Aas Pas Chocolate',
          'assets/images/products/mouth_freshener/front/front1.png',
          'assets/images/products/mouth_freshener/side/side1.png',
          'Available In Rs 2 or 5',
          'assets/aas_pas_logo.png',
          'Mouth Freshener',
          0xFF8A181A,
          0xFF8A181A,
          ProductDetailProvider.mouthFreshenerDetail
              .firstWhere((element) => element.productId == 61),
          ProductStatsProvider.aasPaasChocolateStats),
      ProductItem(
          62,
          'Shahi Meva Chocolate',
          'assets/images/products/mouth_freshener/front/front2.png',
          'assets/images/products/mouth_freshener/side/side2.png',
          'Available In Rs 5',
          'assets/shahi_logo_isolated.png',
          'Mouth Freshener',
          0xFF001766,
          0xFFE72626,
          ProductDetailProvider.mouthFreshenerDetail
              .firstWhere((element) => element.productId == 62),
          ProductStatsProvider.shahiMevaChocolateStats),
      ProductItem(
          63,
          'Shahi Supari Classic',
          'assets/images/products/mouth_freshener/front/front3.png',
          'assets/images/products/mouth_freshener/side/side3.png',
          'Available In Rs 2.5',
          'assets/shahi_logo_isolated.png',
          'Mouth Freshener',
          0xFF001766,
          0xFFE72626,
          ProductDetailProvider.mouthFreshenerDetail
              .firstWhere((element) => element.productId == 63),
          ProductStatsProvider.shahiSupariClassicStats),
      ProductItem(
          64,
          'Shahi Deewan',
          'assets/images/products/mouth_freshener/front/front4.png',
          'assets/images/products/mouth_freshener/side/side4.png',
          'Available In Rs 5',
          'assets/shahi_logo_isolated.png',
          'Mouth Freshener',
          0xFF001766,
          0xFFE72626,
          ProductDetailProvider.mouthFreshenerDetail
              .firstWhere((element) => element.productId == 64),
          ProductStatsProvider.shahiDeewanStats),
      ProductItem(
          65,
          'Shahi Deluxe Lite',
          'assets/images/products/mouth_freshener/front/front5.png',
          'assets/images/products/mouth_freshener/side/side5.png',
          'Available In Rs 2.5',
          'assets/shahi_logo_isolated.png',
          'Mouth Freshener',
          0xFF001766,
          0xFFE72626,
          ProductDetailProvider.mouthFreshenerDetail
              .firstWhere((element) => element.productId == 65),
          ProductStatsProvider.shahiDeluxeLiteStats),
      ProductItem(
          66,
          'Shahi Deluxe',
          'assets/images/products/mouth_freshener/front/front6.png',
          'assets/images/products/mouth_freshener/side/side6.png',
          'Available In Rs 2.5',
          'assets/shahi_logo_isolated.png',
          'Mouth Freshener',
          0xFF001766,
          0xFFE72626,
          ProductDetailProvider.mouthFreshenerDetail
              .firstWhere((element) => element.productId == 66),
          ProductStatsProvider.shahiDeluxeStats),
      ProductItem(
          67,
          'Shahi Elaichi',
          'assets/images/products/mouth_freshener/front/front7.png',
          'assets/images/products/mouth_freshener/side/side7.png',
          'Available In Rs 2 & 5',
          'assets/shahi_logo_isolated.png',
          'Mouth Freshener',
          0xFF001766,
          0xFFE72626,
          ProductDetailProvider.mouthFreshenerDetail
              .firstWhere((element) => element.productId == 67),
          ProductStatsProvider.shahiElaichiStats),
      ProductItem(
          68,
          'Shahi Kalonji',
          'assets/images/products/mouth_freshener/front/front8.png',
          'assets/images/products/mouth_freshener/side/side8.png',
          'Available In Rs 5',
          'assets/shahi_logo_isolated.png',
          'Mouth Freshener',
          0xFF001766,
          0xFFE72626,
          ProductDetailProvider.mouthFreshenerDetail
              .firstWhere((element) => element.productId == 68),
          ProductStatsProvider.shahiKalonjiStats),
      ProductItem(
          69,
          'Aas Pas Meetha',
          'assets/images/products/mouth_freshener/front/front9.png',
          'assets/images/products/mouth_freshener/side/side9.png',
          'Available In Rs 5',
          'assets/aas_pas_logo.png',
          'Mouth Freshener',
          0xFF8A181A,
          0xFFA62283,
          ProductDetailProvider.mouthFreshenerDetail
              .firstWhere((element) => element.productId == 69),
          ProductStatsProvider.aasPaasMeethaPanMasalaStats),
      ProductItem(
          70,
          'Shahi Meva',
          'assets/images/products/mouth_freshener/front/front10.png',
          'assets/images/products/mouth_freshener/side/side10.png',
          'Available In Rs 2, 5 or 10',
          'assets/shahi_logo_isolated.png',
          'Mouth Freshener',
          0xFF001766,
          0xFFE72626,
          ProductDetailProvider.mouthFreshenerDetail
              .firstWhere((element) => element.productId == 70),
          ProductStatsProvider.shahiMevaStats),
      ProductItem(
          71,
          'Shahi Supermint',
          'assets/images/products/mouth_freshener/front/front11.png',
          'assets/images/products/mouth_freshener/side/side11.png',
          'Available In Rs 2.5 or 5',
          'assets/shahi_logo_isolated.png',
          'Mouth Freshener',
          0xFF001766,
          0xFFE72626,
          ProductDetailProvider.mouthFreshenerDetail
              .firstWhere((element) => element.productId == 71),
          ProductStatsProvider.shahiSupermintStats),
      ProductItem(
          72,
          'Aas Pas Sweet Sonf',
          'assets/images/products/mouth_freshener/front/front12.png',
          'assets/images/products/mouth_freshener/side/side12.png',
          'Available In Rs 5',
          'assets/aas_pas_logo.png',
          'Mouth Freshener',
          0xFF8A181A,
          0xFFE72626,
          ProductDetailProvider.mouthFreshenerDetail
              .firstWhere((element) => element.productId == 72),
          ProductStatsProvider.aasPaasSweetSonf),
      ProductItem(
          73,
          'Aas Pas Chocolate',
          'assets/images/products/mouth_freshener/front/front13.png',
          'assets/images/products/mouth_freshener/side/side13.png',
          'Available In Rs 5',
          'assets/aas_pas_logo.png',
          'Mouth Freshener',
          0xFF8A181A,
          0xFF8A181A,
          ProductDetailProvider.mouthFreshenerDetail
              .firstWhere((element) => element.productId == 73),
          ProductStatsProvider.aasPaasChocolateStats2),
      ProductItem(
          74,
          'Aas Pas Meetha',
          'assets/images/products/mouth_freshener/front/front14.png',
          'assets/images/products/mouth_freshener/side/side14.png',
          'Available In Rs 5',
          'assets/aas_pas_logo.png',
          'Mouth Freshener',
          0xFF8A181A,
          0xFFA62283,
          ProductDetailProvider.mouthFreshenerDetail
              .firstWhere((element) => element.productId == 73),
          ProductStatsProvider.aasPaasMeethaPanMasalaStats2),
      ProductItem(
          75,
          'Aas Pas Sweet Sonf',
          'assets/images/products/mouth_freshener/front/front15.png',
          'assets/images/products/mouth_freshener/side/side15.png',
          'Available In Rs 5',
          'assets/aas_pas_logo.png',
          'Mouth Freshener',
          0xFF8A181A,
          0xFFE72626,
          ProductDetailProvider.mouthFreshenerDetail
              .firstWhere((element) => element.productId == 74),
          ProductStatsProvider.aasPaasSweetSonf2),
      ProductItem(
          76,
          'Shahi Meva Chocolate',
          'assets/images/products/mouth_freshener/front/front16.png',
          'assets/images/products/mouth_freshener/side/side16.png',
          'Available In Rs 5',
          'assets/shahi_logo_isolated.png',
          'Mouth Freshener',
          0xFF001766,
          0xFFE72626,
          ProductDetailProvider.mouthFreshenerDetail
              .firstWhere((element) => element.productId == 75),
          ProductStatsProvider.shahiMevaChocolateStats2),
      ProductItem(
          77,
          'Shahi Deewan',
          'assets/images/products/mouth_freshener/front/front17.png',
          'assets/images/products/mouth_freshener/side/side17.png',
          'Available In Rs 5',
          'assets/shahi_logo_isolated.png',
          'Mouth Freshener',
          0xFF001766,
          0xFFE72626,
          ProductDetailProvider.mouthFreshenerDetail
              .firstWhere((element) => element.productId == 76),
          ProductStatsProvider.shahiDeewanStats2),
      ProductItem(
          78,
          'Shahi Deluxe',
          'assets/images/products/mouth_freshener/front/front18.png',
          'assets/images/products/mouth_freshener/side/side18.png',
          'Available In Rs 5',
          'assets/shahi_logo_isolated.png',
          'Mouth Freshener',
          0xFF001766,
          0xFFE72626,
          ProductDetailProvider.mouthFreshenerDetail
              .firstWhere((element) => element.productId == 78),
          ProductStatsProvider.shahiDeluxeStats2),
      ProductItem(
          79,
          'Shahi Elaichi',
          'assets/images/products/mouth_freshener/front/front19.png',
          'assets/images/products/mouth_freshener/side/side19.png',
          'Available In Rs 5',
          'assets/shahi_logo_isolated.png',
          'Mouth Freshener',
          0xFF001766,
          0xFFE72626,
          ProductDetailProvider.mouthFreshenerDetail
              .firstWhere((element) => element.productId == 79),
          ProductStatsProvider.shahiElaichiStats2),
      ProductItem(
          80,
          'Shahi Kalonji',
          'assets/images/products/mouth_freshener/front/front20.png',
          'assets/images/products/mouth_freshener/side/side20.png',
          'Available In Rs 5',
          'assets/shahi_logo_isolated.png',
          'Mouth Freshener',
          0xFF001766,
          0xFFE72626,
          ProductDetailProvider.mouthFreshenerDetail
              .firstWhere((element) => element.productId == 80),
          ProductStatsProvider.shahiKalonjiStats2),
      ProductItem(
          81,
          'Shahi Meva',
          'assets/images/products/mouth_freshener/front/front21.png',
          'assets/images/products/mouth_freshener/side/side21.png',
          'Available In Rs 5 or 10',
          'assets/shahi_logo_isolated.png',
          'Mouth Freshener',
          0xFF001766,
          0xFFE72626,
          ProductDetailProvider.mouthFreshenerDetail
              .firstWhere((element) => element.productId == 81),
          ProductStatsProvider.shahiMevaStats2),
      ProductItem(
          82,
          'Shahi Supermint',
          'assets/images/products/mouth_freshener/front/front22.png',
          'assets/images/products/mouth_freshener/side/side22.png',
          'Available In Rs 5',
          'assets/shahi_logo_isolated.png',
          'Mouth Freshener',
          0xFF001766,
          0xFFE72626,
          ProductDetailProvider.mouthFreshenerDetail
              .firstWhere((element) => element.productId == 82),
          ProductStatsProvider.shahiSupermintStats2),
    ];
    _productCategories
        .add(ProductCategory(4, _categories[3], mouthFreshenerItems));

    // List<ProductItem> snacksItems = [
    //   ProductItem(
    //       31,
    //       'Fry-O Sweet N Sour',
    //       'assets/images/snacks/snacks1.png',
    //       ProductDetailProvider.snacksDetails
    //           .firstWhere((element) => element.productId == 31)),
    //   ProductItem(
    //       32,
    //       'Fry-O Veggie Dip',
    //       'assets/images/snacks/snacks2.png',
    //       ProductDetailProvider.snacksDetails
    //           .firstWhere((element) => element.productId == 32)),
    //   ProductItem(
    //       33,
    //       'Kinkorn Cheese',
    //       'assets/images/snacks/snacks3.png',
    //       ProductDetailProvider.snacksDetails
    //           .firstWhere((element) => element.productId == 33)),
    //   ProductItem(
    //       34,
    //       'Kinkorn Spicy',
    //       'assets/images/snacks/snacks4.png',
    //       ProductDetailProvider.snacksDetails
    //           .firstWhere((element) => element.productId == 34)),
    //   ProductItem(
    //       35,
    //       'Pop Star Achari Chaska',
    //       'assets/images/snacks/snacks5.png',
    //       ProductDetailProvider.snacksDetails
    //           .firstWhere((element) => element.productId == 35)),
    //   ProductItem(
    //       36,
    //       'Pop Star Champ',
    //       'assets/images/snacks/snacks6.png',
    //       ProductDetailProvider.snacksDetails
    //           .firstWhere((element) => element.productId == 36)),
    //   ProductItem(
    //       37,
    //       'Pop Star Chatpata Chicken',
    //       'assets/images/snacks/snacks7.png',
    //       ProductDetailProvider.snacksDetails
    //           .firstWhere((element) => element.productId == 37)),
    //   ProductItem(
    //       38,
    //       'Pop Star Cheesy Cheese',
    //       'assets/images/snacks/snacks8.png',
    //       ProductDetailProvider.snacksDetails
    //           .firstWhere((element) => element.productId == 38)),
    //   ProductItem(
    //       39,
    //       'Wheat-O Chips',
    //       'assets/images/snacks/snacks9.png',
    //       ProductDetailProvider.snacksDetails
    //           .firstWhere((element) => element.productId == 39)),
    //   ProductItem(
    //       40,
    //       'Wheat-O Karariyan',
    //       'assets/images/snacks/snacks10.png',
    //       ProductDetailProvider.snacksDetails
    //           .firstWhere((element) => element.productId == 40)),
    //   ProductItem(
    //       41,
    //       'Wheat-O Original',
    //       'assets/images/snacks/snacks11.png',
    //       ProductDetailProvider.snacksDetails
    //           .firstWhere((element) => element.productId == 41)),
    // ];
    // _productCategories.add(ProductCategory(3, _categories[2], snacksItems));
    //
    // List<ProductItem> frozenFoodsItems = [
    //   ProductItem(
    //       51,
    //       'Shahi Paratha Family Pack',
    //       'assets/images/frozen_foods/ff1.png',
    //       ProductDetailProvider.frozenFoodsDetail
    //           .firstWhere((element) => element.productId == 51)),
    //   ProductItem(
    //       52,
    //       'Shahi Paratha Jumbo Pack',
    //       'assets/images/frozen_foods/ff2.png',
    //       ProductDetailProvider.frozenFoodsDetail
    //           .firstWhere((element) => element.productId == 52)),
    //   ProductItem(
    //       53,
    //       'Shahi Plain Paratha',
    //       'assets/images/frozen_foods/ff3.png',
    //       ProductDetailProvider.frozenFoodsDetail
    //           .firstWhere((element) => element.productId == 53)),
    // ];
    // _productCategories
    //     .add(ProductCategory(4, _categories[3], frozenFoodsItems));
  }

  getCategories() {
    return _categories;
  }

  ProductCategory getProductByCategory(int categoryIndex) {
    return _productCategories
        .where((pd) => pd.categoryId == (categoryIndex + 1))
        .toList()[0];
  }

  List<ProductCategory> getInitialProducts() {
    return _productCategories;
  }

  Future<String> getImageLocationFromProduct(
      String productName, int productId) async {
    ProductItem productItem =
        await getProductItemFromCategory(productName, productId);
    return productItem.productImagePath;
  }

  Future<ProductItem> getProductItemFromCategory(
      String category, int productId) async {
    int index =
        _productCategories.indexWhere((cat) => cat.categoryName == category);
    ProductItem productItem = _productCategories[index]
        .productItems
        .where((pi) => pi.productId == productId)
        .first;

    return productItem;
  }
}
