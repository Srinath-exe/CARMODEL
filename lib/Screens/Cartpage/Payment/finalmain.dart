import 'package:flutter/material.dart';

import 'package:modelcars/Screens/Authentication/ForgotPassword/NewPassword.dart';
import 'package:modelcars/Screens/Authentication/ForgotPassword/forgotPassword.dart';
import 'package:modelcars/Screens/Authentication/login.dart';

import 'package:modelcars/Screens/Cartpage/Payment/Payment.dart';
import 'package:modelcars/Screens/Cartpage/Payment/ShippingDetails.dart';
import 'package:modelcars/Screens/Cartpage/Payment/guestLogin.dart';
import 'package:modelcars/Screens/Cartpage/Payment/paymnetlogin.dart';
import 'package:modelcars/Screens/Cartpage/Payment/ordersummary.dart';

class PaymentMain extends StatefulWidget {
  const PaymentMain({Key? key}) : super(key: key);

  @override
  _PaymentMainState createState() => _PaymentMainState();
}

class _PaymentMainState extends State<PaymentMain> {
  int index=1;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: PreferredSize(preferredSize: Size.fromHeight(kToolbarHeight),
            child: Container(
              color: Colors.white,
              child: new SafeArea(
                child:  TabBar(
                  indicatorColor: Colors.blue,
              tabs: [
                
                Tab(text: 'Login'),
                Tab(
                  text: 'Summary',
                ),
                Tab(text: 'Details'),
                Tab(text: "Payment",)
              ],
            ),
              ) ),),
          // AppBar(
          //   elevation: 0,
          //   bottom: TabBar(
          //     tabs: [
          //       Tab(text: 'FIRST'),
          //       Tab(
          //         text: 'SECOND',
          //       ),
          //       Tab(text: 'THIRD'),
          //     ],
          //   ),
          // ),
          backgroundColor: Colors.white,
          body: TabBarView(
            children: [
              PaymentLogin(),
              OrderSummary(),
              ShippingDetails(),
              PaymentPage()
            ],
          )),
    );
  }
}
