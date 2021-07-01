import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Benz barbus 700"),
        ),
        body: SingleChildScrollView(
            child: Container(
          child: Column(children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                //color:Colors.black,
              
                
              ),
              child: Image.asset('assets/images/bb.png')
            )
          ]),
        )));
  }
}
