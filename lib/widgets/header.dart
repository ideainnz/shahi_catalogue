import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shahi_catalogue/constants.dart';
import 'package:shahi_catalogue/product_provider.dart';

class HeaderWidget extends StatefulWidget {
  final ValueChanged<int> callback;

  HeaderWidget(this.callback);

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  int selectedButtonIndex = 0;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    double sizeImage = size.width < 900 ? 100 : 200;
    double fontSize = size.width < 900 ? 14 : 17;

    List<String> productCategories =
        Provider.of<ProductProvider>(context, listen: false).getCategories();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: SafeArea(
        child: Column(
          children: [
            Image.asset(
              "assets/shahi_app_logo_white.png",
              width: sizeImage,
            ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              decoration: BoxDecoration(color: Color(Constants.bgColor),
              borderRadius: BorderRadius.circular(5)),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    productCategories.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                              selectedButtonIndex == index
                                  ? Theme.of(context).colorScheme.secondary
                                  : Color(Constants.bgColor)),
                        ),
                        onPressed: () {
                          widget.callback(index);
                          setState(() {
                            selectedButtonIndex = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            productCategories[index],
                            style: selectedButtonIndex == index
                                ? TextStyle(color: Color(Constants.bgColor),
                                fontSize: fontSize,
                                fontFamily: 'Roboto', fontWeight: FontWeight.w800)
                                : TextStyle(color: Color(Constants.appColor),
                                fontSize: fontSize,
                                fontFamily: 'Roboto', fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
