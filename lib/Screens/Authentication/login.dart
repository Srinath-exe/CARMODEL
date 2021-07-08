import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modelcars/Screens/Authentication/ForgotPassword/forgotPassword.dart';
import 'package:modelcars/Screens/Authentication/signup.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late double height;
  late double width;
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
    return Container(
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            design(),
            SizedBox(
              height: height * 0.05,
            ),
            form()
          ],
        ));
  }

  Widget design() {
    return Container(
         height: MediaQuery.of(context).size.height * 0.4,
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
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.6,
                  color: Colors.transparent,
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
      color: Colors.transparent,
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
                                  borderRadius: BorderRadius.circular(18.0),
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
                            Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ForgotPassword()));
                        },
                        child: Container(
                          width: width * 0.4,
                          padding: const EdgeInsets.all(12.0),
                          child: Center(child: Text("Login")),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}