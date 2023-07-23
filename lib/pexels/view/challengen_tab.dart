import 'package:flutter/material.dart';

class ChallengeTab extends StatefulWidget {
  final List<String>? listImg;
  const ChallengeTab({Key? key, required this.listImg}) : super(key: key);

  @override
  State<ChallengeTab> createState() => _ChallengeTabState();
}

class _ChallengeTabState extends State<ChallengeTab> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('challenge tab '),);
  }
}
