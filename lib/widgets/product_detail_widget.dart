import 'package:flutter/material.dart';
import 'package:shahi_catalogue/constants/constants.dart';
import 'package:shahi_catalogue/models/product_item.dart';
import 'package:shahi_catalogue/models/product_stats.dart';

class ProductDetailWidget extends StatefulWidget {
  final ProductItem? productItem;
  static String? visibleImagePath;
  final Function? callback;

  ProductDetailWidget({Key? key, this.productItem, this.callback})
      : super(key: key);

  @override
  _ProductDetailWidgetState createState() => _ProductDetailWidgetState();
}

class _ProductDetailWidgetState extends State<ProductDetailWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // double sizeImage = size.width < 900 ? 75.0 : 150;
    // double fontSizeHeading = size.width < 900 ? 16 : 18;
    // double fontSizeContent = size.width < 900 ? 14 : 16;
    double fontSizeHeading = 15;
    double fontSizeContent = 13;

    Widget _setDivider(int dividerColor) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: VerticalDivider(
          color: Color(dividerColor),
          thickness: 0.8,
        ),
      );
    }

    DataColumn _setStatsColumn(String title, double width) {
      return DataColumn(
        label: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: width,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Color(0xFFBA1B1B),
            ),
            child: Text(
              title,
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 9,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
    }

    DataCell _setDataCell(String item) {
      return DataCell(
        Container(
          alignment: Alignment.center,
          child: Text(item,
              softWrap: true,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 9, color: Colors.white)),
        ),
      );
    }
    ScrollController _scrollController = ScrollController();
    Widget _generateStatsWidget() {
      List<ProductStats> productsStats = widget.productItem!.productStats;
      return RawScrollbar(
        thumbColor: Color(Constants.redColor),
        thickness: 5,
        controller: _scrollController,
        isAlwaysShown: true,
        radius: Radius.circular(20),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: _scrollController,
            child: DataTable(
              dataRowHeight: 25,
              columnSpacing: 0,
              columns: [
                _setStatsColumn("Variant", 50),
                DataColumn(label: _setDivider(0xFFFFFFFF)),
                _setStatsColumn("Packaging Size", 60),
                DataColumn(label: _setDivider(0xFFFFFFFF)),
                _setStatsColumn("Net Weight Per Carton", 60),
                DataColumn(label: _setDivider(0xFFFFFFFF)),
                _setStatsColumn("Gross Weight Per Carton", 70),
                DataColumn(label: _setDivider(0xFFFFFFFF)),
                _setStatsColumn("Carton Dimension Lth x Wth x H", 90),
              ],
              rows: List<DataRow>.generate(
                productsStats.length,
                (index) => DataRow(
                  color: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    // Even rows will have a grey color.
                    if (index.isEven) return Color(0xFFF32F2F);
                    return Color(0xBFF32F2F);
                  }),
                  cells: [
                    _setDataCell(productsStats[index].sizeTitle),
                    DataCell(_setDivider(0xFF000000)),
                    _setDataCell(productsStats[index].packagingSize),
                    DataCell(_setDivider(0xFF000000)),
                    _setDataCell(productsStats[index].netWeight),
                    DataCell(_setDivider(0xFF000000)),
                    _setDataCell(productsStats[index].grossWeight),
                    DataCell(_setDivider(0xFF000000)),
                    _setDataCell(productsStats[index].cartonDimension),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Container(
      color: Colors.white,
      child:
          Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: fontSizeHeading,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    widget.productItem!.productDetail.productDescription,
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
                  ...widget.productItem!.productDetail.ingredients
                      .split('_')
                      .toList()
                      .map((item) {
                    return Text(
                      item,
                      style: TextStyle(
                        fontSize: fontSizeContent,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    );
                  }),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Ingrédients',
                    style: TextStyle(
                      fontSize: fontSizeHeading,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  ...widget.productItem!.productDetail.ingredientsFrench
                      .split('_')
                      .toList()
                      .map((item) {
                    return Text(
                      item,
                      style: TextStyle(
                        fontSize: fontSizeContent,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    );
                  }),
                  // For list type view
                  // ...productItem!.productDetail.ingredients
                  //     .split(', ')
                  //     .toList()
                  //     .map((item) {
                  //   return Text(
                  //     '\u2022 ' + item,
                  //     style: TextStyle(
                  //       fontSize: fontSizeContent,
                  //       color: Colors.black,
                  //       fontWeight: FontWeight.w400,
                  //     ),
                  //   );
                  // }),
                  SizedBox(
                    height: 10,
                  ),
                  // Stats Layout

                  size.width < Constants.ipadLimit
                      ? Container(
                          alignment: Alignment.centerLeft,
                          child: _generateStatsWidget())
                      : Container(
                          alignment: Alignment.center,
                          child: _generateStatsWidget()),

                  SizedBox(
                    height: 10,
                  ),

                  // Nutrition Layout Bottom
                  if (widget.productItem!.productDetail
                          .nutritionFactsImagePath !=
                      '') ...{
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              child: Image.asset(widget.productItem!
                                  .productDetail.nutritionFactsImagePath),
                              onTap: () => {
                                widget.callback!(
                                    true,
                                    widget.productItem!.productDetail
                                        .nutritionFactsImagePath),
                                // setState(
                                //   () {},
                                // ),
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              child: Image.asset(
                                  widget.productItem!.productBackImagePath),
                              onTap: () => {
                                widget.callback!(
                                    true,
                                    widget
                                        .productItem!.productBackImagePath),
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
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


    );
  }
}

// class ProductDetailWidget extends StatelessWidget {
//   final ProductItem? productItem;
//   String? visibleImagePath;
//   const ProductDetailWidget(this.productItem);
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     double sizeImage = size.width < 900 ? 75.0 : 150;
//     // double fontSizeHeading = size.width < 900 ? 16 : 18;
//     // double fontSizeContent = size.width < 900 ? 14 : 16;
//     double fontSizeHeading = 15;
//     double fontSizeContent = 13;
//
//     Widget _setDivider(int dividerColor) {
//       return Padding(
//         padding: const EdgeInsets.symmetric(vertical: 4),
//         child: VerticalDivider(
//           color: Color(dividerColor),
//           thickness: 0.8,
//         ),
//       );
//     }
//
//     DataColumn _setStatsColumn(String title, double width) {
//       return DataColumn(
//         label: Align(
//           alignment: Alignment.bottomCenter,
//           child: Container(
//             width: width,
//             padding: EdgeInsets.all(5),
//             decoration: BoxDecoration(
//               color: Color(0xFFBA1B1B),
//             ),
//             child: Text(
//               title,
//               softWrap: true,
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 9,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//         ),
//       );
//     }
//
//     DataCell _setDataCell(String item) {
//       return DataCell(
//         Container(
//           alignment: Alignment.center,
//           child: Text(item,
//               softWrap: true,
//               textAlign: TextAlign.left,
//               style: TextStyle(fontSize: 9, color: Colors.white)),
//         ),
//       );
//     }
//
//     Widget _generateStatsWidget() {
//       List<ProductStats> productsStats = productItem!.productStats;
//       return SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: DataTable(
//           dataRowHeight: 25,
//           columnSpacing: 0,
//           columns: [
//             _setStatsColumn("Variant", 50),
//             DataColumn(label: _setDivider(0xFFFFFFFF)),
//             _setStatsColumn("Packaging Size", 60),
//             DataColumn(label: _setDivider(0xFFFFFFFF)),
//             _setStatsColumn("Net Weight Per Carton", 60),
//             DataColumn(label: _setDivider(0xFFFFFFFF)),
//             _setStatsColumn("Gross Weight Per Carton", 70),
//             DataColumn(label: _setDivider(0xFFFFFFFF)),
//             _setStatsColumn("Carton Dimension Lth x Wth x H", 90),
//           ],
//           rows: List<DataRow>.generate(
//             productsStats.length,
//             (index) => DataRow(
//               color: MaterialStateProperty.resolveWith<Color?>(
//                   (Set<MaterialState> states) {
//                 // Even rows will have a grey color.
//                 if (index.isEven) return Color(0xFFF32F2F);
//                 return Color(0xBFF32F2F);
//               }),
//               cells: [
//                 _setDataCell(productsStats[index].sizeTitle),
//                 DataCell(_setDivider(0xFF000000)),
//                 _setDataCell(productsStats[index].packagingSize),
//                 DataCell(_setDivider(0xFF000000)),
//                 _setDataCell(productsStats[index].netWeight),
//                 DataCell(_setDivider(0xFF000000)),
//                 _setDataCell(productsStats[index].grossWeight),
//                 DataCell(_setDivider(0xFF000000)),
//                 _setDataCell(productsStats[index].cartonDimension),
//               ],
//             ),
//           ),
//         ),
//       );
//     }
//
//     return Container(
//       color: Colors.white,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const SizedBox(height: Constants.kPadding / 2),
//           Expanded(
//             child: SingleChildScrollView(
//               scrollDirection: Axis.vertical,
//               child: Padding(
//                   padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Description',
//                         style: TextStyle(
//                           fontSize: fontSizeHeading,
//                           color: Colors.black,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                       Text(
//                         productItem!.productDetail.productDescription,
//                         style: TextStyle(
//                           fontSize: fontSizeContent,
//                           color: Colors.black,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Text(
//                         'Ingredients',
//                         style: TextStyle(
//                           fontSize: fontSizeHeading,
//                           color: Colors.black,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                       ...productItem!.productDetail.ingredients
//                           .split('_')
//                           .toList()
//                           .map((item) {
//                         return Text(
//                           item,
//                           style: TextStyle(
//                             fontSize: fontSizeContent,
//                             color: Colors.black,
//                             fontWeight: FontWeight.w400,
//                           ),
//                         );
//                       }),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Text(
//                         'Ingrédients',
//                         style: TextStyle(
//                           fontSize: fontSizeHeading,
//                           color: Colors.black,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                       ...productItem!.productDetail.ingredientsFrench
//                           .split('_')
//                           .toList()
//                           .map((item) {
//                         return Text(
//                           item,
//                           style: TextStyle(
//                             fontSize: fontSizeContent,
//                             color: Colors.black,
//                             fontWeight: FontWeight.w400,
//                           ),
//                         );
//                       }),
//                       // For list type view
//                       // ...productItem!.productDetail.ingredients
//                       //     .split(', ')
//                       //     .toList()
//                       //     .map((item) {
//                       //   return Text(
//                       //     '\u2022 ' + item,
//                       //     style: TextStyle(
//                       //       fontSize: fontSizeContent,
//                       //       color: Colors.black,
//                       //       fontWeight: FontWeight.w400,
//                       //     ),
//                       //   );
//                       // }),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       // Stats Layout
//
//                       size.width < Constants.ipadLimit
//                           ? Container(
//                               alignment: Alignment.centerLeft,
//                               child: _generateStatsWidget())
//                           : Container(
//                               alignment: Alignment.center,
//                               child: _generateStatsWidget()),
//
//                       SizedBox(
//                         height: 10,
//                       ),
//                       // Nutrition Layout Bottom
//                       if (productItem!.productDetail.nutritionFactsImagePath !=
//                           '') ...{
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Row(
//                           children: [
//                             Expanded(
//                               child: Image.asset(productItem!
//                                   .productDetail.nutritionFactsImagePath),
//                             ),
//                             Expanded(
//                               child: Image.asset(
//                                   productItem!.productBackImagePath),
//                             ),
//                           ],
//                         ),
//                       },
//                     ],
//                   )
//
//                   // child: Text(
//                   //   productItem!.productDetail,
//                   //   style: TextStyle(
//                   //     fontSize: fontSize,
//                   //     color: Colors.black,
//                   //     fontWeight: FontWeight.w400,
//                   //   ),
//                   // ),
//                   ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
