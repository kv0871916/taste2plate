import 'package:flutter/material.dart';
import 'package:tastes2plate/views/home/homeview.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: HomeView(),
    );
  }
}
