import 'package:flutter/material.dart';
import 'package:shahi_catalogue/models/product_category.dart';
import 'package:shahi_catalogue/models/product_item.dart';

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
    List<ProductItem> mouthFreshenerItems = [
      ProductItem(11, 'Aas Pas', 'assets/images/export_products/mouth_freshener/mf_export_1.png', Constants.DUMMY_TEXT),
      ProductItem(12, 'Deluxe Premium', 'assets/images/export_products/mouth_freshener/mf_export_2.png', Constants.DUMMY_TEXT),
      ProductItem(13, 'Rainbo', 'assets/images/export_products/mouth_freshener/mf_export_3.png', Constants.DUMMY_TEXT),
      ProductItem(14, 'Rangarang Jar', 'assets/images/export_products/mouth_freshener/mf_export_4.png', Constants.DUMMY_TEXT),
      ProductItem(15, 'Shahi Classic Jar', 'assets/images/export_products/mouth_freshener/mf_export_5.png', Constants.DUMMY_TEXT),
      ProductItem(16, 'Shahi Elaichi', 'assets/images/export_products/mouth_freshener/mf_export_6.png', Constants.DUMMY_TEXT),
      ProductItem(17, 'Shahi Meva', 'assets/images/export_products/mouth_freshener/mf_export_7.png', Constants.DUMMY_TEXT),
      ProductItem(18, 'Shahi Mint', 'assets/images/export_products/mouth_freshener/mf_export_8.png', Constants.DUMMY_TEXT),
      ProductItem(19, 'Shahi Sonf Jar', 'assets/images/export_products/mouth_freshener/mf_export_9.png', Constants.DUMMY_TEXT),
    ];
    _productCategories
        .add(ProductCategory(1, _categories[0], mouthFreshenerItems));

    List<ProductItem> nimcoItems = [
      ProductItem(21, 'Boondi', 'assets/images/export_products/nimco/nimco_export_1.png', Constants.DUMMY_TEXT),
      ProductItem(22, 'Chewra', 'assets/images/export_products/nimco/nimco_export_2.png', Constants.DUMMY_TEXT),
      ProductItem(23, 'Chilli Chips', 'assets/images/export_products/nimco/nimco_export_3.png', Constants.DUMMY_TEXT),
      ProductItem(24, 'Dal Moong', 'assets/images/export_products/nimco/nimco_export_4.png', Constants.DUMMY_TEXT),
      ProductItem(25, 'Dal Moth', 'assets/images/export_products/nimco/nimco_export_5.png', Constants.DUMMY_TEXT),
      ProductItem(26, 'Gathia', 'assets/images/export_products/nimco/nimco_export_6.png', Constants.DUMMY_TEXT),
      ProductItem(27, 'Munchy Mix', 'assets/images/export_products/nimco/nimco_export_7.png', Constants.DUMMY_TEXT),
      ProductItem(28, 'Papdi', 'assets/images/export_products/nimco/nimco_export_8.png', Constants.DUMMY_TEXT),
      ProductItem(29, 'Savory Mix', 'assets/images/export_products/nimco/nimco_export_9.png', Constants.DUMMY_TEXT),
      ProductItem(30, 'Sev', 'assets/images/export_products/nimco/nimco_export_10.png', Constants.DUMMY_TEXT),
      ProductItem(31, 'Spicy Dal Chana', 'assets/images/export_products/nimco/nimco_export_11.png', Constants.DUMMY_TEXT),
    ];
    _productCategories.add(ProductCategory(2, _categories[1], nimcoItems));
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
