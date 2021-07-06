import 'package:flutter/material.dart';
import 'package:modelcars/Screens/HomePage/home.dart';

class NewPassword extends StatefulWidget {
  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  late bool _passwordVisible;
  late ScrollController _controller;
  late bool _passwordVisible1;
  late String password;
  late String passwordConfirm;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _passwordVisible = false;
    _controller = ScrollController(initialScrollOffset: 15);
    _passwordVisible1 = false;
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // appBar: AppBar(
          //   title: Text(
          //     '',
          //     style: TextStyle(
          //       fontSize: 25,
          //       fontWeight: FontWeight.w500,
          //       color: Colors.black,
          //     ),
          //   ),
          //   backgroundColor: Colors.white,
          //   elevation: 0,
          //   iconTheme: IconThemeData(
          //     color: Colors.black,
          //   ),
          // ),

          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            controller: _controller,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Container(
                        color: Colors.white,
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset('assets/images/Newpassword.png')),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    Row(
                      children: [
                        Text(
                          'Create new password',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Text(
                      'Your new password must be different from the previous used Password',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.30,
                      width: MediaQuery.of(context).size.width * 0.95,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 4),
                            child: Row(
                              children: [
                                Text(
                                  'Password',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:15.0),
                            child: TextFormField(
                              onTap: () {
                                setState(() {
                                  _controller.animateTo(
                                    _controller.position.maxScrollExtent,
                                    duration: Duration(seconds: 1),
                                    curve: Curves.fastOutSlowIn,
                                  );
                                });
                              },
                              obscureText: _passwordVisible,
                              onChanged: (value) {
                                password = value;
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Password';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock_outline,
                                    color: Colors.teal),
                                border: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                  const Radius.circular(15.0),
                                )),
                                hintText: 'New Password',
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    // Based on passwordVisible state choose the icon
                                    _passwordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Theme.of(context).primaryColorDark,
                                  ),
                                  onPressed: () {
                                    // Update the state i.e. toogle the state of passwordVisible variable
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 4),
                            child: Row(
                              children: [
                                Text(
                                  'Confirm password',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:15.0),
                            child: TextFormField(
                              obscureText: _passwordVisible1,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock_outline,
                                    color: Colors.teal),
                                border: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                  const Radius.circular(15.0),
                                )),
                                hintText: 'Confirm Password',
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    // Based on passwordVisible state choose the icon
                                    _passwordVisible1
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Theme.of(context).primaryColorDark,
                                  ),
                                  onPressed: () {
                                    // Update the state i.e. toogle the state of passwordVisible variable
                                    setState(() {
                                      _passwordVisible1 = !_passwordVisible1;
                                    });
                                  },
                                ),
                              ),
                              validator: (value) {
                                if (value != password) {
                                  return 'Password does not Match';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                passwordConfirm = value;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:18.0,vertical: 8),
                            child: Row(
                              children: [
                                Text(
                                  'Both Passwords must Match',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                      side: BorderSide(
                                          color: Colors.transparent))),
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed))
                                    return Colors.green;
                                  return Colors.teal;
                                },
                              ),
                            ),
                            child: Text(
                              'Reset Password',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()));
                              });
                            }),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          )),
    );
  }
}
