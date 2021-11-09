
import 'package:shahi_catalogue/models/product_item.dart';

class ProductCategory{
  int categoryId;
  String categoryName;
  List<ProductItem> productItems;

  ProductCategory(this.categoryId, this.categoryName, this.productItems);
}