import 'package:flutter/material.dart';
import 'package:modelcars/Screens/HomePage/home.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
            child: Column(
          children: [
            appbar(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            // emptywishList(),
          ],
        )),
      ),
    );
  }

  Widget appbar() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
            onPressed: () {
              setState(() {});
            },
          ),
          
          Text(
            "CART",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
            textScaleFactor: 1,
          ),

          IconButton(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
            onPressed: () {
              setState(() {});
            },
          ),
        ]),
      ),
    );
  }
  Widget emptyCart() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Image.asset("assets/images/emptywishlist.png"),
              Text(
                "Your Wishlist is Empty",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
                textScaleFactor: 1,
              ),
              Text(
                "Tap the heart button to start saving your favourite items",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[500]),
                textScaleFactor: 1,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              OutlineButton(
                  highlightedBorderColor: Colors.black,
                  borderSide: BorderSide(color: Colors.black),
                  child: Text(
                    "ADD NOW",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
