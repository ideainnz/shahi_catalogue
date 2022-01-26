import 'package:flutter/material.dart';
import 'package:shahi_catalogue/constants/constants.dart';
import 'package:shahi_catalogue/models/product_item.dart';
import 'package:shahi_catalogue/widgets/open_fullscreen_widget.dart';
import 'package:shahi_catalogue/widgets/product_detail_header.dart';
import 'package:shahi_catalogue/widgets/product_detail_widget.dart';

class ProductDetailScreen extends StatefulWidget {
  static const routeName = '/product-detail';
  final ProductItem productItem;

  // For wide view
  final Function callbackWide;

  ProductDetailScreen(this.productItem, this.callbackWide);

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  bool isFullscreenItemVisible = false;
  String? visibleImagePath;
  late Size _size;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  void callback(bool isFullscreenItemVisible, String visibleImagePath) {
    setState(() {
      this.isFullscreenItemVisible = isFullscreenItemVisible;
      this.visibleImagePath = visibleImagePath;

      if (_size.width > Constants.iphoneLimit)
        widget.callbackWide(isFullscreenItemVisible, visibleImagePath);
    });
  }

  Widget _generateProductDetailWidget(
      BuildContext context, ProductItem? productItem) {
    final headerContent = ProductDetailHeaderWidget(productItem);
    final productDetail = ProductDetailWidget(
      productItem: productItem,
      callback: callback,
    );

    _size = MediaQuery.of(context).size;

    return Container(
      constraints: BoxConstraints(
        maxWidth: _size.width < Constants.iphoneLimit
            ? Constants.iphoneLimit.toDouble()
            : Constants.ipadLimit.toDouble(),
      ),
      child: Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          backgroundColor: Color(Constants.appColor),
          title: Align(
            alignment: Alignment.topLeft,
            child: Text(
              widget.productItem.productName,
            ),
          ),
          leading: _size.width < Constants.iphoneLimit
              ? IconButton(
                  icon: Icon(Icons.arrow_back_rounded),
                  onPressed: () => {
                    setState(() {
                      if (isFullscreenItemVisible)
                        isFullscreenItemVisible = false;
                      else
                        Navigator.of(context).pop();
                    }),
                  },
                  color: Colors.white,
                )
              : SizedBox.shrink(),
          // systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: WillPopScope(
          onWillPop: () async {
            if (isFullscreenItemVisible) {
              widget.callbackWide(false, null);
              setState(() {
                isFullscreenItemVisible = false;
              });
              return false;
            } else
              return true;
          },
          child: Stack(
            children: [
              LayoutBuilder(
                builder: (context, constraints) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                            height:
                                constraints.maxHeight < Constants.iphoneLimit
                                    ? _size.height / 2.1
                                    : _size.height / 2.5,
                            child: headerContent),
                        productDetail,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Container(
                            constraints: BoxConstraints(minWidth: _size.width),
                            margin: EdgeInsets.symmetric(vertical: 10),
                            color: Color(Constants.redColor),
                            height: 10,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              if (isFullscreenItemVisible &&
                  _size.width < Constants.iphoneLimit) ...[
                OpenFullscreenImageWidget(visibleImagePath!),
              ],

              // LayoutBuilder(
              //   builder: (context, constraints) {
              //     if (isFullscreenItemVisible &&
              //         constraints.maxWidth < Constants.iphoneLimit)
              //       return OpenFullscreenImageWidget(visibleImagePath!);
              //     else
              //       return SizedBox.shrink();
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          repeat: ImageRepeat.repeat,
          image: AssetImage(
            'assets/shahi_app_logo_watermark.png',
          ),
        ),
      ),
      child: _generateProductDetailWidget(
        context,
        widget.productItem,
      ),
    );
  }
}
