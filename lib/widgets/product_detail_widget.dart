import 'package:flutter/material.dart';
import 'package:shahi_catalogue/constants.dart';
import 'package:shahi_catalogue/models/product_item.dart';

class ProductDetailWidget extends StatelessWidget {
  final ProductItem? productItem;

  const ProductDetailWidget(this.productItem);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double sizeImage = size.width < 900 ? 75.0 : 150;
    double fontSize = size.width < 900 ? 14 : 16;
    return Container(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Hero(
          //   tag: 'icon-${productItem!.productId}',
          //   child: Image.asset(
          //     productItem!.productImagePath,
          //     width: sizeImage,
          //     height: sizeImage,
          //   ),
          // ),
          // const SizedBox(
          //   width: 20,
          // ),
          Expanded(
            child: Column(
              children: [
                const SizedBox(height: Constants.kPadding / 2),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                        15.0,
                        15.0,
                        15.0,
                        20.0,
                      ),
                      child: Text(
                        productItem!.productDetail,
                        style: TextStyle(
                          fontSize: fontSize,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
