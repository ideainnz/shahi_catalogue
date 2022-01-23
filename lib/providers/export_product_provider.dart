import 'package:flutter/material.dart';
import 'package:shahi_catalogue/models/product_category.dart';
import 'package:shahi_catalogue/models/product_item.dart';
import 'package:shahi_catalogue/providers/export_product_detail_provider.dart';

import '../constants/constants.dart';

class ExportProductProvider with ChangeNotifier {
  final List<ProductCategory> _productCategories = [];

  final List<String> _categories = [
    'Mouth Freshener',
    'Nimco',
  ];

  ExportProductProvider() {
    _buildInitialExportProduct();
  }

  void _buildInitialExportProduct() {
    // List<ProductItem> mouthFreshenerItems = [
    //   ProductItem(
    //       11,
    //       'Aas Pas',
    //       'assets/images/export_products/mouth_freshener/mf_export_1.png',
    //       ExportProductDetailProvider.mouthFreshenersDetail
    //           .firstWhere((element) => element.productId == 11)),
    //   ProductItem(
    //       12,
    //       'Deluxe Premium',
    //       'assets/images/export_products/mouth_freshener/mf_export_2.png',
    //       ExportProductDetailProvider.mouthFreshenersDetail
    //           .firstWhere((element) => element.productId == 12)),
    //   ProductItem(
    //       13,
    //       'Rainbo',
    //       'assets/images/export_products/mouth_freshener/mf_export_3.png',
    //       ExportProductDetailProvider.mouthFreshenersDetail
    //           .firstWhere((element) => element.productId == 13)),
    //   ProductItem(
    //       14,
    //       'Rangarang Jar',
    //       'assets/images/export_products/mouth_freshener/mf_export_4.png',
    //       ExportProductDetailProvider.mouthFreshenersDetail
    //           .firstWhere((element) => element.productId == 14)),
    //   ProductItem(
    //       15,
    //       'Shahi Classic Jar',
    //       'assets/images/export_products/mouth_freshener/mf_export_5.png',
    //       ExportProductDetailProvider.mouthFreshenersDetail
    //           .firstWhere((element) => element.productId == 15)),
    //   ProductItem(
    //       16,
    //       'Shahi Elaichi',
    //       'assets/images/export_products/mouth_freshener/mf_export_6.png',
    //       ExportProductDetailProvider.mouthFreshenersDetail
    //           .firstWhere((element) => element.productId == 16)),
    //   ProductItem(
    //       17,
    //       'Shahi Meva',
    //       'assets/images/export_products/mouth_freshener/mf_export_7.png',
    //       ExportProductDetailProvider.mouthFreshenersDetail
    //           .firstWhere((element) => element.productId == 17)),
    //   ProductItem(
    //       18,
    //       'Shahi Mint',
    //       'assets/images/export_products/mouth_freshener/mf_export_8.png',
    //       ExportProductDetailProvider.mouthFreshenersDetail
    //           .firstWhere((element) => element.productId == 18)),
    //   ProductItem(
    //       19,
    //       'Shahi Sonf Jar',
    //       'assets/images/export_products/mouth_freshener/mf_export_9.png',
    //       ExportProductDetailProvider.mouthFreshenersDetail
    //           .firstWhere((element) => element.productId == 19)),
    // ];
    // _productCategories
    //     .add(ProductCategory(1, _categories[0], mouthFreshenerItems));
    //
    // List<ProductItem> nimcoItems = [
    //   ProductItem(
    //       21,
    //       'Boondi',
    //       'assets/images/export_products/nimco/nimco_export_1.png',
    //       ExportProductDetailProvider.nimcoDetail
    //           .firstWhere((element) => element.productId == 21)),
    //   ProductItem(
    //       22,
    //       'Chewra',
    //       'assets/images/export_products/nimco/nimco_export_2.png',
    //       ExportProductDetailProvider.nimcoDetail
    //           .firstWhere((element) => element.productId == 22)),
    //   ProductItem(
    //       23,
    //       'Chilli Chips',
    //       'assets/images/export_products/nimco/nimco_export_3.png',
    //       ExportProductDetailProvider.nimcoDetail
    //           .firstWhere((element) => element.productId == 23)),
    //   ProductItem(
    //       24,
    //       'Dal Moong',
    //       'assets/images/export_products/nimco/nimco_export_4.png',
    //       ExportProductDetailProvider.nimcoDetail
    //           .firstWhere((element) => element.productId == 24)),
    //   ProductItem(
    //       25,
    //       'Dal Moth',
    //       'assets/images/export_products/nimco/nimco_export_5.png',
    //       ExportProductDetailProvider.nimcoDetail
    //           .firstWhere((element) => element.productId == 25)),
    //   ProductItem(
    //       26,
    //       'Gathia',
    //       'assets/images/export_products/nimco/nimco_export_6.png',
    //       ExportProductDetailProvider.nimcoDetail
    //           .firstWhere((element) => element.productId == 26)),
    //   ProductItem(
    //       27,
    //       'Munchy Mix',
    //       'assets/images/export_products/nimco/nimco_export_7.png',
    //       ExportProductDetailProvider.nimcoDetail
    //           .firstWhere((element) => element.productId == 27)),
    //   ProductItem(
    //       28,
    //       'Papdi',
    //       'assets/images/export_products/nimco/nimco_export_8.png',
    //       ExportProductDetailProvider.nimcoDetail
    //           .firstWhere((element) => element.productId == 28)),
    //   ProductItem(
    //       29,
    //       'Savory Mix',
    //       'assets/images/export_products/nimco/nimco_export_9.png',
    //       ExportProductDetailProvider.nimcoDetail
    //           .firstWhere((element) => element.productId == 29)),
    //   ProductItem(
    //       30,
    //       'Sev',
    //       'assets/images/export_products/nimco/nimco_export_10.png',
    //       ExportProductDetailProvider.nimcoDetail
    //           .firstWhere((element) => element.productId == 30)),
    //   ProductItem(
    //       31,
    //       'Spicy Dal Chana',
    //       'assets/images/export_products/nimco/nimco_export_11.png',
    //       ExportProductDetailProvider.nimcoDetail
    //           .firstWhere((element) => element.productId == 31)),
    // ];
    // _productCategories.add(ProductCategory(2, _categories[1], nimcoItems));
  }

  List<String> getCategories() {
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
