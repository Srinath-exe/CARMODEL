import 'package:flutter/material.dart';
import 'package:modelcars/widgets/cardScroll_widget.dart';


import 'data.dart';
import 'dart:math';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  var currentPage1 = products.length - 1.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF2d0f2c).withOpacity(1),
                Color(0xFF834e7c).withOpacity(1),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              tileMode: TileMode.clamp),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12.0, top: 30.0, bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Current Release",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                              fontFamily: "Calibre-Semibold",
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.bold)),
                      // Text("25+ Stories",
                      //     style: TextStyle(color: Colors.blueAccent))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFff6e6e),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 22.0, vertical: 6.0),
                            child: Text("Animated",
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text("25+ Stories",
                          style: TextStyle(color: Colors.blueAccent))
                    ],
                  ),
                ),
                CardScrollWidget(products: products),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Favourite",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                              fontFamily: "Calibre-Semibold",
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.bold)),
                      IconButton(
                        icon: Icon(
                          Icons.safety_divider,
                          size: 12.0,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                CardScrollWidget(
                  products: products,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}