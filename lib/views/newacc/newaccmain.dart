import 'package:flutter/material.dart';
import 'package:tastes2plate/views/newacc/login/loginview.dart';
import 'package:tastes2plate/views/newacc/newaccview.dart';

class NewAccMain extends StatefulWidget {
  const NewAccMain({Key? key}) : super(key: key);

  @override
  _NewAccMainState createState() => _NewAccMainState();
}

class _NewAccMainState extends State<NewAccMain> {
  @override
  Widget build(BuildContext context) {
    return Material(child: NewAccView());
  }
}
