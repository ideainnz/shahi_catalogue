import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:shahi_catalogue/constants.dart';
import 'package:shahi_catalogue/models/product_category.dart';
import 'package:shahi_catalogue/models/product_item.dart';
import 'package:shahi_catalogue/product_detail_screen.dart';
import 'package:shahi_catalogue/product_provider.dart';
import 'package:shahi_catalogue/widgets/header.dart';
import 'package:shahi_catalogue/widgets/product_card.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  Widget _buildListWidget(ProductCategory productCategory, bool largeScreen) {
    String currentCategory =
        Provider.of<ProductProvider>(context).getCategories()[currentIndex];

    return Scaffold(
      body: Container(
        padding:
            const EdgeInsets.only(top: kIsWeb ? Constants.kPadding / 3 : 0),
        color: Theme.of(context).primaryColor,
        child: SafeArea(
          child: Column(
            children: [
              HeaderWidget(_changeCategory),
              Expanded(
                flex: 2,
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Constants.kPadding),
                  itemCount: productCategory.productItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) => ProductCard(
                    category: currentCategory,
                    productItem: productCategory.productItems[index],
                    callback: largeScreen ? _changeProductWidget : null,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  int currentIndex = 0;

  // FoodDetailsWidget? currentFoodDetail;
  ProductItem? currentProductItem;

  _changeCategory(int index) {
    ProductProvider productProvider =
        Provider.of<ProductProvider>(context, listen: false);
    setState(() {
      currentIndex = index;
      currentProductItem =
          productProvider.getProductByCategory(currentIndex).productItems.first;
    });
  }

  _changeProductWidget(String productName) {
    print("CLICKED " + productName);
    ProductProvider productProvider =
        Provider.of<ProductProvider>(context, listen: false);
    ProductItem productItem = productProvider
        .getProductByCategory(currentIndex)
        .productItems
        .where((pi) => pi.productName == productName)
        .first;
    setState(() {
      currentProductItem = productItem;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollBarController = ScrollController();
    Size _size = MediaQuery.of(context).size;
    ProductProvider productProvider =
        Provider.of<ProductProvider>(context, listen: false);
    ProductCategory productCategory =
        productProvider.getProductByCategory(currentIndex);
    currentProductItem ??= productCategory.productItems.first;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(58, 66, 86, 1.0),
      body: Scrollbar(
        controller: _scrollBarController,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth < Constants.iphoneLimit) {
              return _buildListWidget(productCategory, false);
            } else {
              return Row(
                children: [
                  Expanded(
                    flex: _size.width < Constants.ipadLimit ? 5 : 4,
                    child: _buildListWidget(productCategory, true),
                  ),
                  Expanded(
                    flex: _size.width < Constants.ipadLimit ? 5 : 6,
                    child: ProductDetailScreen(currentProductItem!),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
