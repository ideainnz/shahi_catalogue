
import 'package:shahi_catalogue/models/product_detail_model.dart';

class ProductItem {
  int productId;
  String productName;
  String productImagePath;
  // String productDetail;
  ProductDetail productDetail;

  ProductItem(this.productId, this.productName, this.productImagePath, this.productDetail);

}