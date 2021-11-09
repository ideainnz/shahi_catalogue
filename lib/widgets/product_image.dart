import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:shahi_catalogue/constants.dart';
import 'package:shahi_catalogue/models/product_item.dart';
import 'package:shahi_catalogue/product_detail_screen.dart';
import 'package:shahi_catalogue/product_provider.dart';

// class ProductImage extends StatefulWidget {
//   final String category;
//   final ProductItem productItem;
//   final ValueChanged<String>? callback;
//
//   ProductImage(this.category, this.productItem, this.callback);
//
//   @override
//   State<ProductImage> createState() => _ProductImageState();
// }
//
// class _ProductImageState extends State<ProductImage> {
//   var _loading = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: FractionalOffset.topCenter,
//       child: GestureDetector(
//         behavior: HitTestBehavior.opaque,
//         onTap: () => {
//           if (widget.callback == null)
//             {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => ProductDetailScreen(widget.productItem),
//                 ),
//               )
//             }
//           else
//             {widget.callback!(widget.productItem.productName)}
//         },
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(300.0),
//           child: Hero(
//             tag: 'icon-${widget.productItem.productId}',
//             child: Image.asset(
//               widget.productItem.productImagePath,
//             ),
//             // child: Image.asset(
//             //   widget.productItem.productImagePath,
//             //   height: Constants.standardSize,
//             //   width: Constants.standardSize,
//             // ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class ProductImage extends StatelessWidget {
  final String category;
  final ProductItem productItem;
  final ValueChanged<String>? callback;

  ProductImage(this.category, this.productItem, this.callback);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: FractionalOffset.topCenter,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => {
          if (callback == null)
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(productItem),
                ),
              )
            }
          else
            {callback!(productItem.productName)}
        },
        child: Hero(
          tag: 'icon-${productItem.productId}',
          child: Image.asset(
            productItem.productImagePath,
          ),
          // child: Image.asset(
          //   widget.productItem.productImagePath,
          //   height: Constants.standardSize,
          //   width: Constants.standardSize,
          // ),
        ),
      ),
    );
  }
}
