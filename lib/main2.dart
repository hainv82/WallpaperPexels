import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:z_core/ex1/controller_ex1/ex1_event.dart';
import 'package:z_core/ex1/controller_ex1/ex1_state.dart';

import 'ex1/controller_ex1/ex1_bloc.dart';

class Main2 extends StatelessWidget {
  const Main2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider<Ex1Bloc>(
      create: (context) {
        final initialState = EX1State(tokenResgis: "", tokenLog: "", id: "");
        return Ex1Bloc(initialState);
      },
      child: MaterialApp(home: HomePage()));

}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('----')),
      body: Container(
        child: TextButton(
            onPressed: () => {
                  context
                      .read<Ex1Bloc>()
                      .add(OnRegisEvent("eve.holt@reqres.in", "pistol"))
                },
            child: Text("TestLogin")),
      ),
    );
  }
}
