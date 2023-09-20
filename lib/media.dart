import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shahi_catalogue/about_us.dart';
import 'package:shahi_catalogue/constants/constants.dart';
import 'package:shahi_catalogue/widgets/youtube_player.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

// class MediaScreen extends StatelessWidget {
//   const MediaScreen({Key? key}) : super(key: key);
//
//   static const List<String> _mediaList = [
//     'GEMYXmVXpBg',
//     'Sv-0s4gbvj0',
//     'LLvlxdqkcoc',
//     'QzJZRm6_xlE',
//     'AY6okjMItdk',
//     'zm4_sCMBDM8'
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(Constants.appColor),
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text('Media'),
//             Image.asset('assets/shahi_app_logo_white.png',
//                 height: 25, width: 60),
//           ],
//         ),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_rounded),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//       ),
//       body: SingleChildScrollView(
//         controller: new ScrollController(),
//         child: Column(
//           children: _initMedia(),
//         ),
//       ),
//     );
//   }
//
//   _initMedia() {
//     List<YoutubePlayer> youtubePlayers = [];
//     _mediaList.forEach((element) {
//       var youtubePlayer = YoutubePlayer(
//         controller: YoutubePlayerController(
//           initialVideoId: element, //Add videoID.
//           flags: YoutubePlayerFlags(
//             hideControls: false,
//             controlsVisibleAtStart: true,
//             autoPlay: false,
//             mute: false,
//             disableDragSeek: true,
//           ),
//         ),
//         showVideoProgressIndicator: true,
//         progressIndicatorColor: Color(Constants.appColor),
//       );
//       youtubePlayers.add(youtubePlayer);
//     });
//     return youtubePlayers;
//   }
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MediaScreen());
}

class MediaScreen extends StatefulWidget {
  const MediaScreen({Key? key}) : super(key: key);

  @override
  _MediaScreenState createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  late YoutubePlayerController _controller;

  // static const List<String> _mediaList = [
  //   'GEMYXmVXpBg',
  //   'Sv-0s4gbvj0',
  //   'LLvlxdqkcoc',
  //   'QzJZRm6_xlE',
  //   'AY6okjMItdk',
  //   'zm4_sCMBDM8'
  // ];
  static const List<String> _mediaList = [
    'WERJHI-bdV8',
    'KkgCjTON5xU',
    'c3y7EY1bMu4',
    'f_VmVOiTK_Y',
    '1SxheGwWp8s',
    'k2ZLGJdb7Qo',
    '2NZESAA5n18',
    'lVrzvGt1Pd0',
    'cVwUg9dlkhA',
    '4RZIR0LNuoY',
    '27RSBucpLO4',
    '3zYkPY5BrYk',
    '5Ooo1kqcRAA',
    'jLEggiDzTsg',
    'VFQHTLFcl2w',
    '7uRFQvzZb14',
    'tvZUzlqus4Q',
    'eUwymnx0LyY',
    'ly1uvM2lxDQ',
    'zrJXFEr4KY8',
    'KoR5Mkjv8UQ',
    'uNzYvmt-qws',
    'jfrCmK-douw',
    'TNnO2LI7x3k',
    'OSF7hRHDm_M',
    'QQCTIVOeuVw',
    'NyDNf83kRXU',
    'xJSH37zXnLk',
    '0H9NJTCrGAg',
    '2WItJTWDyok',
    'aWDxHOJlhoo',
    'GuwOXOb65MI',
    'Fer7r6kHYEc',
    'a43PghqgqOs',
    'Y98q0PDMvhE',
    'hV04-4kkPYg',
    '3Ci7AU9L2TQ',
    'mY4JbE93cb8',
    'Sv-0s4gbvj0',
    'GEMYXmVXpBg',
    '77SPAZdN--E',
    'SCYtms7fxXU',
    '8HDOsPLBzb0',
    'hw0_8RtD-cM',
    'fzlyabL6STo',
    'AY6okjMItdk',
    'R-nW0aAVCSg',
    'LLvlxdqkcoc',
    'zm4_sCMBDM8',
    'QzJZRm6_xlE',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedVideoId = _mediaList[0];
    _getYPC(selectedVideoId);
    player = YoutubePlayerIFrame(
      controller: _controller,
    );
  }

  _getYPC(String videoId) {
    return _controller = YoutubePlayerController(
      initialVideoId: videoId,
      params: YoutubePlayerParams(
        playlist: _mediaList,
        // startAt: const Duration(minutes: 1, seconds: 36),
        showControls: true,
        showFullscreenButton: true,
        desktopMode: true,
        privacyEnhanced: true,
        // useHybridComposition: true,
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

  var player;

  @override
  Widget build(BuildContext context) {
    // YoutubePlayerIFrame player = YoutubePlayerIFrame(
    //   controller: _controller,
    // );
    Size _size = MediaQuery.of(context).size;
    print("SELECTED VIDEO ID: " + player.controller!.initialVideoId);
    // _controller = _getYPC(selectedVideoId);
    // print("INITIAL_VIDE0" + _controller.initialVideoId);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          repeat: ImageRepeat.repeat,
          image: AssetImage(
            'assets/shahi_app_logo_watermark.png',
          ),
        ),
      ),
      child: YoutubePlayerControllerProvider(
        controller: _controller,
        child: Center(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: _size.width < Constants.iphoneLimit
                  ? Constants.iphoneLimit.toDouble()
                  : Constants.iphoneLimit.toDouble(),
            ),
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Color(Constants.appColor),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Media'),
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
                    setState(
                      () {
                        isFullscreenItemVisible = false;
                      },
                    );
                    return false;
                  } else
                    return true;
                },
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Container(
                        color: Color(Constants.bgColor),
                        child: Container(
                          constraints: BoxConstraints(
                              maxWidth: Constants.iphoneLimit.toDouble(),
                              maxHeight: double.infinity),
                          child: RawScrollbar(
                            thumbColor: Color(Constants.appColor),
                            thickness: 10,
                            isAlwaysShown: true,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 10.0,
                              ),
                              child: SingleChildScrollView(
                                physics: AlwaysScrollableScrollPhysics(),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: _mediaList
                                      .map((videoId) => initMedia(videoId))
                                      .toList(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (isFullscreenItemVisible) ...{
                      YoutubePlayerWidget(selectedVideoId),
                    },
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Widget _initMedia(String videoId) {
  //   _controller = _getYPC(videoId);
  //   // isVisible = true;
  //   return YoutubePlayerIFrame(
  //     gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{},
  //     // gestureRecognizers: {
  //     //   Factory<VerticalDragGestureRecognizer>(
  //     //       () => VerticalDragGestureRecognizer()),
  //     // },
  //     controller: _controller,
  //   );
  // }

  bool isFullscreenItemVisible = false;
  String selectedVideoId = '';

  Widget initMedia(String videoId) {
    // print("VIDEO_ID:" + videoId);
    // _controller = _getYPC(videoId);
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                YoutubePlayerController.getThumbnail(
                  videoId: videoId,
                  quality: ThumbnailQuality.medium,
                  // webp: true,
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
            Icon(
              Icons.play_circle_fill_rounded,
              color: Colors.white,
              size: 60,
            ),
            // Material(
            //   child: DecoratedBox(
            //     decoration: BoxDecoration(
            //       image: DecorationImage(
            //         image: NetworkImage(
            //           YoutubePlayerController.getThumbnail(
            //             videoId: videoId,
            //             quality: ThumbnailQuality.medium,
            //           ),
            //         ),
            //         fit: BoxFit.fitWidth,
            //       ),
            //     ),
            //     child: const Center(
            //       child: CircularProgressIndicator(),
            //     ),
            //   ),
            // ),
            // _initMedia(videoId),
          ],
        ),
        // Icon(
        //   Icons.play_circle_fill_rounded,
        //   color: Colors.white,
        // ),
        onTap: () {
          // print("On Tap");
          setState(() {
            // isFullscreenItemVisible = !isFullscreenItemVisible;
            selectedVideoId = videoId;
            isFullscreenItemVisible = true;
            // _getYPC(selectedVideoId);
            // player = YoutubePlayerIFrame(
            //   controller: _controller,
            // );
            // prevVideoId = selectedVideoId;
          });
        },
      ),
    );
  }

  // List<Widget> _initMedia(var player) {
  //   var mediaItem = <Widget>[];
  //   _mediaList.forEach((element) {
  //     var item = Stack(
  //       children: [
  //         player,
  //         Positioned.fill(
  //           child: YoutubeValueBuilder(
  //             controller: YoutubePlayerController(
  //               initialVideoId: element,
  //               params: const YoutubePlayerParams(
  //                 playlist: _mediaList,
  //                 // startAt: const Duration(minutes: 1, seconds: 36),
  //                 showControls: true,
  //                 showFullscreenButton: true,
  //                 desktopMode: kIsWeb ? true : false,
  //                 privacyEnhanced: true,
  //                 useHybridComposition: true,
  //               ),
  //             )
  //               ..onEnterFullscreen = () {
  //                 SystemChrome.setPreferredOrientations([
  //                   DeviceOrientation.landscapeLeft,
  //                   DeviceOrientation.landscapeRight,
  //                 ]);
  //                 print('Entered Fullscreen');
  //               }
  //               ..onExitFullscreen = () {
  //                 print('Exited Fullscreen');
  //               },
  //             builder: (context, value) {
  //               return AnimatedCrossFade(
  //                 firstChild: const SizedBox.shrink(),
  //                 secondChild: Material(
  //                     child: DecoratedBox(
  //                   decoration: BoxDecoration(
  //                     image: DecorationImage(
  //                       image: NetworkImage(
  //                         YoutubePlayerController.getThumbnail(
  //                           videoId: element,
  //                           quality: ThumbnailQuality.medium,
  //                         ),
  //                       ),
  //                       fit: BoxFit.fitWidth,
  //                     ),
  //                   ),
  //                   child: const Center(
  //                     child: CircularProgressIndicator(),
  //                   ),
  //                 )),
  //                 crossFadeState: value.isReady
  //                     ? CrossFadeState.showFirst
  //                     : CrossFadeState.showSecond,
  //                 duration: const Duration(milliseconds: 300),
  //               );
  //             },
  //           ),
  //         )
  //       ],
  //     );
  //     mediaItem.add(item);
  //   });
  //   return mediaItem;
  // }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }
}
