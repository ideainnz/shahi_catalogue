import 'package:flutter/material.dart';
import 'package:shahi_catalogue/constants/constants.dart';

class AboutUsScreen extends StatelessWidget {
  final bool isBackButtonVisible;

  AboutUsScreen(this.isBackButtonVisible);

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
                Text('About Us'),
                Image.asset('assets/shahi_app_logo_white.png',
                    height: 25, width: 60),
              ],
            ),
            leading: isBackButtonVisible
                ? IconButton(
                    icon: Icon(Icons.arrow_back_rounded),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                : SizedBox.shrink(),
          ),
          body: initAboutUs(context, size),
        ),
      ),
    );
  }

  Widget initAboutUs(BuildContext context, Size size) {
    // double sizeImage = size.width < Constants.iphoneLimit ? 75.0 : 150;
    double fontSizeHeading = size.width < Constants.iphoneLimit ? 17 : 19;
    double fontSizeText = size.width < Constants.iphoneLimit ? 14 : 15;
    double padding = size.width < Constants.iphoneLimit ? 15 : 25;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: padding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Center(
              child: Image.asset(
                "assets/images/about_us_header.jpg",
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/about_icons/about_us_red.png",
                  height: 25,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "About Us".toUpperCase(),
                  style: TextStyle(
                      fontSize: fontSizeHeading, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Text(
              Constants.ABOUT_US_TEXT,
              style: TextStyle(fontSize: fontSizeText),
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/about_icons/vision.png",
                  height: 25,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Vision".toUpperCase(),
                  style: TextStyle(
                      fontSize: fontSizeHeading, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Text(
              Constants.VISION_TEXT,
              style: TextStyle(fontSize: fontSizeText),
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/about_icons/mission.png",
                  height: 25,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Mission".toUpperCase(),
                  style: TextStyle(
                      fontSize: fontSizeHeading, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Text(
              Constants.MISSION_TEXT,
              style: TextStyle(fontSize: fontSizeText),
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/about_icons/values.png",
                  height: 25,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Values".toUpperCase(),
                  style: TextStyle(
                      fontSize: fontSizeHeading, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Text(
              Constants.VALUES_TEXT,
              style: TextStyle(fontSize: fontSizeText),
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/about_icons/global_foot_prints.png",
                  height: 25,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Global Foot Print".toUpperCase(),
                  style: TextStyle(
                      fontSize: fontSizeHeading, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Text(
              Constants.GLOBAL_FOOT_PRINT_TEXT,
              style: TextStyle(fontSize: fontSizeText),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
