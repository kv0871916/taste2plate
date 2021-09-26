import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tastes2plate/views/splash/splashview.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:vrouter/vrouter.dart';

class SplashMain extends StatefulWidget {
  const SplashMain({Key? key}) : super(key: key);

  @override
  _SplashMainState createState() => _SplashMainState();
}

class _SplashMainState extends State<SplashMain> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 2),
      () {
        context.vRouter.to('/newacc');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SplashView(
        Image.asset(
          'bgback/flash-screen.jpg',
          height: context.screenHeight,
          width: context.screenWidth,
          fit: BoxFit.fill,
        ),
        Image.asset('bgback/logo.png'),
        Image.asset('bgback/logo-slogan.png'),
      ),
    );
  }
}
