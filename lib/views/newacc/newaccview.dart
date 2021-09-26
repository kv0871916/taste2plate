import 'package:flutter/material.dart';
import 'package:tastes2plate/views/newacc/login/loginmain.dart';
import 'package:tastes2plate/views/newacc/login/loginview.dart';
import 'package:tastes2plate/views/newacc/signup/signupmain.dart';
import 'package:velocity_x/velocity_x.dart';

class NewAccView extends StatefulWidget {
  final Image logo;
  NewAccView(this.logo);

  @override
  _NewAccViewState createState() => _NewAccViewState(
        logo,
      );
}

class _NewAccViewState extends State<NewAccView> with TickerProviderStateMixin {
  final Image logo;
  _NewAccViewState(this.logo);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 2,
        child: SizedBox(
          height: context.safePercentHeight * 100,
          width: context.safePercentWidth * 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: context.screenWidth * 0.35,
                child: logo,
              ),
              Container(
                height: context.safePercentHeight * 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBar(
                    enableFeedback: true,
                    labelColor: Colors.red,
                    unselectedLabelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Colors.red,
                    tabs: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          'Login'.text.extraBold.uppercase.makeCentered(),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          'Sign up'.text.extraBold.uppercase.makeCentered(),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: context.safePercentHeight * 50,
                child: TabBarView(
                  children: [
                    Column(
                      children: [LoginMain()],
                    ),
                    Column(
                      children: [SignupMain()],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
