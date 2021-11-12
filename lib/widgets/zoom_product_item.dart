import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shahi_catalogue/models/product_item.dart';

class ZoomProductItemWidget extends StatefulWidget {
  final ProductItem productItem;

  ZoomProductItemWidget(this.productItem);

  @override
  _ZoomProductItemWidgetState createState() => _ZoomProductItemWidgetState();
}

class _ZoomProductItemWidgetState extends State<ZoomProductItemWidget> {
  Widget showZoomedImage() {
    print("PRESSED_2");
    return Stack(
      children: [
        BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
          ),
          child: Container(
            color: Colors.black.withOpacity(0.6),
          ),
        ),
        Container(
          padding: EdgeInsets.all(35),
          child: Center(
            child: Image.asset(
              widget.productItem.productImagePath,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return showZoomedImage();
      },
    );
  }
}
