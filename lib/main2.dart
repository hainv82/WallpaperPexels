import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:z_core/ex1/controller_ex1/ex1_event.dart';
import 'package:z_core/ex1/controller_ex1/ex1_state.dart';
import 'package:z_core/pexels/bloc/pixel_bloc.dart';
import 'package:z_core/pexels/bloc/pixel_event.dart';
import 'package:z_core/pexels/bloc/pixel_state.dart';
import 'package:z_core/pexels/view/second_route.dart';

import 'ex1/controller_ex1/ex1_bloc.dart';

class Main2 extends StatelessWidget {
  const Main2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider<PixelBloc>(
      create: (context) {
        final initialState =  PixelInitial();
        return PixelBloc(initialState);
      },
      child: const MaterialApp(home: HomePage()));
  // Widget build(BuildContext context) => BlocProvider<Ex1Bloc>(
  //     create: (context) {
  //       final initialState = EX1State(tokenResgis: "", tokenLog: "", id: "");
  //       return Ex1Bloc(initialState);
  //     },
  //     child: const MaterialApp(home: HomePage()));
  //
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('----')),
      body: Column(
        children: [
          TextButton(
              onPressed: () => {
                    context
                        .read<Ex1Bloc>()
                        .add(OnRegisEvent("eve.holt@reqres.in", "pistol"))
                  },
              child: const Text("TestLogin")),
          TextButton(
              onPressed: () => {
                    context
                        .read<PixelBloc>()
                        .add(GetTrendByHostEvent())
                        // .add(GetTrendEvent(scrKey: 'H2jk9uKnhRmL6WPwh89zBezWvr'))
                        // .add(GetSlugEvent(nonParam: 'nonParam'))
                  },
              child: const Text("Test json pexels")),
          TextButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  SecondRoute()),
            );
          }, child: Text('open route'))
        ],
      ),
    );
  }
}
