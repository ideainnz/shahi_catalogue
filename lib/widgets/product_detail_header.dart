import 'package:flutter/material.dart';
import 'package:shahi_catalogue/constants/constants.dart';
import 'package:shahi_catalogue/models/product_item.dart';

class ProductDetailHeaderWidget extends StatelessWidget {
  final ProductItem? productItem;

  const ProductDetailHeaderWidget(this.productItem);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double sizeImage = size.width < 900 ? 75.0 : 150;
    double fontSize = size.width < 900 ? 15 : 17;
    double padding = size.width < Constants.iphoneLimit ? 15 : 25;
    // final textHeaderContent = Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     //  const SizedBox(height: 10.0),
    //     // const Icon(
    //     //   Icons.fastfood,
    //     //   color: Colors.white,
    //     //   size: 40.0,
    //     // ),
    //     Container(
    //       width: 90.0,
    //       child: const Divider(color: Color(Constants.appColor)),
    //     ),
    //     Text(
    //       productItem!.productName,
    //       textAlign: TextAlign.center,
    //       style: const TextStyle(color: Colors.white, fontSize: 25.0),
    //     ),
    //   ],
    // );

    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            // color: Theme.of(context).primaryColor.withOpacity(0.1),
            image: DecorationImage(
                image: AssetImage('assets/images/header_product_detail.png'),
                fit: BoxFit.fill),
          ),
          child: OverflowBox(
            maxHeight: 200,
            minHeight: size.width < Constants.ipadLimit ? 200 : 150,
            alignment: Alignment.bottomCenter,
            child: size.width < Constants.iphoneLimit
                ? Hero(
                    tag: 'icon-${productItem!.productId}',
                    child: Image.asset(
                      productItem!.productImagePath,
                      alignment: Alignment.bottomCenter,
                    ),
                  )
                : Image.asset(
                    productItem!.productImagePath,
                    alignment: Alignment.bottomCenter,
                  ),
          ),
          // Image.asset(productItem!.productImagePath, fit: BoxFit.contain),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 25, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  !productItem!.productCategoryName.contains('/')
                      ? Text(
                          productItem!.productCategoryName,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(Constants.redColor),
                            fontSize: fontSize + 5,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      : Image.asset(productItem!.productCategoryName,
                  width: 60,),
                  Text(
                    productItem!.productName,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(productItem!.productNameColor),
                      fontSize: fontSize + 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 3),
                    color: Color(productItem!.productPriceBGColor),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        productItem!.productPrice,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fontSize - 5,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 25),
              decoration: BoxDecoration(
                // shape: BoxShape.rectangle,
                // color: Color(Constants.redColor,),
                image: DecorationImage(
                    image: AssetImage('assets/images/bg_category_title.png',),
                    alignment: Alignment.topRight,
                fit: BoxFit.fill),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 3, 15, 8),
                child: Text(
                  productItem!.productTypeName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: fontSize + 4,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
