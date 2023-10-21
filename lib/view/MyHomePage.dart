// ignore: file_names
import 'package:flutter/material.dart';
import 'package:youtubeclone/responsive/responsive.dart';

import 'mainContentScreen.dart';
import 'menu_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Responsive(
          mobile: MainContentScreen(height: height),
          tablet: Row(
            children: [
              Expanded(
                child: MainContentScreen(height: height),
              ),
            ],
          ),
          desktop: Row(
            children: [
              Expanded(
                flex: width >= 1300 ? 3 : 5,
                // ignore: prefer_const_constructors
                child: SideMenuScreen(),
              ),
              Expanded(
                flex: width >= 1300 ? 15 : 18,
                child: MainContentScreen(height: height),
              ),
            ],
          )),
    );
  }
}
