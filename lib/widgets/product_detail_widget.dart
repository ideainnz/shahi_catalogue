import 'package:flutter/material.dart';
import 'package:shahi_catalogue/constants/constants.dart';
import 'package:shahi_catalogue/models/product_item.dart';

class ProductDetailWidget extends StatelessWidget {
  final ProductItem? productItem;

  const ProductDetailWidget(this.productItem);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double sizeImage = size.width < 900 ? 75.0 : 150;
    // double fontSizeHeading = size.width < 900 ? 16 : 18;
    // double fontSizeContent = size.width < 900 ? 14 : 16;
    double fontSizeHeading = 16;
    double fontSizeContent = 14;
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Details',
                              style: TextStyle(
                                fontSize: fontSizeHeading,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              productItem!.productDetail.productDescription,
                              style: TextStyle(
                                fontSize: fontSizeContent,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Ingredients',
                              style: TextStyle(
                                fontSize: fontSizeHeading,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            ...productItem!.productDetail.ingredients
                                .split(', ')
                                .toList()
                                .map((item) {
                              return Text(
                                '\u2022 ' + item,
                                style: TextStyle(
                                  fontSize: fontSizeContent,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              );
                            }),
                            if (productItem!
                                    .productDetail.nutritionFactsImagePath !=
                                '') ...{
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Nutrition Facts',
                                style: TextStyle(
                                  fontSize: fontSizeHeading,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Image.asset(productItem!
                                  .productDetail.nutritionFactsImagePath),
                            },
                          ],
                        )

                        // child: Text(
                        //   productItem!.productDetail,
                        //   style: TextStyle(
                        //     fontSize: fontSize,
                        //     color: Colors.black,
                        //     fontWeight: FontWeight.w400,
                        //   ),
                        // ),
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
