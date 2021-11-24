import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shahi_catalogue/about_us.dart';
import 'package:shahi_catalogue/constants/constants.dart';
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

  static const List<String> _mediaList = [
    'GEMYXmVXpBg',
    'Sv-0s4gbvj0',
    'LLvlxdqkcoc',
    'QzJZRm6_xlE',
    'AY6okjMItdk',
    'zm4_sCMBDM8'
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = _getYPC(_mediaList[0]);
  }

  _getYPC(String videoId) {
    return YoutubePlayerController(
      initialVideoId: videoId,
      params: YoutubePlayerParams(
        playlist: _mediaList,
        // startAt: const Duration(minutes: 1, seconds: 36),
        showControls: true,
        showFullscreenButton: true,
        desktopMode: false,
        privacyEnhanced: true,
        useHybridComposition: true,
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
    // const player = YoutubePlayerIFrame();
    Size _size = MediaQuery.of(context).size;
    return YoutubePlayerControllerProvider(
      controller: _controller,
      child: Center(
        child: Container(
          constraints: BoxConstraints(
            maxWidth: _size.width < Constants.iphoneLimit
                ? Constants.iphoneLimit.toDouble()
                : Constants.ipadLimit.toDouble(),
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
                  Navigator.of(context).pop();
                },
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.only(right: 5.0, top: 5.0),
              child: Container(
                color: Color(Constants.bgColor),
                child: RawScrollbar(
                  thumbColor: Color(Constants.appColor),
                  thickness: 10,
                  isAlwaysShown: true,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      // child: Column(children: _mediaList.map((videoId) => Stack(
                      //   children: [
                      //     _getYPC(videoId),
                      //   ],
                      // )).toList()),

                      // child: Column(
                      //   children: _mediaList
                      //       .map((videoId) => initMedia(player, videoId))
                      //       .toList(),
                      // ),

                      child: Stack(
                        children: [
                          if (_mediaList.length > 0) ...{
                            Padding(
                              padding: const EdgeInsets.all(50),
                              child: const Center(
                                child: CircularProgressIndicator(
                                  color: Color(Constants.appColor),
                                ),
                              ),
                            ),
                          },
                          Column(
                            children: _mediaList
                                .map((videoId) => _initMedia(videoId))
                                .toList(),
                          ),
                        ],
                      ),

                      // child: LayoutBuilder(
                      //   builder: (context, constraints) {
                      //     if (kIsWeb && constraints.maxWidth > 800) {
                      //       return Row(
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: [
                      //           const Expanded(child: player),
                      //           const SizedBox(
                      //             width: 500,
                      //             child: SingleChildScrollView(
                      //               child: AboutUsScreen(),
                      //             ),
                      //           ),
                      //         ],
                      //       );
                      //     }
                      //     return Stack(
                      //       children: [
                      //         if (_mediaList.length > 0) ...{
                      //           Padding(
                      //             padding: const EdgeInsets.all(50),
                      //             child: const Center(
                      //               child: CircularProgressIndicator(
                      //                 color: Color(Constants.appColor),
                      //               ),
                      //             ),
                      //           ),
                      //         },
                      //         Column(
                      //           children: _mediaList
                      //               .map((videoId) => _initMedia(videoId))
                      //               .toList(),
                      //         ),
                      //       ],
                      //     );
                      //   },
                      // ),
                    ),
                  ),
                ),
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.only(top: 5.0, right: 5.0),
            //   child: RawScrollbar(
            //     thumbColor: Color(Constants.appColor),
            //     thickness: 10,
            //     isAlwaysShown: true,
            //     child: Center(
            //       child: Container(
            //         constraints: BoxConstraints(
            //             maxWidth: _size.width < Constants.iphoneLimit
            //                 ? Constants.iphoneLimit.toDouble()
            //                 : Constants.ipadLimit.toDouble()),
            //         child: Stack(
            //           children: [
            //             if (_mediaList.length > 0) ...{
            //               Padding(
            //                 padding: const EdgeInsets.all(50),
            //                 child: const Center(
            //                   child: CircularProgressIndicator(
            //                     color: Color(Constants.appColor),
            //                   ),
            //                 ),
            //               ),
            //             },
            //             Padding(
            //               padding: const EdgeInsets.only(right: 10.0),
            //               child: ListView.builder(
            //                 itemCount: _mediaList.length,
            //                 itemBuilder: (context, index) {
            //                   return _initMedia(_mediaList[index]);
            //                 },
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ),
        ),
      ),
    );
  }

  Widget _initMedia(String videoId) {
    _controller = _getYPC(videoId);
    return YoutubePlayerIFrame(
      gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{},
      // gestureRecognizers: {
      //   Factory<VerticalDragGestureRecognizer>(
      //       () => VerticalDragGestureRecognizer()),
      // },
      controller: _controller,
    );
  }

  // Widget initMedia(String videoId) {
  //   print("VIDEO_ID:" + videoId);
  //   return Stack(
  //     children: [
  //       YoutubePlayerIFrame(
  //         controller: _getYPC(videoId),
  //       ),
  //       Positioned.fill(
  //         child: YoutubeValueBuilder(
  //           // controller: _controller,
  //           builder: (context, value) {
  //             return AnimatedCrossFade(
  //               firstChild: const SizedBox.shrink(),
  //               secondChild: Material(
  //                 child: DecoratedBox(
  //                   decoration: BoxDecoration(
  //                     image: DecorationImage(
  //                       image: NetworkImage(
  //                         YoutubePlayerController.getThumbnail(
  //                           videoId: videoId,
  //                           quality: ThumbnailQuality.medium,
  //                         ),
  //                       ),
  //                       fit: BoxFit.fitWidth,
  //                     ),
  //                   ),
  //                   child: const Center(
  //                     child: CircularProgressIndicator(),
  //                   ),
  //                 ),
  //               ),
  //               crossFadeState: value.isReady
  //                   ? CrossFadeState.showFirst
  //                   : CrossFadeState.showSecond,
  //               duration: const Duration(milliseconds: 300),
  //             );
  //           },
  //         ),
  //       )
  //     ],
  //   );
  // }

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
