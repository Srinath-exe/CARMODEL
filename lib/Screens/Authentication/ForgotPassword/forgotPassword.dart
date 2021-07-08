import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:modelcars/Screens/Authentication/ForgotPassword/NewPassword.dart';

import 'package:modelcars/Screens/HomePage/home.dart';

class ForgotPassword extends StatefulWidget {
  @override
  ForgotPasswordState createState() => ForgotPasswordState();
}

class ForgotPasswordState extends State<ForgotPassword> {
  late ScrollController _controller;

  String phoneno = '';
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    _controller = ScrollController(initialScrollOffset: 15);
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          controller: _controller,
          child: Container(
            height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    Container(
                        color: Colors.white,
                        // height: MediaQuery.of(context).size.height * 0.30,
                        // width: MediaQuery.of(context).size.width,
                        child: Image.asset('assets/images/forgotpassword.png')),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //image
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Container(
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.15,
                              child: Column(
                                children: [
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.03),
                                  Row(
                                    children: [
                                      Text("Reset password",
                                          style: TextStyle(
                                              fontSize: 35,
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01),
                                  Row(
                                    children: [
                                      Text("Forgot your password?",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),

                          ClayContainer(
                              parentColor: Colors.blue[100],
                              borderRadius: 20,
                              depth: 20,
                              surfaceColor: Colors.white,
                              spread: 5,
                              curveType: CurveType.none,
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width * 0.9,
                              //height: MediaQuery.of(context).size.height ,
                              child: Column(children: [
                                Container(
                                    color: Colors.transparent,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.02),
                                          Text(
                                              "Enter your registered phone number",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w600)),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextFormField(
                                              keyboardType:
                                                  TextInputType.number,
                                              onChanged: (value) {
                                                setState(() {
                                                  phoneno = value;
                                                });
                                              },
                                              decoration: InputDecoration(
                                                  prefixIcon: Icon(
                                                      Icons
                                                          .phone_android_outlined,
                                                      color: Colors.black),
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                    const Radius.circular(12.0),
                                                  )),
                                                  hintText: 'Phone Number'),
                                              onTap: () {
                                                _controller.animateTo(
                                                  _controller
                                                      .position.maxScrollExtent,
                                                  duration:
                                                      Duration(seconds: 1),
                                                  curve: Curves.fastOutSlowIn,
                                                );
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.01),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.4,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.05,
                                                child: OutlinedButton(
                                                    child: Text(
                                                      'Continue',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 16),
                                                    ),
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                      primary: Colors.white,
                                                      backgroundColor:
                                                          Color(0xFFF5793CE),
                                                      shape: const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                    ),
                                                    onPressed: () {
                                                      setState(() {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        NewPassword()));
                                                      });
                                                    })
                                                //  OutlineButton(
                                                //     highlightedBorderColor:
                                                //         Colors.black,
                                                //     borderSide: BorderSide(
                                                //         color: Colors.black),
                                                //     child: Text(
                                                //       "CONTINUE",
                                                //       textScaleFactor: 1,
                                                //       style: TextStyle(
                                                //         fontSize: 15,
                                                //         color: Colors.black,
                                                //         fontWeight:
                                                //             FontWeight.w600,
                                                //       ),
                                                //     ),
                                                //     onPressed: () {
                                                //       setState(() {
                                                //         Navigator.push(
                                                //             context,
                                                //             MaterialPageRoute(
                                                //                 builder:
                                                //                     (context) =>
                                                //                         Home()));
                                                //       });
                                                //     }),

                                                ),
                                          ),
                                        ]))
                           
                              ]))
                        ])
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
//  ElevatedButton(
//                                             style: ButtonStyle(
//                                               shape: MaterialStateProperty.all<
//                                                       RoundedRectangleBorder>(
//                                                   RoundedRectangleBorder(
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               50.0),
//                                                       side: BorderSide(
//                                                           color: Colors
//                                                               .transparent))),
//                                               backgroundColor:
//                                                   MaterialStateProperty
//                                                       .resolveWith<Color>(
//                                                 (Set<MaterialState> states) {
//                                                   if (states.contains(
//                                                       MaterialState.pressed))
//                                                     return  Colors.orange;
//                                                     else
//                                                     return Colors.orange;

//                                                 },
//                                               ),
//                                             ),
//                                             child: Text(
//                                               'Continue',
//                                               style: TextStyle(
//                                                 fontSize: 20,
//                                                 fontWeight: FontWeight.bold,
//                                               ),
//                                             ),
//                                             onPressed: () {

//                                             },
//                                           ),
