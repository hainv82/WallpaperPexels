import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:z_core/pexels/bloc/pixel_bloc.dart';
import 'package:z_core/pexels/bloc/pixel_event.dart';
import 'package:z_core/pexels/bloc/pixel_state.dart';
import 'package:z_core/pexels/view/challengen_tab.dart';
import 'package:z_core/pexels/view/popular_tab.dart';
import 'package:z_core/pexels/view/top_tab.dart';
import 'package:z_core/pexels/view/trend_tab.dart';

class MainContent extends StatelessWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider<PixelBloc>(
        create: (context) {
          final initialState = PixelState();
          // context.read<PixelBloc>().add(GetTrendByHostEvent());

          return PixelBloc(initialState);
        },
        child: const MaterialApp(home: HomeContent()),
      );
}

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemWidth = size.width / 3;
    final double itemHeight = size.width / 2;

    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
          leading: IconButton(
            alignment: Alignment.center,
            onPressed: () {},
            icon: Icon(Icons.art_track_outlined),
          ),
          centerTitle: true,
          title: Text(
            "Wallpaper Pixel",
            style: TextStyle(fontSize: 14),
          ),
          toolbarHeight: 30,
          backgroundColor: Colors.black87,
        ),
        body: Container(
          color: Colors.black87,
          child: Column(
            children: [
              TabBar(
                controller: _tabController,
                // padding: EdgeInsets.symmetric(vertical: 8),
                indicatorColor: Colors.white,
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered))
                      return Colors.amberAccent; //<-- SEE HERE
                    return null;
                  },
                ),
                tabs: const [
                  Tab(text: 'Flight', icon: Icon(Icons.flight)),
                  Tab(text: 'Train', icon: Icon(Icons.directions_transit)),
                  Tab(text: 'Car', icon: Icon(Icons.directions_car)),
                  Tab(text: 'Car', icon: Icon(Icons.directions_car)),
                ],
                labelColor: Colors.white,
                unselectedLabelColor: Colors.blueGrey,
              ),
              Expanded(
                child: TabBarView(controller: _tabController, children:  [
                  TrendTab(),
                  // const PopularTab(),
                  // BlocBuilder<PixelBloc, PixelState>(
                  //   // bloc: PixelBloc(initialState),
                  //   buildWhen: (previous, current) => previous != current,
                  //   builder: (context, state) {
                  //     context.read<PixelBloc>().add(GetTrendByHostEvent());
                  //     log('---state $state');
                  //     return Scaffold(
                  //       body: Container(
                  //           padding: const EdgeInsets.all(0),
                  //           child: GridView.builder(
                  //             itemCount: state.listTrend?.length,
                  //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //               crossAxisCount: 3,
                  //               // childAspectRatio: (itemHeight/itemWidth),
                  //               childAspectRatio: (itemWidth / itemHeight),
                  //               // crossAxisSpacing: 4.0,
                  //               // mainAxisSpacing: 4.0
                  //             ),
                  //             itemBuilder: (BuildContext context, int index) {
                  //               // return Text('data');
                  //               // return Image.network('https://cafedev.vn/wp-content/uploads/2021/04/cafedev-flutter-gridview3.png');
                  //               return Container(
                  //                   color: Colors.yellow,
                  //                   padding: EdgeInsets.all(0),
                  //                   child: Image.network(
                  //                     state.listTrend != null
                  //                         ? state.listTrend![index]
                  //                         : 'https://hn86site.000webhostapp.com/image/loading.png',
                  //                     fit: BoxFit.cover,
                  //                   ));
                  //             },
                  //           )),
                  //     );
                  //   },
                  // ),
                  const PopularTab(),
                  const TopTab(),
                  const ChallengeTab()
                ]),
              )
            ],
          ),
        ));
  }
}

class ImageDialog extends StatelessWidget {
  final String uri;

  const ImageDialog({Key? key, required this.uri}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemWidth = size.width;
    final double itemHeight = size.width;
    return Dialog(
      child: Container(
        width: itemWidth,
        height: itemHeight,
        child: Image.network(uri),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:z_core/ex1/controller_ex1/ex1_bloc.dart';
// import 'package:z_core/ex1/controller_ex1/ex1_event.dart';
// import 'package:z_core/ex1/controller_ex1/ex1_state.dart';
// import 'package:z_core/ex1/ex1_module.dart';
// import 'package:z_core/zcore/error_handle.dart';
//
// class MainContent extends StatefulWidget {
//   const MainContent({Key? key}) : super(key: key);
//
//   @override
//   _MainContentState createState() => _MainContentState();
//   // State<StatefulWidget> createState() => _MainContentState();
// }
//
// class _MainContentState extends State<MainContent> {
//   @override
//   void initState() {
//     super.initState();
//     // Ex1Module();
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) {
//         final initialState = EX1State(tokenResgis: "", tokenLog: "", id: "");
//         return Ex1Bloc(initialState);
//       },
//       child: Scaffold(
//         appBar: AppBar(title: const Text('----')),
//         body: Container(
//           child: TextButton(
//               onPressed: () =>
//               {
//                 context
//                     .read<Ex1Bloc>()
//                     .add(OnRegisEvent("eve.holt@reqres.in", "pistol")),
//               },
//               child: Text("login")),
//         ),
//       ),
//       // child: BlocListener<Ex1Bloc, EX1State>(
//       //       listener: (context, state) {},
//       //       child: BlocBuilder<Ex1Bloc, EX1State>(
//       //         builder: (context, state) => Scaffold(
//       //             appBar: AppBar(title: const Text('----')),
//       //             body: Container(
//       //               child: TextButton(onPressed: () => {
//       //                 context.read<Ex1Bloc>().add(OnLoginEvent("eve.holt@reqres.in", "pistol")),
//       //               }, child:  Text("login")),
//       //             )),
//       //       ),
//       //     ),
//     );
//
// // @override
// // Widget build(BuildContext context) => BlocListener(listener: listener);
//
//   }
// }
