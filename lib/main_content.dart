import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';

// import 'package:flutter_modular/flutter_modular.dart';
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
          final initialState = PixelInitial();
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
  late String _title;

  // late BannerAd bannerAd;
  bool isAdLoaded = false;

  // initBannerAd() {
  //   bannerAd = BannerAd(
  //       size: AdSize.banner,
  //       adUnitId: 'ca-app-pub-1500746861959987/5804292452',
  //       listener: BannerAdListener(onAdLoaded: (ad) {
  //         setState(() {
  //           isAdLoaded = true;
  //         });
  //       }, onAdFailedToLoad: (ad, err) {
  //         ad.dispose();
  //         log('---ads err: $err');
  //       }),
  //       request: const AdRequest());
  //   bannerAd.load();
  // }

  // final mBloc=Modular.get<PixelBloc>();

  @override
  void initState() {
    super.initState();
    // initBannerAd();
    _tabController = TabController(length: 4, vsync: this);
    _title = 'Wallpaper Pixel';
    final listTitle = ["Home", "Trend", "Top", "Discover"];
    _tabController.addListener(() {
      log('---change tab in listener: ${_tabController.index}');
      // mBloc.add(
      //     SetTitleWhenPageChange(newTitle: listTitle[_tabController.index]));
      context.read<PixelBloc>().add(
          SetTitleWhenPageChange(newTitle: listTitle[_tabController.index]));
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final GlobalKey<SliderDrawerState> _sliderDrawerKey =
        GlobalKey<SliderDrawerState>();
    final double itemWidth = size.width / 3;
    final double itemHeight = size.width / 2;
    final listTitle = ["Home", "Trend", "Top", "Discover"];

    return BlocProvider(
        create: (context) {
          final initialState = PixelInitial();
          // context.read<PixelBloc>().add(GetTrendByHostEvent());
          // context.read<PixelBloc>().add(GetTopByHostEvent());
          // context.read<PixelBloc>().add(GetChallengeByHostEvent());
          // context.read<PixelBloc>().add(GetDiscoverByHostEvent());
          return PixelBloc(initialState);
        },
        child: Scaffold(
          // appBar: AppBar(
          //   actions: <Widget>[
          //     IconButton(
          //       icon: Icon(
          //         Icons.settings,
          //         color: Colors.white,
          //       ),
          //       onPressed: () {
          //         // do something
          //       },
          //     )
          //   ],
          //   leading: IconButton(
          //     alignment: Alignment.center,
          //     onPressed: () {},
          //     icon: const Icon(Icons.art_track_outlined),
          //   ),
          //   centerTitle: true,
          //   title: BlocBuilder<PixelBloc, PixelState>(
          //     buildWhen: (previous, current) =>
          //         previous != current && current is TitleState,
          //     bloc: context.read<PixelBloc>(),
          //     builder: (mContext, state) {
          //       log('---change tab in builder: ${_tabController.index}');
          //       // mBloc.add(
          //       //     SetTitleWhenPageChange(newTitle: listTitle[_tabController.index]));
          //       mContext.read<PixelBloc>().add(SetTitleWhenPageChange(
          //           newTitle: listTitle[_tabController.index]));
          //       //
          //       return Text(
          //         state is TitleState
          //             ? state.title ?? 'Wallpaper Pixel1'
          //             : 'Wallpaper Pixel2',
          //         style: const TextStyle(fontSize: 14),
          //       );
          //     },
          //   ),
          //   toolbarHeight: 30,
          //   backgroundColor: Colors.black87,
          // ),
          body: SliderDrawer(
            key: _sliderDrawerKey,
            sliderOpenSize: 179,
            appBar: SliderAppBar(
              title: Text(
                "title",
                style: TextStyle(color: Colors.white),
              ),
              appBarColor: Colors.black87,
              drawerIconColor: Colors.white,
            ),
            // appBar: AppBar(
            //   actions: <Widget>[
            //     IconButton(
            //       icon: Icon(
            //         Icons.settings,
            //         color: Colors.white,
            //       ),
            //       onPressed: () {
            //         // do something
            //       },
            //     )
            //   ],
            //   leading: IconButton(
            //     alignment: Alignment.center,
            //     onPressed: () {
            //       _sliderDrawerKey.currentState!.openSlider();
            //
            //     },
            //     icon: const Icon(Icons.art_track_outlined),
            //   ),
            //   centerTitle: true,
            //   title: BlocBuilder<PixelBloc, PixelState>(
            //     buildWhen: (previous, current) =>
            //         previous != current && current is TitleState,
            //     bloc: context.read<PixelBloc>(),
            //     builder: (mContext, state) {
            //       log('---change tab in builder: ${_tabController.index}');
            //       // mBloc.add(
            //       //     SetTitleWhenPageChange(newTitle: listTitle[_tabController.index]));
            //       mContext.read<PixelBloc>().add(SetTitleWhenPageChange(
            //           newTitle: listTitle[_tabController.index]));
            //       //
            //       return Text(
            //         state is TitleState
            //             ? state.title ?? 'Wallpaper Pixel1'
            //             : 'Wallpaper Pixel2',
            //         style: const TextStyle(fontSize: 14),
            //       );
            //     },
            //   ),
            //   toolbarHeight: 30,
            //   backgroundColor: Colors.black87,
            // ),
            slider: _SliderView(
              onItemClick: (title) {
                _sliderDrawerKey.currentState!.closeSlider();
                log('===title: $title');
                // setState(() { add event
                //   this.title = title;
                // });
              },
            ),
            child: Container(
              color: Colors.black87,
              child: Column(
                children: [
                  TabBar(
                    controller: _tabController,
                    // padding: EdgeInsets.symmetric(vertical: 8),
                    indicatorColor: Colors.white,
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered)) {
                          return Colors.amberAccent; //<-- SEE HERE
                        }
                        return null;
                      },
                    ),
                    tabs: const [
                      Tab(icon: Icon(Icons.home)),
                      Tab(icon: Icon(Icons.vertical_align_top)),
                      Tab(icon: Icon(Icons.access_time_filled)),
                      Tab(icon: Icon(Icons.fireplace)),
                    ],
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.blueGrey,
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        BlocBuilder<PixelBloc, PixelState>(
                          buildWhen: (previous, current) =>
                              previous != current &&
                              current is LoadListImgTrend,
                          builder: (mContext, state) {
                            // mBloc.add(GetTrendByHostEvent());
                            mContext
                                .read<PixelBloc>()
                                .add(GetTrendByHostEvent());
                            // return Text("aaaa", style: TextStyle(color: Colors.white),);
                            return state is LoadListImgTrend
                                ? TrendTab(listImg: state.listTrend)
                                : const TrendTab(listImg: []);
                          },
                        ),
                        BlocBuilder<PixelBloc, PixelState>(
                          buildWhen: (previous, current) =>
                              previous != current &&
                              current is LoadListImgDiscover,
                          builder: (mContext, state) {
                            mContext
                                .read<PixelBloc>()
                                .add(GetDiscoverByHostEvent());
                            return state is LoadListImgDiscover
                                ? DiscoverTab(
                                    listImg: state.listDiscover,
                                  )
                                : const DiscoverTab(listImg: []);
                          },
                        ),
                        BlocBuilder<PixelBloc, PixelState>(
                          buildWhen: (previous, current) =>
                              previous != current && current is LoadListImgTop,
                          builder: (mContext, state) {
                            mContext.read<PixelBloc>().add(GetTopByHostEvent());
                            return state is LoadListImgTop
                                ? TopTab(
                                    listImg: state.listTop,
                                  )
                                : const TopTab(listImg: []);
                          },
                        ),
                        BlocBuilder<PixelBloc, PixelState>(
                          buildWhen: (previous, current) =>
                              previous != current &&
                              current is LoadListImgChallenge,
                          builder: (mContext, state) {
                            mContext
                                .read<PixelBloc>()
                                .add(GetChallengeByHostEvent());
                            return state is LoadListImgChallenge
                                ? ChallengeTab(listImg: state.listChallenge)
                                : const ChallengeTab(listImg: []);
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          // bottomNavigationBar: isAdLoaded
          //     ? SizedBox(
          //         height: bannerAd.size.height.toDouble(),
          //         width: bannerAd.size.width.toDouble(),
          //         child: AdWidget(ad: bannerAd),
          //       )
          //     : const SizedBox(),
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
      child: SizedBox(
        width: itemWidth,
        height: itemHeight,
        child: Image.network(uri),
      ),
    );
  }
}

class _SliderView extends StatelessWidget {
  final Function(String)? onItemClick;

  const _SliderView({Key? key, this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      padding: const EdgeInsets.only(top: 30),
      child: ListView(
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          CircleAvatar(
            radius: 65,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 60,
              backgroundImage: Image.network(
                      'https://i.pinimg.com/564x/a7/f7/2e/a7f72efc911fd92c5457df329f89e251.jpg')
                  .image,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Nick',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ...[
            ItemTab("Home"),
            ItemTab("Home1"),
            ItemTab("Home2"),
            ItemTab("Home3"),
            ItemTab("Home4"),
            ItemTab("Home5"),
            ItemTab("Home5"),
            ItemTab("Home5"),
            ItemTab("Home5"),
            ItemTab("Home5"),
            ItemTab("Home5"),
            ItemTab("Home5"),
            ItemTab("Home5"),
            ItemTab("Home5"),
            ItemTab("Home5"),
          ]
              .map((e) => _SliderItem(
                    title: e.title,
                    onTap: onItemClick,
                  ))
              .toList(),
          // ...[
          //   Menu(Icons.home, 'Home'),
          //   Menu(Icons.add_circle, 'Add Post'),
          //   Menu(Icons.notifications_active, 'Notification'),
          //   Menu(Icons.favorite, 'Likes'),
          //   Menu(Icons.settings, 'Setting'),
          //   Menu(Icons.arrow_back_ios, 'LogOut')
          // ]
          //     .map((menu) => _SliderMenuItem(
          //         title: menu.title,
          //         iconData: menu.iconData,
          //         onTap: onItemClick))
          //     .toList(),
        ],
      ),
    );
  }
}

class _SliderItem extends StatelessWidget {
  final String title;
  final Function(String)? onTap;

  const _SliderItem({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,
          style: const TextStyle(
              color: Colors.white, fontFamily: 'BalsamiqSans_Regular')),
      onTap: ()=>onTap?.call(title)
    );
  }
}

class Menu {
  final IconData iconData;
  final String title;

  Menu(this.iconData, this.title);
}

class ItemTab {
  final String title;

  ItemTab(this.title);
}

class _SliderMenuItem extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function(String)? onTap;

  const _SliderMenuItem(
      {Key? key,
      required this.title,
      required this.iconData,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title,
            style: const TextStyle(
                color: Colors.black, fontFamily: 'BalsamiqSans_Regular')),
        leading: Icon(iconData, color: Colors.black),
        onTap: () => onTap?.call(title));
  }
}
