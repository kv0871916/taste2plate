import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tastes2plate/helpers/validators.dart';
import 'package:velocity_x/velocity_x.dart';

class SignupView extends StatefulWidget {
  final Image mbicon;
  final Image otpicon;
  SignupView(
    this.mbicon,
    this.otpicon,
  );

  @override
  _SignupViewState createState() => _SignupViewState(
        this.mbicon,
        this.otpicon,
      );
}

class _SignupViewState extends State<SignupView> {
  final Image mbicon;
  final Image otpicon;
  _SignupViewState(
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
            child: CupertinoFormRow(
              prefix: Container(
                width: context.safePercentWidth * 6,
                child: mbicon,
              ),
              child: CupertinoTextFormFieldRow(
                placeholder: 'Email',
                validator: (value) => validateMobile(value!),
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
            child: Center(
              child: CupertinoFormRow(
                prefix: Container(
                  width: context.safePercentWidth * 6,
                  child: otpicon,
                ),
                child: CupertinoTextFormFieldRow(
                  placeholder: 'Mobile Number',
                  validator: (value) => validateMobile(value!),
                ),
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
                onTap: () {},
                child: 'Get Otp'.text.thin.uppercase.white.bold.makeCentered(),
              ))
        ],
      ),
    );
  }
}
