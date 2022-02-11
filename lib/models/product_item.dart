
import 'package:shahi_catalogue/models/product_detail_model.dart';
import 'package:shahi_catalogue/models/product_stats.dart';

class ProductItem {
  int productId;
  String productName;
  String productImagePath;
  String productBackImagePath;
  String productPrice;
  String productCategoryName;
  String productTypeName;
  int productNameColor;
  int productPriceBGColor;

  // String productDetail;
  ProductDetail productDetail;
  List<ProductStats> productStats;

  ProductItem(this.productId, this.productName, this.productImagePath,
      this.productBackImagePath, this.productPrice, this.productCategoryName,
      this.productTypeName, this.productNameColor, this.productPriceBGColor,
      this.productDetail, this.productStats);

}