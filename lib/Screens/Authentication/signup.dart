import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
     double height = MediaQuery.of(context).size.height * 0.5;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      child: Center(child: Text("SignUp")),
    );
  }
}