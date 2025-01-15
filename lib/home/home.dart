


import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/ahadeth.dart';
import 'package:islami_app/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami_app/home/tabs/sebha_tab.dart';
import 'package:islami_app/home/tabs/timer_tab.dart';

import 'tabs/radio_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  static const String routName = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selsctedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/${getBackgrounName(selsctedIndex)}"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          currentIndex: selsctedIndex,
          onTap: (value) {
            selsctedIndex = value;
            setState(() {});
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          backgroundColor: Color(0xFFE2BE7F),
          items: [
            BottomNavigationBarItem(
                icon: _buildNavItem("Vector1", 0), label: "Quran"),
            BottomNavigationBarItem(
                icon: _buildNavItem("Vector2", 1), label: "Hadith"),
            BottomNavigationBarItem(
                icon: _buildNavItem("Vector3", 2), label: "Tasbeh"),
            BottomNavigationBarItem(
                icon: _buildNavItem("Vector4", 3), label: "Radio"),
            BottomNavigationBarItem(
                icon: _buildNavItem("Vector 5", 4), label: "Time"),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Image.asset("assets/images/Logo_bg.png"),
              ),
              Expanded(child: tabs[selsctedIndex]),
            ],
          ),
        ),
      ),
    );
  }
List<Widget>tabs=[
  QuranTab(),
  Ahadeth(),
  SebhaTab(),
  RadioTab(),
  TimerTab(),
];
  String getBackgrounName(int index) {
    switch (index) {
      case 0:
        return "Background.png";
      case 1:
        return "ahadeth_bg.png";
      case 2:
        return "sebha_bg.png";
      case 3:
        return "radio_bg.png";
      default:
        return "Background.png";
    }
  }

  Widget _buildNavItem(String imageName, int index) {
    return selsctedIndex == index
        ? Container(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(66),
                color: Color(0x99202020)),
            child: ImageIcon(AssetImage("assets/images/$imageName.png")))
        : ImageIcon(AssetImage("assets/images/$imageName.png"));
  }
}
