import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:z_core/ex1/controller_ex1/ex1_bloc.dart';
import 'package:z_core/ex1/controller_ex1/ex1_event.dart';
import 'package:z_core/ex1/controller_ex1/ex1_state.dart';
import 'package:z_core/ex1/ex1_module.dart';
import 'package:z_core/zcore/error_handle.dart';

class MainContent extends StatefulWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  _MainContentState createState() => _MainContentState();
  // State<StatefulWidget> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  @override
  void initState() {
    super.initState();
    // Ex1Module();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final initialState = EX1State(tokenResgis: "", tokenLog: "", id: "");
        return Ex1Bloc(initialState);
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('----')),
        body: Container(
          child: TextButton(
              onPressed: () =>
              {
                context
                    .read<Ex1Bloc>()
                    .add(OnRegisEvent("eve.holt@reqres.in", "pistol")),
              },
              child: Text("login")),
        ),
      ),
      // child: BlocListener<Ex1Bloc, EX1State>(
      //       listener: (context, state) {},
      //       child: BlocBuilder<Ex1Bloc, EX1State>(
      //         builder: (context, state) => Scaffold(
      //             appBar: AppBar(title: const Text('----')),
      //             body: Container(
      //               child: TextButton(onPressed: () => {
      //                 context.read<Ex1Bloc>().add(OnLoginEvent("eve.holt@reqres.in", "pistol")),
      //               }, child:  Text("login")),
      //             )),
      //       ),
      //     ),
    );

// @override
// Widget build(BuildContext context) => BlocListener(listener: listener);

  }
}
