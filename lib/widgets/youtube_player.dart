import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubePlayerWidget extends StatefulWidget {
  final String videoId;

  YoutubePlayerWidget(
      this.videoId); // const YoutubePlayerWidget({Key? key}) : super(key: key);

  @override
  _YoutubePlayerWidgetState createState() => _YoutubePlayerWidgetState();
}

class _YoutubePlayerWidgetState extends State<YoutubePlayerWidget> {
  var controller;

  _getYPC(String videoId) {
    return YoutubePlayerController(
      initialVideoId: videoId,
      params: YoutubePlayerParams(
        // playlist: _mediaList,
        // startAt: const Duration(minutes: 1, seconds: 36),
        showControls: true,
        showFullscreenButton: true,
        desktopMode: false,
        privacyEnhanced: true,
        useHybridComposition: true,
        loop: false,
        mute: false,
        autoPlay: false,
      ),
    )
      ..onEnterFullscreen = () {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.landscapeRight,
        ]);
        print('Entered Fullscreen');
      }
      ..onExitFullscreen = () {
        print('Exited Fullscreen');
      };
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.landscapeLeft,
    //   DeviceOrientation.landscapeRight,
    // ]);
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
          Container(
            child: Center(
              child: YoutubePlayerIFrame(
                controller: _getYPC(widget.videoId),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   controller.close();
  //   super.dispose();
  // }
}
