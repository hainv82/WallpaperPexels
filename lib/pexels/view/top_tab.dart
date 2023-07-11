import 'package:flutter/material.dart';

class TopTab extends StatefulWidget {
  const TopTab({Key? key}) : super(key: key);

  @override
  State<TopTab> createState() => _TopTabState();
}

class _TopTabState extends State<TopTab> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text(' top tab '),);
  }
}
