import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shahi_catalogue/about_us.dart';
import 'package:shahi_catalogue/constants/constants.dart';
import 'package:shahi_catalogue/csr.dart';
import 'package:shahi_catalogue/models/dashboard_item.dart';
import 'package:url_launcher/url_launcher.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<DashboardItem> _optionsList = [];

  bool isLargeScreen = false;

  static const List<String> _optionNamesList = [
    "Products",
    "Export Products",
    "Media",
    "CSR",
    "About Us",
    "Contact Us"
  ];

  @override
  void initState() {
    _initDashboardList();
  }

  _initDashboardList() {
    for (int i = 0; i < 6; i++) {
      DashboardItem dbi = DashboardItem(i + 1, _optionNamesList[i],
          "assets/images/dashboard_icons/dashboard_icon_$i.png");
      _optionsList.add(dbi);
    }
  }

  _switchToScreen(int itemId) {
    String screenName;
    switch (itemId) {
      case 1:
        screenName = '/products';
        break;
      case 2:
        screenName = '/export_products';
        break;
      case 3:
        screenName = '/media';
        break;
      case 4:
        screenName = '/csr';
        break;
      case 5:
        screenName = '/about';
        break;
      case 6:
        screenName = '/contact';
        break;
      default:
        screenName = '/';
    }
    Navigator.of(context).pushNamed(screenName);
  }

  _screenPopup(BuildContext context, Size _size, Widget widget) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Color(Constants.bgColor),
          contentPadding: EdgeInsets.all(0),
          // actions: [
          //   TextButton(
          //     onPressed: () => Navigator.of(context).pop(),
          //     child: Text("Close"),
          //   ),
          // ],
          content: Container(
            width: 600,
            height: 1000,
            child: widget,
          ),
        );
      },
    );
  }

  Widget _dashboardItem(
      DashboardItem item, Size size, double fontSize, double padding) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            spreadRadius: 3,
            blurRadius: 7,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: size.height < Constants.ipadLimit ? 12 : 15,
                    horizontal: size.width < Constants.ipadLimit ? 30 : 20),
                child: Image.asset(
                  item.dashboardItemImagePath,
                ),
              ),
              // child: ProductImage(
              //   widget.category,
              //   widget.productItem,
              //   widget.callback,
              // ),
            ),
            Text(
              item.dashboardItemName,
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
    );
  }

  Widget _initDashboardGrid(Size size, double aspectRatio) {
    double fontSize = size.width < Constants.iphoneLimit ? 15 : 18;
    double padding = size.width < Constants.iphoneLimit ? 15 : 25;

    // var aspectRatio = (size.width / 2) / ((size.height / 3) - 45 - 10);
    return Scaffold(
      backgroundColor: Color(Constants.bgColor),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(Constants.appColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(
              size.width,
              50.0,
            ),
          ),
        ),
        shadowColor: Color(Constants.appColor),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Container(
            child: Image.asset(
              "assets/images/shahi_logo_red_2.png",
              // width: size.width < 900 ? 140 : 160,
              width: 140,
            ),
            transform: Matrix4.translationValues(0.0, 25.0, 0.0),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
              child: GridView.count(
                childAspectRatio: aspectRatio,
                controller: ScrollController(),
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: _optionsList
                    .map(
                      (item) => MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          child: _dashboardItem(item, size, fontSize, padding),
                          onTap: () => {
                            if (item.dashboardItemId == 4)
                              {
                                if (isLargeScreen)
                                  _screenPopup(context, size, CSRScreen())
                                else
                                  _switchToScreen(item.dashboardItemId)
                              }
                            else if (item.dashboardItemId == 5)
                              {
                                if (!isLargeScreen)
                                  _switchToScreen(item.dashboardItemId)
                                // if (isLargeScreen)
                                //   _screenPopup(context, size, AboutUsScreen())
                                // else
                                //   _switchToScreen(item.dashboardItemId)
                              }
                            else
                              {
                                _switchToScreen(item.dashboardItemId),
                              },
                          },
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            height: 45,
            color: Color(Constants.appColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: GestureDetector(
                    child: Image.asset(
                      "assets/images/social_icons/facebook_white_icon.png",
                      height: 50,
                    ),
                    onTap: () => _launchInBrowser(Constants.SHAHI_FACEBOOK),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: Image.asset(
                      "assets/images/social_icons/youtube_white_icon.png",
                      height: 50,
                    ),
                    onTap: () => _launchInBrowser(Constants.SHAHI_YOUTUBE),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: Image.asset(
                      "assets/images/social_icons/instagram_white_icon.png",
                      height: 50,
                    ),
                    onTap: () => _launchInBrowser(Constants.SHAHI_INSTAGRAM),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        // forceSafariVC: false,
        // forceWebView: false,
        // headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // double fontSize = size.width < Constants.iphoneLimit ? 15 : 18;
    // double padding = size.width < Constants.iphoneLimit ? 15 : 25;
    return Center(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: size.width < Constants.iphoneLimit
              ? Constants.iphoneLimit.toDouble()
              : Constants.ipadLimit.toDouble(),
        ),
        child: Stack(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < Constants.ipadLimit) {
                  isLargeScreen = false;
                  double maxHeight =
                  constraints.maxHeight > 500 ? constraints.maxHeight : 500;
                  var aspectRatio = (constraints.maxWidth / 2) /
                      ((maxHeight / 3) - 45 - 15);
                  return _initDashboardGrid(size, aspectRatio);
                } else {
                  isLargeScreen = true;
                  // var aspectRatio = (constraints.maxWidth / 5) /
                  //     ((constraints.maxHeight / 3) - 45 - 30);
                  double maxHeight =
                      constraints.maxHeight > 500 ? constraints.maxHeight : 500;
                  var aspectRatio =
                      (constraints.maxWidth / 5) / ((maxHeight / 3) - 45 - 30);
                  return Row(
                    children: [
                      Expanded(
                        // flex: size.width < Constants.ipadLimit ? 5 : 4,
                        flex: 5,
                        child: _initDashboardGrid(size, aspectRatio),
                      ),
                      Expanded(
                        // flex: size.width < Constants.ipadLimit ? 5 : 6,
                        flex: 6,
                        child: AboutUsScreen(false),
                      ),
                    ],
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
