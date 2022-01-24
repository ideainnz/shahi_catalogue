import 'package:flutter/material.dart';
import 'package:shahi_catalogue/models/product_category.dart';
import 'package:shahi_catalogue/models/product_detail_model.dart';
import 'package:shahi_catalogue/models/product_item.dart';
import 'package:shahi_catalogue/providers/product_detail_provider.dart';
import 'package:shahi_catalogue/providers/product_stats_provider.dart';

class ProductProvider with ChangeNotifier {
  final List<ProductCategory> _productCategories = [];

  final List<String> _categories = [
    'Ballay Ballay',
    'Shahi Nimco',
  ];

  ProductProvider() {
    _buildInitialProduct();
  }

  void _buildInitialProduct() {
    List<ProductItem> ballayBallayItems = [
      ProductItem(
          11,
          'Dal Chana',
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
          'Available In Rs 20',
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
    ];
    _productCategories
        .add(ProductCategory(1, _categories[0], ballayBallayItems));

    List<ProductItem> shahiNimcoItems = [
      ProductItem(
          21,
          'Black Pepper Chips',
          'assets/images/products/shahi_nimco/front/front1.png',
          'assets/images/products/shahi_nimco/back/back1.png',
          'Available In Rs 100',
          '',
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
          '',
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
          '',
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
          '',
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
          '',
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
          '',
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
          '',
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
          'Available In Rs 5',
          '',
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
          '',
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
          '',
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
          'Available In Rs 5',
          '',
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
          'Available In Rs 5',
          '',
          'Nimco',
          0xFFCEA942,
          0xFF211F20,
          ProductDetailProvider.shahiNimcoDetail
              .firstWhere((element) => element.productId == 32),
          ProductStatsProvider.nimcoSavoryMixStats),
    ];
    _productCategories.add(ProductCategory(2, _categories[1], shahiNimcoItems));

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
