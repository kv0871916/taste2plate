import 'package:flutter/material.dart';
import 'package:tastes2plate/views/home/pages/deals/dealsviews.dart';

class DealsMain extends StatefulWidget {
  const DealsMain({Key? key}) : super(key: key);

  @override
  _DealsMainState createState() => _DealsMainState();
}

class _DealsMainState extends State<DealsMain> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: DealsView(),
    );
  }
}
