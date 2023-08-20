import 'package:flutter/material.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:z_core/ex1/ex1_module.dart';
import 'package:z_core/main2.dart';
import 'package:z_core/main_content.dart';
import 'package:z_core/zcore/lib/di/di_module.dart';

void main() async {
  // Iterable<DIModule> modules=const[];
  // runApp(const HomeContent());
  WidgetsFlutterBinding.ensureInitialized();
  // await MobileAds.instance.initialize();
  //
  // RequestConfiguration requestConfiguration=RequestConfiguration(
  //   testDeviceIds: [""]
  // );
  // MobileAds.instance.updateRequestConfiguration(requestConfiguration);
  runApp(const MainContent());

  // runApp(MainContent());

}