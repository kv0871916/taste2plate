import 'package:flutter/material.dart';
import 'package:tastes2plate/views/home/appbar/appbarmain.dart';
import 'package:tastes2plate/views/home/bottombar/bottombarview.dart';
import 'package:tastes2plate/views/home/pages/deals/dealsmain.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;
  Color _inactiveColor = Colors.black;
  Widget getBody() {
    List<Widget> pages = [
      Container(
        alignment: Alignment.topCenter,
        child: DealsMain(),
      ),
      Container(
        alignment: Alignment.topCenter,
        child: Text(
          "City",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        alignment: Alignment.topCenter,
        child: Text(
          "Brand",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        alignment: Alignment.topCenter,
        child: Text(
          "Category",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        alignment: Alignment.topCenter,
        child: Text(
          "Bulk Order",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }

  Widget _buildBottomBar() {
    return KrinfinityCustBottomBar(
      containerHeight: context.safePercentHeight * 5,
      backgroundColor: Colors.white,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomKrinFinityCustBarItem>[
        BottomKrinFinityCustBarItem(
          image: 'icons/menu1-s.png',
          title: Text('Deals'),
          activeColor: Colors.red,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomKrinFinityCustBarItem(
          image: 'icons/menu2.png',
          title: Text('City'),
          activeColor: Colors.red,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomKrinFinityCustBarItem(
          image: 'icons/menu3-s.png',
          title: Text('Brand'),
          activeColor: Colors.red,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomKrinFinityCustBarItem(
          image: 'icons/menu5-s.png',
          title: Text(
            'Category',
          ),
          activeColor: Colors.red,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomKrinFinityCustBarItem(
          image: 'icons/menu4-s.png',
          title: Text('Bulk Order'),
          activeColor: Colors.red,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    ).box.alignBottomCenter.make();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          AppBarMain(),
          getBody(),
          _buildBottomBar(),
        ],
      ),
    );
  }
}
