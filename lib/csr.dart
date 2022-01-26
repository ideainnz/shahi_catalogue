import 'package:flutter/material.dart';
import 'package:shahi_catalogue/constants/constants.dart';
import 'package:shahi_catalogue/widgets/open_fullscreen_widget.dart';

class CSRScreen extends StatefulWidget {
  const CSRScreen({Key? key}) : super(key: key);

  @override
  _CSRScreenState createState() => _CSRScreenState();
}

class _CSRScreenState extends State<CSRScreen> {
  bool isFullscreenItemVisible = false;
  String? visibleImagePath;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: size.width < Constants.iphoneLimit
              ? Constants.iphoneLimit.toDouble()
              : Constants.ipadLimit.toDouble(),
        ),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(Constants.appColor),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('CSR'),
                Image.asset('assets/shahi_app_logo_white.png',
                    height: 25, width: 60),
              ],
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_rounded),
              onPressed: () {
                setState(() {
                  if (isFullscreenItemVisible)
                    isFullscreenItemVisible = false;
                  else
                    Navigator.of(context).pop();
                });
              },
            ),
          ),
          body: WillPopScope(
            onWillPop: () async {
              if (isFullscreenItemVisible) {
                setState(() {
                  isFullscreenItemVisible = false;
                });
                return false;
              } else
                return true;
            },
            child: initCSR(context, size),
          ),
        ),
      ),
    );
  }

  Widget initCSR(BuildContext context, Size size) {
    double padding = size.width < Constants.iphoneLimit ? 15 : 25;

    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: padding),
          child: LayoutBuilder(
            builder: (context, constraints) {
              var aspectRatio = constraints.maxWidth < Constants.ipadLimit
                  ? (constraints.maxWidth / 2) /
                      ((constraints.maxHeight / 3) - 45 - 10)
                  : (constraints.maxWidth / 2) /
                      ((constraints.maxHeight / 2) - 45 - 10);
              return _getImagesGridWidget(context, size, aspectRatio);
            },
          ),
          // child: _getImagesGridWidget(context, size)),
        ),
        if (isFullscreenItemVisible) ...[
          OpenFullscreenImageWidget(visibleImagePath!),
        ],
      ],
    );
  }

  Widget _getImagesGridWidget(
      BuildContext context, Size size, var aspectRatio) {
    // var aspectRatio = (size.width / 2) / ((size.height / 3) - 45 - 10);
    double padding = size.width < Constants.iphoneLimit ? 15 : 25;
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              SizedBox(
                height: 15,
              ),
              Center(
                child: Image.asset(
                  "assets/images/csr/csr_header.jpg",
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              _getCSRWidget(
                  context,
                  "assets/images/csr/csr_health_care.jpg",
                  "assets/images/csr/csr_icons/health_care_icon.png",
                  "Health Care",
                  Constants.HEALTH_CARE_TEXT,
                  size),
              SizedBox(
                height: 25,
              ),
              _getCSRWidget(
                  context,
                  "assets/images/csr/csr_education.jpg",
                  "assets/images/csr/csr_icons/education_icon.png",
                  "Education",
                  Constants.EDUCATION_TEXT,
                  size),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: size.width < Constants.ipadLimit ? 2 : 3,
              childAspectRatio: aspectRatio,
              mainAxisSpacing: 5.0,
              crossAxisSpacing: 5.0),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  child: FadeInImage.assetNetwork(
                    placeholder: 'assets/shahi_app_logo_watermark.png',
                    image: 'assets/images/csr/more/csr${index + 1}.jpg',
                  ),
                  onTap: () => {
                    setState(
                      () {
                        isFullscreenItemVisible = true;
                        visibleImagePath =
                            'assets/images/csr/more/csr${index + 1}.jpg';
                      },
                    ),
                  },
                ),
              );
            },
            childCount: 6,
          ),
        ),
      ],
    );
  }

  // Widget _getImagesGridWidget(BuildContext context, Size size) {
  //   var aspectRatio = (size.width / 2) / ((size.height / 3) - 45 - 10);
  //
  //   return Expanded(
  //     child: GridView.builder(
  //       physics: NeverScrollableScrollPhysics(),
  //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //         childAspectRatio: aspectRatio,
  //         crossAxisCount: 3,
  //         mainAxisSpacing: 5,
  //         crossAxisSpacing: 5,
  //       ),
  //       itemCount: 6,
  //       itemBuilder: (context, index) {
  //         return MouseRegion(
  //           cursor: SystemMouseCursors.click,
  //           child: GestureDetector(
  //             child: Image.asset('assets/images/csr/more/csr${index + 1}.jpg'),
  //             onTap: () => {
  //               setState(
  //                 () {
  //                   isFullscreenItemVisible = true;
  //                   visibleImagePath =
  //                       'assets/images/csr/more/csr${index + 1}.jpg';
  //                 },
  //               ),
  //             },
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }

  _csrPopup(BuildContext context, String imagePath, String iconPath,
      String heading, String desc, Size size) {
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
            child: _getCSRClickedWidget(
                context, imagePath, iconPath, heading, desc, size),
          ),
        );
      },
    );
  }

  // Click on CSR Item
  Widget _getCSRClickedWidget(BuildContext context, String imagePath,
      String iconPath, String heading, String desc, Size size) {
    double sizeImage = size.width < Constants.iphoneLimit ? 90.0 : 120;
    double fontSizeHeading = size.width < Constants.iphoneLimit ? 17 : 19;
    double fontSizeText = size.width < Constants.iphoneLimit ? 14 : 15;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(Constants.appColor),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("CSR"),
            Image.asset('assets/shahi_app_logo_white.png',
                height: 25, width: 60),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    iconPath,
                    height: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    heading.toUpperCase(),
                    style: TextStyle(
                        fontSize: fontSizeHeading, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: Text(
                desc,
                style: TextStyle(
                  fontSize: fontSizeText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // CSR Item
  Widget _getCSRWidget(BuildContext context, String imagePath, String iconPath,
      String heading, String desc, Size size) {
    double sizeImage = size.width < Constants.ipadLimit ? 90 : 200;
    double fontSizeHeading = size.width < Constants.iphoneLimit ? 17 : 19;
    double fontSizeText = size.width < Constants.iphoneLimit ? 14 : 15;
    int maxDescLines = size.width < Constants.ipadLimit ? 4 : 100;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  iconPath,
                  height: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  heading.toUpperCase(),
                  style: TextStyle(
                      fontSize: fontSizeHeading, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imagePath,
                  height: sizeImage,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          desc,
                          maxLines: maxDescLines,
                          style: TextStyle(
                            fontSize: fontSizeText,
                            overflow: size.width < Constants.ipadLimit
                                ? TextOverflow.ellipsis
                                : TextOverflow.visible,
                          ),
                        ),
                        if (size.width < Constants.ipadLimit) ...[
                          Text(
                            'Click to view more',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          )
                        ],
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        onTap: () => {
          if (size.width < Constants.ipadLimit)
            _csrPopup(context, imagePath, iconPath, heading, desc, size),
        },
      ),
    );
  }
}
