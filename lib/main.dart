import 'package:flutter/material.dart';
import 'package:z_core/main_content.dart';

void main() async {
  // Iterable<DIModule> modules=const[];
  // runApp(const HomeContent());
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainContent());
  // await MobileAds.instance.initialize();
  //
  // RequestConfiguration requestConfiguration=RequestConfiguration(
  //   testDeviceIds: [""]
  // );
  // MobileAds.instance.updateRequestConfiguration(requestConfiguration);
  // runApp(MainContent());

}