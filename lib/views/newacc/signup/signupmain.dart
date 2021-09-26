import 'package:flutter/material.dart';
import 'package:tastes2plate/views/newacc/login/loginview.dart';
import 'package:tastes2plate/views/newacc/signup/signupview.dart';

class SignupMain extends StatefulWidget {
  const SignupMain({Key? key}) : super(key: key);

  @override
  _SignupMainState createState() => _SignupMainState();
}

class _SignupMainState extends State<SignupMain> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SignupView(
      Image.asset(
        'icons/mail.png',
      ),
      Image.asset(
        'icons/smartphone.png',
      ),
    ));
  }
}
