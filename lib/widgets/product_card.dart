import 'package:flutter/material.dart';
import 'package:shahi_catalogue/constants.dart';
import 'package:shahi_catalogue/models/product_item.dart';
import 'package:shahi_catalogue/product_detail_screen.dart';
import 'package:shahi_catalogue/widgets/product_image.dart';

class ProductCard extends StatefulWidget {
  final String category;
  final ProductItem productItem;
  final ValueChanged<String>? callback;

  const ProductCard({
    required this.category,
    required this.productItem,
    this.callback,
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

    return InkWell(
      onTap: () => {
        if (widget.callback == null)
          {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailScreen(widget.productItem),
              ),
            )
          }
        else
          {widget.callback!(widget.productItem.productName)}
      },
      child: Container(
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
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Hero(
                  tag: 'icon-${widget.productItem.productId}',
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
      ),
    );
  }
}
