import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shahi_catalogue/constants/constants.dart';
import 'package:shahi_catalogue/models/product_item.dart';
import 'package:shahi_catalogue/widgets/product_detail_header.dart';
import 'package:shahi_catalogue/widgets/product_detail_widget.dart';

class ProductDetailScreen extends StatefulWidget {
  static const routeName = '/product-detail';

  final ProductItem productItem;

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

    Size _size = MediaQuery.of(context).size;

    return Center(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: _size.width < Constants.iphoneLimit
              ? Constants.iphoneLimit.toDouble()
              : Constants.ipadLimit.toDouble(),
        ),
        child: Scaffold(
          appBar: AppBar(
            // automaticallyImplyLeading: false,
            backgroundColor: Color(Constants.appColor),
            title: Align(
              alignment: Alignment.topLeft,
              child: Text(
                widget.productItem.productName,
              ),
            ),
            leading: _size.width < Constants.iphoneLimit
                ? IconButton(
                    icon: Icon(Icons.arrow_back_rounded),
                    onPressed: () => Navigator.of(context).pop(),
                    color: Colors.white,
                  )
                : SizedBox.shrink(),
            // systemOverlayStyle: SystemUiOverlayStyle.dark,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(flex: 1, child: headerContent),
              Expanded(flex: 2, child: productDetail),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _generateProductDetailWidget(context, widget.productItem);
  }
}
