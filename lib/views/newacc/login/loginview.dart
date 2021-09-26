import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:vrouter/vrouter.dart';

class LoginView extends StatefulWidget {
  final Image mbicon;
  final Image otpicon;
  LoginView(
    this.mbicon,
    this.otpicon,
  );

  @override
  _LoginViewState createState() => _LoginViewState(
        this.mbicon,
        this.otpicon,
      );
}

class _LoginViewState extends State<LoginView> {
  final Image mbicon;
  final Image otpicon;
  _LoginViewState(
    this.mbicon,
    this.otpicon,
  );
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.transparent,
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
                  child: mbicon,
                ),
                child: CupertinoTextFormFieldRow(
                  placeholder: 'Mobile Number',
                  validator: (value) => validateMobile(value!),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                  color: Colors.grey.shade400, // set border color
                  width: 1.0), // set border width
              borderRadius: BorderRadius.all(
                  Radius.circular(10.0)), // set rounded corner radius
            ),
            child: CupertinoFormRow(
              prefix: Container(
                width: context.safePercentWidth * 6,
                child: otpicon,
              ),
              child: CupertinoTextFormFieldRow(
                placeholder: 'OTP',
                validator: (value) => validateMobile(value!),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50.0),
              ),
              height: context.mq.size.height * 0.07,
              child: GestureDetector(
                onTap: () {
                  context.vRouter.to('/home');
                },
                child: 'Get Otp'.text.thin.uppercase.white.bold.makeCentered(),
              ))
        ],
      ),
    );
  }

  validateMobile(String s) {}
}
