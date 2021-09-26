import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashView extends StatefulWidget {
  final Image bgScren;
  final Image logo;
  final Image logoslogon;

  SplashView(this.bgScren, this.logo, this.logoslogon);

  @override
  _SplashViewState createState() => _SplashViewState(
        bgScren,
        logo,
        logoslogon,
      );
}

class _SplashViewState extends State<SplashView> {
  final Image bgScren;
  final Image logo;
  final Image logoslogon;
  _SplashViewState(this.bgScren, this.logo, this.logoslogon);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: context.screenHeight,
            width: context.screenWidth,
            child: bgScren,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: context.screenWidth * 0.7,
                  child: logo,
                ),
                20.heightBox,
                Container(
                  alignment: Alignment.center,
                  width: context.screenWidth * 0.7,
                  child: logoslogon,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
