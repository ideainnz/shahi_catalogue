import 'package:flutter/material.dart';
import 'package:shahi_catalogue/models/product_category.dart';
import 'package:shahi_catalogue/models/product_item.dart';

import '../constants/constants.dart';

class ProductProvider with ChangeNotifier {
  final List<ProductCategory> _productCategories = [];

  final List<String> _categories = [
    'Mouth Freshener',
    'Nimco',
    'Snacks',
    'Frozen Food'
  ];

  ProductProvider() {
    _buildInitialProduct();
  }

  void _buildInitialProduct() {
    List<ProductItem> mouthFreshenerItems = [
      ProductItem(11, 'Aas Pas Chocolate Pan Masala', 'assets/images/mouth_freshener/mf1.png', Constants.DUMMY_TEXT),
      ProductItem(12, 'Aas Pas Meetha Pan Masala', 'assets/images/mouth_freshener/mf2.png', Constants.DUMMY_TEXT),
      ProductItem(13, 'Aas Pas Sweet Sonf', 'assets/images/mouth_freshener/mf3.png', Constants.DUMMY_TEXT),
      ProductItem(14, 'Hittt..', 'assets/images/mouth_freshener/mf4.png', Constants.DUMMY_TEXT),
      ProductItem(15, 'Shahi Classic', 'assets/images/mouth_freshener/mf5.png', Constants.DUMMY_TEXT),
      ProductItem(16, 'Shahi Deluxe', 'assets/images/mouth_freshener/mf6.png', Constants.DUMMY_TEXT),
      ProductItem(17, 'Shahi Deluxe Lite', 'assets/images/mouth_freshener/mf7.png', Constants.DUMMY_TEXT),
      ProductItem(18, 'Shahi Elaichi', 'assets/images/mouth_freshener/mf8.png', Constants.DUMMY_TEXT),
      ProductItem(19, 'Shahi Meva', 'assets/images/mouth_freshener/mf9.png', Constants.DUMMY_TEXT),
      ProductItem(20, 'Shahi Super Mint', 'assets/images/mouth_freshener/mf10.png', Constants.DUMMY_TEXT),
    ];
    _productCategories
        .add(ProductCategory(1, _categories[0], mouthFreshenerItems));

    List<ProductItem> nimcoItems = [
      ProductItem(21, 'Ballay Ballay Chewra', 'assets/images/nimco/nimco1.png', Constants.DUMMY_TEXT),
      ProductItem(22, 'Ballay Ballay Chilli Chips', 'assets/images/nimco/nimco2.png', Constants.DUMMY_TEXT),
      ProductItem(23, 'Ballay Ballay Dal Chana', 'assets/images/nimco/nimco3.png', Constants.DUMMY_TEXT),
      ProductItem(24, 'Ballay Ballay Dal Moong', 'assets/images/nimco/nimco4.png', Constants.DUMMY_TEXT),
      ProductItem(25, 'Ballay Ballay Dal Moth', 'assets/images/nimco/nimco5.png', Constants.DUMMY_TEXT),
      ProductItem(26, 'Ballay Ballay Karachi Special', 'assets/images/nimco/nimco6.png', Constants.DUMMY_TEXT),
      ProductItem(27, 'Ballay Ballay Munchy Mix', 'assets/images/nimco/nimco7.png', Constants.DUMMY_TEXT),
      ProductItem(28, 'Ballay Ballay Peanut', 'assets/images/nimco/nimco8.png', Constants.DUMMY_TEXT),
      ProductItem(29, 'Ballay Ballay Savory Mix', 'assets/images/nimco/nimco9.png', Constants.DUMMY_TEXT),
    ];
    _productCategories.add(ProductCategory(2, _categories[1], nimcoItems));

    List<ProductItem> snacksItems = [
      ProductItem(31, 'Fry-O Sweet N Sour', 'assets/images/snacks/snacks1.png', Constants.DUMMY_TEXT),
      ProductItem(32, 'Fry-O Veggie Dip', 'assets/images/snacks/snacks2.png', Constants.DUMMY_TEXT),
      ProductItem(33, 'Kinkorn Cheese', 'assets/images/snacks/snacks3.png', Constants.DUMMY_TEXT),
      ProductItem(34, 'Kinkorn Spicy', 'assets/images/snacks/snacks4.png', Constants.DUMMY_TEXT),
      ProductItem(35, 'Pop Star Achari Chaska', 'assets/images/snacks/snacks5.png', Constants.DUMMY_TEXT),
      ProductItem(36, 'Pop Star Champ', 'assets/images/snacks/snacks6.png', Constants.DUMMY_TEXT),
      ProductItem(37, 'Pop Star Chatpata Chicken', 'assets/images/snacks/snacks7.png', Constants.DUMMY_TEXT),
      ProductItem(38, 'Pop Star Cheesy Cheese', 'assets/images/snacks/snacks8.png', Constants.DUMMY_TEXT),
      ProductItem(39, 'Wheat-O Chips', 'assets/images/snacks/snacks9.png', Constants.DUMMY_TEXT),
      ProductItem(40, 'Wheat-O Karariyan', 'assets/images/snacks/snacks10.png', Constants.DUMMY_TEXT),
      ProductItem(41, 'Wheat-O Original', 'assets/images/snacks/snacks11.png', Constants.DUMMY_TEXT),
    ];
    _productCategories.add(ProductCategory(3, _categories[2], snacksItems));

    List<ProductItem> frozenFoodsItems = [
      ProductItem(51, 'Shahi Paratha Family Pack', 'assets/images/frozen_foods/ff1.png', Constants.DUMMY_TEXT),
      ProductItem(52, 'Shahi Paratha Jumbo Pack', 'assets/images/frozen_foods/ff2.png', Constants.DUMMY_TEXT),
      ProductItem(53, 'Shahi Plain Paratha', 'assets/images/frozen_foods/ff3.png', Constants.DUMMY_TEXT),
      ];
    _productCategories.add(ProductCategory(4, _categories[3], frozenFoodsItems));
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
