import 'package:flutter/material.dart';
import 'package:shahi_catalogue/constants.dart';
import 'package:shahi_catalogue/models/product_item.dart';

class ProductDetailHeaderWidget extends StatelessWidget {
  final ProductItem? productItem;

  const ProductDetailHeaderWidget(this.productItem);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final textHeaderContent = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //  const SizedBox(height: 10.0),
        // const Icon(
        //   Icons.fastfood,
        //   color: Colors.white,
        //   size: 40.0,
        // ),
        Container(
          width: 90.0,
          child: const Divider(color: Color(Constants.appColor)),
        ),
        Text(
          productItem!.productName,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white, fontSize: 25.0),
        ),
      ],
    );

    return Stack(
      children: <Widget>[
        // Container(
        //   padding: const EdgeInsets.only(left: 15),
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //         image: AssetImage(productItem!.productImagePath),
        //         fit: BoxFit.cover),
        //   ),
        // ),
        Container(
          padding: const EdgeInsets.all(25),
          width: size.width,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.1),
          ),
          child: Hero(
            tag: 'icon-${productItem!.productId}',
            child: Image.asset(
              productItem!.productImagePath,
              // width: sizeImage,
              // height: sizeImage,
            ),
          ),
          // Image.asset(productItem!.productImagePath, fit: BoxFit.contain),
        ),
        // if (size.width < Constants.ipadLimit) ...{
        //   Positioned(
        //     left: 10.0,
        //     top: 40.0,
        //     child: InkWell(
        //       onTap: () {
        //         Navigator.pop(context);
        //       },
        //       child: const Icon(
        //         Icons.arrow_back_rounded,
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
        // }
      ],
    );
  }
}
