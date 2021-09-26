import 'package:flutter/material.dart';
import 'package:tastes2plate/views/home/homemain.dart';

import 'package:tastes2plate/views/newacc/login/loginmain.dart';
import 'package:tastes2plate/views/newacc/newaccmain.dart';
import 'package:tastes2plate/views/splash/splashmain.dart';
import 'package:vrouter/vrouter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return VRouter(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      mode: VRouterMode.history,
      logs: VLogs.warning,
      debugShowCheckedModeBanner: false,
      transitionDuration: const Duration(seconds: 1),
      buildTransition: (animation1, _, child) =>
          FadeTransition(opacity: animation1, child: child),
      initialUrl: '/splash',
      routes: [
        VWidget(
          path: '/splash',
          name: 'splash',
          widget: Material(
            child: SplashMain(),
          ),
          buildTransition: (animation1, _, child) =>
              FadeTransition(opacity: animation1, child: child),
        ),
        VWidget(
          path: '/newacc',
          name: 'newacc',
          widget: Material(
            child: NewAccMain(),
          ),
          buildTransition: (animation1, _, child) =>
              FadeTransition(opacity: animation1, child: child),
        ),
        VWidget(
          path: '/home',
          name: 'home',
          widget: Material(
            child: HomeMain(),
          ),
          buildTransition: (animation1, _, child) =>
              FadeTransition(opacity: animation1, child: child),
        )
      ],
    );
  }
}
