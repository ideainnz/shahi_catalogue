import 'dart:ui';

import 'package:flutter/material.dart';

class OpenFullscreenImageWidget extends StatelessWidget {
  final String imagePath;

  const OpenFullscreenImageWidget(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
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
          // Padding(
          //   padding: const EdgeInsets.all(15.0),
          //   child: IconButton(
          //     alignment: Alignment.topRight,
          //     icon: Icon(Icons.close),
          //     onPressed: () {
          //       Navigator.of(context).pop();
          //     },
          //   ),
          // ),
          Container(
            child: Center(
              child: InteractiveViewer(
                panEnabled: true,
                // boundaryMargin: EdgeInsets.all(0),
                minScale: 0.5,
                maxScale: 3,
                child: Image.asset(
                  imagePath,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
