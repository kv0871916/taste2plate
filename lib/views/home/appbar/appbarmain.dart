import 'package:flutter/material.dart';
import 'package:tastes2plate/views/home/appbar/appbarview.dart';
import 'package:velocity_x/velocity_x.dart';

class AppBarMain extends StatefulWidget {
  const AppBarMain({Key? key}) : super(key: key);

  @override
  _AppBarMainState createState() => _AppBarMainState();
}

class _AppBarMainState extends State<AppBarMain> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: AppBarView(
                Image.asset('icons/iconfinder_Burger_Menu_4781852.png'),
                Image.asset('bgback/logo.png'),
                Image.asset('icons/iconfinder_meanicons_54_197227.png'))
            .box
            .color(Colors.red)
            .width(context.safePercentWidth * 100)
            .height(context.mq.size.height * 0.175)
            .make()
            .objectTopCenter(),
      ),
    );
  }
}
