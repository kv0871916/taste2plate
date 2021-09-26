import 'package:flutter/material.dart';
import 'package:tastes2plate/views/newacc/login/loginview.dart';

class LoginMain extends StatefulWidget {
  const LoginMain({Key? key}) : super(key: key);

  @override
  _LoginMainState createState() => _LoginMainState();
}

class _LoginMainState extends State<LoginMain> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: LoginView(
      Image.asset(
        'icons/smartphone.png',
      ),
      Image.asset(
        'icons/mobile-phone.png',
      ),
    ));
  }
}
