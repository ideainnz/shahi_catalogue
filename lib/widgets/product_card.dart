import 'package:flutter/material.dart';
import 'package:shahi_catalogue/constants/constants.dart';
import 'package:shahi_catalogue/models/product_item.dart';
import 'package:shahi_catalogue/product_detail.dart';
import 'package:shahi_catalogue/widgets/product_image.dart';
import 'package:shahi_catalogue/widgets/zoom_product_item.dart';

class ProductCard extends StatefulWidget {
  final String category;
  final ProductItem productItem;

  // final ValueChanged<String>? callback;

  const ProductCard({
    required this.category,
    required this.productItem,
    // this.callback,
  });

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double sizeImage = size.width < 900 ? 75.0 : 150;
    double fontSize = size.width < 900 ? 15 : 17;
    double padding = size.width < Constants.iphoneLimit ? 15 : 25;

    bool isZoomProductVisible = false;

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            spreadRadius: 3,
            blurRadius: 7,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: size.width < Constants.iphoneLimit
                ? Hero(
                    tag: 'icon-${widget.productItem.productId}',
                    child: Padding(
                      padding: EdgeInsets.all(padding),
                      child: Image.asset(
                        widget.productItem.productImagePath,
                      ),
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.all(padding),
                    child: Image.asset(
                      widget.productItem.productImagePath,
                    ),
                  ),
            // child: ProductImage(
            //   widget.category,
            //   widget.productItem,
            //   widget.callback,
            // ),
          ),
          SizedBox(height: 25),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(Constants.redColor),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              child: Text(
                widget.productItem.productName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  // color: Colors.black87,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: fontSize,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
