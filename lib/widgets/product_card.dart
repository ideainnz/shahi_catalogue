import 'package:flutter/material.dart';
import 'package:shahi_catalogue/constants.dart';
import 'package:shahi_catalogue/models/product_item.dart';
import 'package:shahi_catalogue/product_detail_screen.dart';
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
        color: Color(Constants.bgColor),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            offset: const Offset(4, 4),
            blurRadius: 5,
            color: Colors.black.withOpacity(0.2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: size.width < Constants.iphoneLimit
                  ? Hero(
                      tag: 'icon-${widget.productItem.productId}',
                      child: Image.asset(
                        widget.productItem.productImagePath,
                      ),
                    )
                  : Image.asset(
                      widget.productItem.productImagePath,
                    ),
              // child: ProductImage(
              //   widget.category,
              //   widget.productItem,
              //   widget.callback,
              // ),
            ),
            SizedBox(height: 25),
            Text(
              widget.productItem.productName,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: fontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
