import 'package:flutter/material.dart';
import 'package:tastes2plate/views/newacc/login/loginmain.dart';
import 'package:tastes2plate/views/newacc/login/loginview.dart';

class NewAccView extends StatefulWidget {
  const NewAccView({Key? key}) : super(key: key);

  @override
  _NewAccViewState createState() => _NewAccViewState();
}

class _NewAccViewState extends State<NewAccView> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  Widget build(BuildContext context) {
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
    return Material(
      child: TabBar(
        enableFeedback: true,
        labelColor: Colors.red,
        controller: _tabController,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: Colors.red,
        tabs: [LoginMain(), LoginMain()],
      ),
    );
  }
}
