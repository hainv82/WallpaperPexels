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
  Widget build(BuildContext context) =>
      BlocProvider<PixelBloc>(
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
  late String _title;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    _title = 'Wallpaper Pixel';
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    final double itemWidth = size.width / 3;
    final double itemHeight = size.width / 2;
    final listTitle = ["Home", "Trend", "Top", "Discover"];

    return BlocProvider(
      create: (context) {
        final initialState = PixelState();
        return PixelBloc(initialState);
      },
      child: BlocBuilder<PixelBloc, PixelState>(
        buildWhen: (previous, current) => previous != current,
        builder: (mContext, state) {
          mContext.read<PixelBloc>().add(GetTrendByHostEvent());
          mContext.read<PixelBloc>().add(GetTopByHostEvent());
          mContext.read<PixelBloc>().add(GetChallengeByHostEvent());
          mContext.read<PixelBloc>().add(GetDiscoverByHostEvent());
          _tabController.addListener(() {
            mContext.read<PixelBloc>().add(SetTitleWhenPageChange(
              newTitle: listTitle[_tabController.index]));
          });

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
                  state.title ?? 'Wallpaper Pixel',
                  style: const TextStyle(fontSize: 14),
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
                          TrendTab(listImg: state.listTrend),
                          PopularTab(
                            listImg: state.listTop,
                          ),
                          TopTab(),
                          ChallengeTab(),
                        ],
                      ),
                    )
                  ],
                ),
              ));
        },
      ),
    );
  }
}

class ImageDialog extends StatelessWidget {
  final String uri;

  const ImageDialog({Key? key, required this.uri}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
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
