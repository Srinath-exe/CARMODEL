import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modelcars/Screens/Authentication/ForgotPassword/forgotPassword.dart';




class PaymentLogin extends StatefulWidget {
  Function onLogin;
  PaymentLogin({Key? key,required this.onLogin}) : super(key: key);

  @override
  _PaymentLoginState createState() => _PaymentLoginState();
}

class _PaymentLoginState extends State<PaymentLogin> {
  late double height;
  late double width;
  int index = 0;
  FocusNode emailFocus = new FocusNode();
  FocusNode passwordFocus = new FocusNode();

  Material material = new Material();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height * 0.8;
    width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
          child: Container(
        //  height: height,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              design(),
              SizedBox(
                height: height * 0.03,
              ),
              index == 0
                  ? Container(
                      child: Column(
                        children: [
                          form(),
                           SizedBox(
                height: height * 0.03,
              ),
                          guest(),
                        ],
                      ),
                    )
                  : Container(
                      child: guestLogin(),
                    )
            ],
          )),
    );
  }

  Widget design() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Stack(
        children: [
          //   Positioned(
          //   right: 0,
          //   child: Container(
          //     height: MediaQuery.of(context).size.height * 0.4,
          //     width: MediaQuery.of(context).size.width * 0.8,
          //     child: Image.asset('assets/images/image_01.jpg')
          //   ),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget form() {
    return Container(
      width: width,
      child: Form(
        child: Column(
          children: [
            Material(
              elevation: 10,
              shadowColor: emailFocus.hasFocus ? Colors.red[200] : Colors.white,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  focusNode: emailFocus,
                  textAlign: TextAlign.left,
                  enabled: true,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  onTap: () {
                    SystemChannels.textInput.invokeMethod('TextInput.show');
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    labelText: "Email",
                    prefixIconConstraints:
                        BoxConstraints(minWidth: 23, maxHeight: 20),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                    ),
                    // hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                    labelStyle: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
              ),
            ),
           
            SizedBox(
              height: 15,
            ),
            Material(
              elevation: 10,
              shadowColor:
                  passwordFocus.hasFocus ? Colors.red[200] : Colors.white,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  focusNode: passwordFocus,
                  textAlign: TextAlign.left,
                  enabled: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Password';
                    }
                    return null;
                  },
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    labelText: "Password",

                    prefixIconConstraints:
                        BoxConstraints(minWidth: 23, maxHeight: 20),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.password,
                        color: Colors.grey,
                      ),
                    ),
                    // hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                    labelStyle: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
              ),
            ),
            
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgotPassword()));
                });
              },
              child: Container(
                padding: const EdgeInsets.only(right: 40.0, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot Password?',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ),
            Container(
              width: width * 0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  side: BorderSide(color: Color(0xff7b4775)))),
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return Color(0xff7b4775);
                              return Color(
                                  0xff7b4775); // Use the component's default.
                            },
                          ),
                        ),
                        onPressed: () {
                          widget.onLogin();
                          setState(() {});
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => ForgotPassword()));
                        },
                        child: Container(
                          width: width * 0.4,
                          padding: const EdgeInsets.all(12.0),
                          child: Center(
                              child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          )),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget guest() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'New Customers',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 30),
                  textScaleFactor: 1,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              'Proceed to checkout and you will have an opportunity to create an account at the end if one does not already exist for you.',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
              textScaleFactor: 1,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              width: width * 0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  side: BorderSide(color: Color(0xff7b4775)))),
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return Color(0xff7b4775);
                              return Color(
                                  0xff7b4775); // Use the component's default.
                            },
                          ),
                        ),
                        onPressed: () {
                          
                          setState(() {
                            index = 1;
                          });
                        },
                        child: Container(
                          width: width * 0.4,
                          padding: const EdgeInsets.all(12.0),
                          child: Center(
                              child: Text(
                            "Guest Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          )),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget guestLogin() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Continue as Guest',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                  textScaleFactor: 1,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.04,
            ),
             Material(
              elevation: 10,
              shadowColor: emailFocus.hasFocus ? Colors.red[200] : Colors.white,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  focusNode: emailFocus,
                  textAlign: TextAlign.left,
                  enabled: true,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  onTap: () {
                    SystemChannels.textInput.invokeMethod('TextInput.show');
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    labelText: "Enter your Email",
                    prefixIconConstraints:
                        BoxConstraints(minWidth: 23, maxHeight: 20),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                    ),
                    // hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                    labelStyle: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
              ),
            ),
              GestureDetector(
              onTap: () {
                setState(() {
               index=0;
                });
              },
              child: Container(
                padding: const EdgeInsets.only(right: 20.0, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Alread have an Account?',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ),
             SizedBox(
              height: height * 0.01,
            ),
            Container(
              width: width * 0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  side: BorderSide(color: Color(0xff7b4775)))),
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return Color(0xff7b4775);
                              return Color(
                                  0xff7b4775); // Use the component's default.
                            },
                          ),
                        ),
                        onPressed: () {
                             widget.onLogin();
                         
                        },
                        child: Container(
                          width: width * 0.4,
                          padding: const EdgeInsets.all(12.0),
                          child: Center(
                              child: Text(
                            "Continue as Guest",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          )),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
