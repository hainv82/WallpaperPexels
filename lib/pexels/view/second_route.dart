import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  List<String> images = [
    "https://images.pexels.com//photos//16963896//pexels-photo-16963896//free-photo-of-celery-juice.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com//photos//16963896//pexels-photo-16963896//free-photo-of-celery-juice.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com//photos//16963896//pexels-photo-16963896//free-photo-of-celery-juice.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com//photos//16963896//pexels-photo-16963896//free-photo-of-celery-juice.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com//photos//16963896//pexels-photo-16963896//free-photo-of-celery-juice.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com//photos//16963896//pexels-photo-16963896//free-photo-of-celery-juice.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com//photos//16963896//pexels-photo-16963896//free-photo-of-celery-juice.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com//photos//16963896//pexels-photo-16963896//free-photo-of-celery-juice.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com//photos//16963896//pexels-photo-16963896//free-photo-of-celery-juice.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com//photos//16963896//pexels-photo-16963896//free-photo-of-celery-juice.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com//photos//16963896//pexels-photo-16963896//free-photo-of-celery-juice.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com//photos//16963896//pexels-photo-16963896//free-photo-of-celery-juice.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com//photos//16963896//pexels-photo-16963896//free-photo-of-celery-juice.jpeg?auto=compress&cs=tinysrgb&w=400",

  ];

  SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    // final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 3;
    final double itemHeight = size.width / 2;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter GridView Demo"),
          backgroundColor: Colors.red,
        ),

        body: Container(
            padding: const EdgeInsets.all(0),
            child: GridView.builder(
              itemCount: images.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                // childAspectRatio: (itemHeight/itemWidth),
                childAspectRatio: (itemWidth/itemHeight),
                // crossAxisSpacing: 4.0,
                // mainAxisSpacing: 4.0
              ),
              itemBuilder: (BuildContext context, int index) {
                // return Text('data');
                // return Image.network('https://cafedev.vn/wp-content/uploads/2021/04/cafedev-flutter-gridview3.png');
                return Container(
                    color: Colors.black87,
                    padding: EdgeInsets.all(0),
                    child: Image.network(
                      images[index],
                      fit: BoxFit.cover,
                    ));
              },
            )
        ),
      ),
    );
  }
}
