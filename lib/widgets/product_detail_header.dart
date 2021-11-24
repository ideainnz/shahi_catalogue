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

    return Container(
      padding: EdgeInsets.all(padding),
      width: size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.1),
      ),
      child: size.width < Constants.iphoneLimit
          ? Hero(
              tag: 'icon-${productItem!.productId}',
              child: Image.asset(
                productItem!.productImagePath,
              ),
            )
          : Image.asset(
              productItem!.productImagePath,
            ),
      // Image.asset(productItem!.productImagePath, fit: BoxFit.contain),
    );
  }
}
