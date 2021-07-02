import 'package:flutter/material.dart';
import 'package:modelcars/Screens/HomePage/home.dart';
import 'package:modelcars/Screens/ProductPage.dart';
import 'package:modelcars/Screens/ProductViewpage/product_detail_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        primarySwatch: Colors.green,
      ),
      home:ProductPage()
    );
  }
}

