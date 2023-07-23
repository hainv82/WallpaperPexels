import 'package:flutter/material.dart';
import 'package:z_core/pexels/view/view_img.dart';

class DiscoverTab extends StatefulWidget {
  final List<String>? listImg;

  const DiscoverTab({Key? key, required this.listImg}) : super(key: key);

  @override
  State<DiscoverTab> createState() => _DiscoverTabState();
}

class _DiscoverTabState extends State<DiscoverTab> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemWidth = size.width / 3;
    final double itemHeight = size.width / 2;

    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(0),
          child: GridView.builder(
            itemCount: widget.listImg?.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: (itemWidth / itemHeight),
            ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ViewImage(
                              uri: widget.listImg![index],
                              index: index,
                              listUri: widget.listImg ?? [],
                            )),
                  );
                },
                child: Container(
                    color: Colors.black87,
                    padding: EdgeInsets.all(0),
                    child: widget.listImg != null
                        ? Image.network(
                            widget.listImg![index],
                            fit: BoxFit.cover,
                          )
                        : const Icon(
                            Icons.downloading,
                            size: 48,
                            color: Colors.white,
                          )),
              );
            },
          )),
    );
  }
}
