import 'package:flutter/material.dart';
import 'package:islami_app/cach/cach_helper.dart';
import 'package:islami_app/on_bording_screens.dart';
import 'package:islami_app/sura_detalis/sura_detalis.dart';

import 'home/home.dart';
import 'my_theme_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:MyThemeData.lightTheme ,
        darkTheme:MyThemeData.darkTheme ,

      themeMode: ThemeMode.light,
      routes: {
        OnBordingScreens.routName: (context) => OnBordingScreens(),
        SuraDetalis.routName: (context) => SuraDetalis(),
        HomeScreen.routName: (context) => HomeScreen(),
      },
      initialRoute: CacheHelper.getEligibility() == true
          ? HomeScreen.routName
          : OnBordingScreens.routName,
    );
  }
}
