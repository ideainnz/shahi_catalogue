import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:shahi_catalogue/about_us_screen.dart';
import 'package:shahi_catalogue/constants.dart';
import 'package:shahi_catalogue/models/product_category.dart';
import 'package:shahi_catalogue/models/product_item.dart';
import 'package:shahi_catalogue/product_detail_screen.dart';
import 'package:shahi_catalogue/product_provider.dart';
import 'package:shahi_catalogue/widgets/header.dart';
import 'package:shahi_catalogue/widgets/product_card.dart';
import 'package:shahi_catalogue/widgets/zoom_product_item.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  String productImagePath = '';
  bool isZoomProductVisible = false;

  Widget _buildListWidget(int categoryIndex, bool largeScreen) {
    String currentCategory =
        Provider.of<ProductProvider>(context).getCategories()[categoryIndex];

    ProductCategory productCategory = Provider.of<ProductProvider>(context)
        .getProductByCategory(categoryIndex);

    ValueChanged<String>? callback;

    return Scaffold(
      body: Container(
        padding:
            const EdgeInsets.only(top: kIsWeb ? Constants.kPadding / 3 : 0),
        color: Theme.of(context).primaryColor,
        child: SafeArea(
          child: Column(
            children: [
              // HeaderWidget(_changeCategory),
              SizedBox(
                height: 20,
              ),
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
                  itemBuilder: (context, index) => MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      child: ProductCard(
                        category: currentCategory,
                        productItem: productCategory.productItems[index],
                        // callback: largeScreen ? _changeProductWidget : null,
                      ),
                      onTap: () => {
                        callback = largeScreen ? _changeProductWidget : null,
                        if (callback == null)
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductDetailScreen(
                                    productCategory.productItems[index]),
                              ),
                            )
                          }
                        else
                          {
                            callback!(productCategory
                                .productItems[index].productName),
                          }
                      },
                      onLongPress: () => {
                        setState(() {
                          // productImagePath = productCategory
                          //     .productItems[index].productImagePath;
                          isZoomProductVisible = true;
                          currentProductItem =
                              productCategory.productItems[index];
                          // ZoomProductItemWidget(productCategory.productItems[index], isZoomProductVisible);
                        }),
                        // setState(() {
                        //   isZoomProductVisible = true;
                        //   ZoomProductItemWidget(productCategory.productItems[index], isZoomProductVisible);
                        // }),
                      },
                      onLongPressEnd: (details) => {
                        setState(() {
                          isZoomProductVisible = false;
                          // ZoomProductItemWidget(productCategory.productItems[index], isZoomProductVisible);
                        }),
                        // setState(() {
                        //   isZoomProductVisible = false;
                        //   ZoomProductItemWidget(productCategory.productItems[index], isZoomProductVisible);
                        // }),
                      },
                    ),
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

  // late TabController tabController;

  // @override
  // void initState() {
  //   super.initState();
  //   tabController = TabController(
  //     length: 4,
  //     vsync: this,
  //   );
  //   tabController.addListener(() {
  //     setState(() {
  //       ProductProvider productProvider =
  //           Provider.of<ProductProvider>(context, listen: false);
  //       currentIndex = tabController.index;
  //       currentProductItem = productProvider
  //           .getProductByCategory(currentIndex)
  //           .productItems
  //           .first;
  //     });
  //     // tabController.animateTo(tabController.index);
  //   });
  // }
  //
  // @override
  // void dispose() {
  //   tabController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    // final ScrollController _scrollBarController = ScrollController();
    Size _size = MediaQuery.of(context).size;
    ProductProvider productProvider =
        Provider.of<ProductProvider>(context, listen: false);

    List<String> productCategories = productProvider.getCategories();
    ProductCategory productCategory =
        productProvider.getProductByCategory(currentIndex);
    currentProductItem ??= productCategory.productItems.first;
    // currentProductItem = productCategory.productItems.first;
    print("CURRENT PRODUCT ITEM: " + currentProductItem!.productName);

    List<Tab> tabs = List.generate(
        productCategories.length,
        (index) => Tab(
              // icon: Image.asset(
              //   'assets/images/tab_icons/${productCategories[index].contains(' ') ? productCategories[index].toLowerCase().replaceFirst(' ', '_') : productCategories[index].toLowerCase()}_tab_icon.png',
              //   height: 25,
              // ),
              text: productCategories[index],
            ),
        growable: false);

    return DefaultTabController(
      length: productCategories.length,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8.0),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Shahi Catalogue'),
                Image.asset('assets/shahi_app_logo_white.png',
                    height: 25, width: 80),
              ],
            ),
          ),
          bottom: TabBar(
            tabs: tabs,
            isScrollable: true,
            // controller: tabController,
            // indicator: BoxDecoration(
            //     borderRadius: BorderRadius.circular(25),
            //     color: Color(Constants.bgColor),
            // ),
            indicatorWeight: 4.0,
            indicatorColor: Color(Constants.bgColor),
            indicatorSize: TabBarIndicatorSize.label,
            onTap: (index) {
              setState(() {
                currentIndex = index;
                currentProductItem = productProvider
                    .getProductByCategory(currentIndex)
                    .productItems
                    .first;
              });
            },
          ),
        ),
        body: Stack(
          children: [
            TabBarView(
              // controller: tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(
                productCategories.length,
                (index) {
                  return Stack(
                    children: [
                      LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          if (constraints.maxWidth < Constants.iphoneLimit) {
                            return _buildListWidget(index, false);
                          } else {
                            return Row(
                              children: [
                                Expanded(
                                  flex:
                                      _size.width < Constants.ipadLimit ? 5 : 4,
                                  child: _buildListWidget(index, true),
                                ),
                                Expanded(
                                  flex:
                                      _size.width < Constants.ipadLimit ? 5 : 6,
                                  child:
                                      ProductDetailScreen(currentProductItem!),
                                ),
                              ],
                            );
                          }
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, bottom: 20),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: FloatingActionButton.extended(
                              icon: Image.asset(
                                "assets/images/about_us.png",
                                height: 30,
                                width: 30,
                              ),
                              label: Text("About Us", style: TextStyle(fontSize: 16.0)),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => AboutUsScreen(),
                                ));
                              }),
                        ),
                      ),
                      if (isZoomProductVisible) ...[
                        ZoomProductItemWidget(currentProductItem!),
                      ]
                    ],
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );

    // return Scaffold(
    //   backgroundColor: const Color.fromRGBO(58, 66, 86, 1.0),
    //   body: Scrollbar(
    //     controller: _scrollBarController,
    //     child: LayoutBuilder(
    //       builder: (BuildContext context, BoxConstraints constraints) {
    //         if (constraints.maxWidth < Constants.iphoneLimit) {
    //           return _buildListWidget(productCategory, false);
    //         } else {
    //           return Row(
    //             children: [
    //               Expanded(
    //                 flex: _size.width < Constants.ipadLimit ? 5 : 4,
    //                 child: _buildListWidget(productCategory, true),
    //               ),
    //               Expanded(
    //                 flex: _size.width < Constants.ipadLimit ? 5 : 6,
    //                 child: ProductDetailScreen(currentProductItem!),
    //               ),
    //             ],
    //           );
    //         }
    //       },
    //     ),
    //   ),
    // );
  }
}
