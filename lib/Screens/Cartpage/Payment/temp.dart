import 'package:flutter/material.dart';

class Temp extends StatefulWidget {
  const Temp({Key? key}) : super(key: key);

  @override
  _TempState createState() => _TempState();
}

class _TempState extends State<Temp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          // title: Container(
          //   child: Row(children: [
          //     Icon(Icons.check_box)
          //   ],),
          // ),
          bottom: TabBar(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Color(0xDD613896), width:0.0),
              insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
            ),
            labelColor: Colors.black,
            indicatorColor: Colors.purple,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(
                text: 'Login',
                icon: Icon(Icons.ac_unit),
              ),
              Tab(
                text: 'Summary',
                icon: Icon(
                  Icons.check_box_outline_blank_rounded,
                  color: Colors.green,
                ),
              ),
              Tab(
                text: 'Details',
                icon: icon(),
              ),
              Tab(
                text: "Payment",
                icon: icon(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget icon() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.01,
            height: MediaQuery.of(context).size.height * 0.004,
            color: Colors.white,
          ),
          CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(
                Icons.done,
                color: Colors.white,
              )),
          Container(
            width: MediaQuery.of(context).size.width * 0.01,
            height: MediaQuery.of(context).size.height * 0.004,
            color: Colors.white,
          ),
          //  LinearProgressIndicator(
          //         color: Colors.grey,

          //  )
        ],
      ),
    );
  }
}
