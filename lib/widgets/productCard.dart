import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  String imglink;
  String name;

  double price;
  ProductCard({required this.imglink, required this.name, required this.price});
  //const ProductCard({ Key? key }) : super(key: key) {this.img_link,this.});

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
            
              child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.all(Radius.circular(10))),
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.22,
          child: Column(
            children: [
              Container(
                  child: Stack(
                children: [
                  img(widget.imglink),
                  Positioned(
                    left: 10,
                    top: 10,
                    child: FavoriteButton(
                      iconSize: 30,
                      valueChanged: (_isFavorite) {
                        _isFavorite = true;
                        _isFavorite == true
                            ? ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                                content: Text('Added to Whishlist'),
                              ))
                            : ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                                content: Text('Removed to Whishlist '),
                              ));
                      },
                    ),
                  )
                ],
              )),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.37,
                          child: Text(
                            widget.name,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textScaleFactor: 1,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '₹ ' + widget.price.toString(),
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                          textScaleFactor: 1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget img(String img) {
    return ShaderMask(
        shaderCallback: (rect) {
          return LinearGradient(
            begin: Alignment(0.0, 0.6),
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.transparent],
          ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
        },
        blendMode: BlendMode.dstATop,
        child: Container(
            width: MediaQuery.of(context).size.width * 0.40,
            height: MediaQuery.of(context).size.height * 0.14,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Image.network(
              img,
              fit: BoxFit.fill,
            )));
  }
}