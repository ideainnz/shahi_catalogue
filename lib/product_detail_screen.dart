import 'package:flutter/material.dart';
import 'package:shahi_catalogue/constants.dart';
import 'package:shahi_catalogue/models/product_item.dart';
import 'package:shahi_catalogue/widgets/product_detail_header.dart';
import 'package:shahi_catalogue/widgets/product_detail_widget.dart';

class ProductDetailScreen extends StatefulWidget {
  static const routeName = '/product-detail';

  ProductItem productItem;

  ProductDetailScreen(this.productItem);

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  Widget _generateProductDetailWidget(
      BuildContext context, ProductItem? productItem) {
    final headerContent = ProductDetailHeaderWidget(productItem);
    final productDetail = ProductDetailWidget(productItem);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(Constants.appColor),
        title: Text(
          widget.productItem.productName,
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
        ),
        brightness: Brightness.dark,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(flex: 1, child: headerContent),
          Expanded(flex: 2, child: productDetail),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _generateProductDetailWidget(context, widget.productItem);
  }
}
