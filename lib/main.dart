import 'package:flutter/material.dart';
import 'package:islami_app/on_bording_screens.dart';

import 'home/home.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: {
      OnBordingScreens.routName:(context)=>const OnBordingScreens(),
       HomeScreen.routName:(context)=>HomeScreen(),
     },
      initialRoute: "/",
    );
  }
}
