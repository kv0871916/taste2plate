import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tastes2plate/helpers/validators.dart';
import 'package:velocity_x/velocity_x.dart';

class AppBarView extends StatefulWidget {
  final Image menuIcon;
  final Image logoIcon;
  final Image shopcartIcon;

  AppBarView(this.menuIcon, this.logoIcon, this.shopcartIcon);

  @override
  _AppBarViewState createState() =>
      _AppBarViewState(this.menuIcon, this.logoIcon, this.shopcartIcon);
}

class _AppBarViewState extends State<AppBarView> {
  final Image menuIcon;
  final Image logoIcon;
  final Image shopcartIcon;
  _AppBarViewState(this.menuIcon, this.logoIcon, this.shopcartIcon);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.red,
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, right: 15, left: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: context.safePercentHeight * 6,
                          child: menuIcon),
                      Container(
                          height: context.safePercentHeight * 6,
                          child: logoIcon)
                    ],
                  ),
                  Container(
                    width: context.safePercentWidth * 6,
                    child: shopcartIcon,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.grey.shade400, // set border color
                    width: 1.0), // set border width
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)), // set rounded corner radius
              ),
              child: Center(
                child: CupertinoFormRow(
                  prefix: Container(
                    width: context.safePercentWidth * 6,
                    child: Icon(Icons.search_outlined),
                  ),
                  child: CupertinoTextFormFieldRow(
                    placeholder: 'Search',
                    padding: EdgeInsets.all(0),
                    validator: (value) => validateMessage(value!),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
