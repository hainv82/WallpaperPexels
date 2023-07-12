import 'dart:developer';

import 'package:async_wallpaper/async_wallpaper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:z_core/pexels/view/async_wallpaper.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class ViewImage extends StatefulWidget {
  final String uri;
  final int index;
  final List<String> listUri;

  const ViewImage(
      {Key? key, required this.uri, required this.index, required this.listUri})
      : super(key: key);

  @override
  State<ViewImage> createState() => _ViewImageState();
}

class _ViewImageState extends State<ViewImage> {
  late bool goToHome;
  String _platformVersion = 'Unknown';

  @override
  Widget build(BuildContext context) {
    var uriCurrent = '';
    final PageController controller = PageController(initialPage: widget.index);
    final listPage = widget.listUri
        .map((e) =>
        Container(
            height: MediaQuery
                .of(context)
                .size
                .height,
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Image.network(
              e,
              fit: BoxFit.cover,
            )))
        .toList();
    // return PageView(
    //   /// [PageView.scrollDirection] defaults to [Axis.horizontal].
    //   /// Use [Axis.vertical] to scroll vertically.
    //   controller: controller,
    //   children: listPage,
    // );
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              },
              child:
              PageView.builder(
                  controller: controller,
                  itemCount: listPage.length,

                  itemBuilder: (context, index) {
                    uriCurrent=widget.listUri[index];
                    return listPage[index];
                  })
            // PageView(
            //   controller: controller,
            //   children: listPage,
            // )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(onTap: () {
                    _downloadImage(url: uriCurrent);
                    // log('---controller: ${controller.}')
                  },
                      child: const Icon(Icons.download_for_offline, size: 48,
                        color: Colors.white,)),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: (){
                      setWallpaperHome(url: uriCurrent, goHome: false);
                    },
                    child: const Icon(Icons.settings_applications_outlined, size: 48,
                      color: Colors.white,),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Future<Null> _setWallpaer() async {
  //   String setWallpaper;
  //   try {
  //     final int result =
  //     await platform.invokeMethod('setWallpaper', 'myimage.jpeg');
  //     setWallpaper = 'Wallpaer Updated....';
  //   } on PlatformException catch (e) {
  //     setWallpaper = "Failed to Set Wallpaer: '${e.message}'.";
  //   }
  //   setState(() {
  //     _setWallpaper = setWallpaper;
  //   });}
  @override
  void initState() {
    final snackBar = SnackBar(
      content: const Text('Dowload Success'),
      backgroundColor: Colors.black87,
      duration: const Duration(minutes: 5),
      action: SnackBarAction(
        label: 'Set Wallpaper',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );
    super.initState();
    goToHome = false;
    initPlatformState();

    ImageDownloader.callback(onProgressUpdate: (String? imageId, int progress) {
      log('---%download: $progress');
      progress == 100
          ? ScaffoldMessenger.of(context).showSnackBar(snackBar)
          : '';
    });
  }
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      platformVersion = await AsyncWallpaper.platformVersion ?? 'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }
}

// class ViewImage extends StatelessWidget {
//   final String uri;
//
//   const ViewImage({Key? key, required this.uri}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Stack(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height,
//             width: MediaQuery.of(context).size.width,
//             // decoration: BoxDecoration(
//             //   image: DecorationImage(
//             //     image: AssetImage("assets/images/bulb.jpg"),
//             //     fit: BoxFit.cover,
//             //   ),
//             // ),
//             child: Image.network(
//               uri,
//               fit: BoxFit.cover,
//             ) /* add child content here */,
//           ),
//           GestureDetector(
//             onTap: () async {
//               log('--download');
//               Navigator.push(context, MaterialPageRoute(builder: (context)=> DownloadPage()));
//               // try {
//               //   // Saved with this method.
//               //   var imageId = await ImageDownloader.downloadImage("https://raw.githubusercontent.com/wiki/ko2ic/image_downloader/images/flutter.png");
//               //   if (imageId == null) {
//               //     return;
//               //   }
//               //
//               //   // Below is a method of obtaining saved image information.
//               //   var fileName = await ImageDownloader.findName(imageId);
//               //   var path = await ImageDownloader.findPath(imageId);
//               //   var size = await ImageDownloader.findByteSize(imageId);
//               //   var mimeType = await ImageDownloader.findMimeType(imageId);
//               // } on PlatformException catch (error) {
//               //   print(error);
//               // }
//             },
//             child: Container(
//                 alignment: Alignment.bottomCenter,
//                 child: const Icon(
//                   Icons.download_for_offline_outlined,
//                   color: Colors.white,
//                   size: 60,
//                 )),
//           )
//         ],
//       ),
//     );
//   }
// }
Future<void> setWallpaperHome({required String url, required bool goHome}) async {
  // setState(() {
  //   _wallpaperUrlHome = 'Loading';
  // });
  String result;
  // Platform messages may fail, so we use a try/catch PlatformException.
  try {
    result = await AsyncWallpaper.setWallpaper(
      url: url,
      wallpaperLocation: AsyncWallpaper.HOME_SCREEN,
      goToHome: goHome,
      toastDetails: ToastDetails.success(),
      errorToastDetails: ToastDetails.error(),
    )
        ? 'Wallpaper set'
        : 'Failed to get wallpaper.';
  } on PlatformException {
    result = 'Failed to get wallpaper.';
  }

  // If the widget was removed from the tree while the asynchronous platform
  // message was in flight, we want to discard the reply rather than calling
  // setState to update our non-existent appearance.
  // if (!mounted) return;

  // setState(() {
  //   _wallpaperUrlHome = result;
  // });
}


Future<void> _downloadImage({
  required String url,
  AndroidDestinationType? destination,
  bool whenError = false,
  String? outputMimeType,
}) async {
  String? fileName;
  String? path;
  int? size;
  String? mimeType;
  try {
    String? imageId;

    if (whenError) {
      imageId = await ImageDownloader.downloadImage(url,
          outputMimeType: outputMimeType)
          .catchError((error) {
        if (error is PlatformException) {
          String? path = "";
          if (error.code == "404") {
            print("Not Found Error.");
          } else if (error.code == "unsupported_file") {
            print("UnSupported FIle Error.");
            path = error.details["unsupported_file_path"];
          }
          // setState(() {
          //   _message = error.toString();
          //   _path = path ?? '';
          // });
        }

        print(error);
      }).timeout(Duration(seconds: 10), onTimeout: () {
        print("timeout");
        return;
      });
    } else {
      if (destination == null) {
        imageId = await ImageDownloader.downloadImage(
          url,
          outputMimeType: outputMimeType,
        );
      } else {
        imageId = await ImageDownloader.downloadImage(
          url,
          destination: destination,
          outputMimeType: outputMimeType,
        );
      }
    }

    if (imageId == null) {
      return;
    }
    fileName = await ImageDownloader.findName(imageId);
    path = await ImageDownloader.findPath(imageId);
    size = await ImageDownloader.findByteSize(imageId);
    mimeType = await ImageDownloader.findMimeType(imageId);
  } on PlatformException catch (error) {
    // setState(() {
    //   _message = error.message ?? '';
    // });
    return;
  }

  // if (!mounted) return;

  // setState(() {
  //   var location = Platform.isAndroid ? "Directory" : "Photo Library";
  //   _message = 'Saved as "$fileName" in $location.\n';
  //   _size = 'size:     $size';
  //   _mimeType = 'mimeType: $mimeType';
  //   _path = path ?? '';
  //
  //   if (!_mimeType.contains("video")) {
  //     _imageFile = File(path!);
  //   }
  //   return;
  // });
}
