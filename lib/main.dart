import 'package:flutter/material.dart';
import 'package:modelcars/Screens/Cartpage/Cart.dart';
import 'package:modelcars/Screens/HomePage/home.dart';
import 'package:modelcars/Screens/ProductViewpage/ProductPage.dart';
import 'package:modelcars/Screens/ProductViewpage/product_detail_view.dart';
import 'package:modelcars/Screens/WishList/WishList.dart';

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
 
        primarySwatch: Colors.grey,
      ),
      home:CartPage()
    );
  }
  
}

