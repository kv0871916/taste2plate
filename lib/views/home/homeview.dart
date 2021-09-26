import 'package:flutter/material.dart';
import 'package:tastes2plate/views/home/appbar/appbarmain.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          AppBarMain(),
        ],
      ),
    );
  }
}
