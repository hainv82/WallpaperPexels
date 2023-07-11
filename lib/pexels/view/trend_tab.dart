import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:z_core/pexels/bloc/pixel_bloc.dart';
import 'package:z_core/pexels/bloc/pixel_state.dart';
import 'package:z_core/pexels/view/view_img.dart';

import '../bloc/pixel_event.dart';

class TrendTab extends StatefulWidget {
  const TrendTab({Key? key}) : super(key: key);

  @override
  State<TrendTab> createState() => _TrendTabState();
}

class _TrendTabState extends State<TrendTab> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemWidth = size.width / 3;
    final double itemHeight = size.width / 2;

    return BlocProvider<PixelBloc>(
      create: (context) {
        final initialState = PixelState();
        return PixelBloc(initialState);
      },
      child: BlocBuilder<PixelBloc, PixelState>(
        // bloc: PixelBloc(initialState),
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          context.read<PixelBloc>().add(GetTrendByHostEvent());
          log('---state $state');
          return Scaffold(
            body: Container(
                padding: const EdgeInsets.all(0),
                child: GridView.builder(
                  itemCount: state.listTrend?.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    // childAspectRatio: (itemHeight/itemWidth),
                    childAspectRatio: (itemWidth / itemHeight),
                    // crossAxisSpacing: 4.0,
                    // mainAxisSpacing: 4.0
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    // return Text('data');
                    // return Image.network('https://cafedev.vn/wp-content/uploads/2021/04/cafedev-flutter-gridview3.png');
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ViewImage(
                                    uri: state.listTrend![index],
                                    index: index,
                                    listUri: state.listTrend ?? [],
                                  )),
                        );
                      },
                      // onTap: () async {
                      //
                      //   await showDialog(
                      //       context: context,
                      //       builder: (_) => ImageDialog(
                      //             uri: state.listTrend != null
                      //                 ? state.listTrend![index]
                      //                 : 'https://hn86site.000webhostapp.com/image/loading.png',
                      //           ));
                      // },
                      child: Container(
                          color: Colors.black87,
                          padding: EdgeInsets.all(0),
                          child: Image.network(
                            state.listTrend != null
                                ? state.listTrend![index]
                                : 'https://hn86site.000webhostapp.com/image/loading.png',
                            fit: BoxFit.cover,
                          )),
                    );
                  },
                )),
          );
        },
      ),
    );
  }
}