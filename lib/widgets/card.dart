import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';
import 'package:flutter_card_swipper/widgets/flutter_page_indicator/flutter_page_indicator.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:modelcars/Models/tempPrdModel.dart';

import 'package:modelcars/Screens/ProductViewpage/ProductPage.dart';

class HomeCard extends StatefulWidget {
  List<Product> products;

  HomeCard({Key? key, required this.products}) : super(key: key);

  @override
  _HomeCardState createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  bool add = false;
  @override
  Widget build(BuildContext context) {
    return Container(
    
      height: MediaQuery.of(context).size.height * 0.5,
      width:  MediaQuery.of(context).size.width ,
      // padding: const EdgeInsets.only(left: 32),
      child: Swiper(
        itemCount: widget.products.length,
        itemWidth: MediaQuery.of(context).size.width -2*30,
        layout: SwiperLayout.STACK,
        outer: true,
        containerHeight:MediaQuery.of(context).size.height*0.5,
        containerWidth: MediaQuery.of(context).size.height,
         
        // pagination: SwiperPagination(
        //   // builder:
        //   //     DotSwiperPaginationBuilder(activeSize: 10,
        //   //     color: Colors.grey,
        //   //     activeColor: Colors.white,
        //   //      space: 1),
        // ),
        itemBuilder: (context, index) {
          return 

                      Card(
                        
                        clipBehavior: Clip.hardEdge,
                        
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              // SizedBox(
                              //   height: MediaQuery.of(context).size.height*0.02,
                              // ),

                              Container(
                               // height: MediaQuery.of(context).size.height*0.35,
                                child: ShaderMask(
                                shaderCallback: (rect) {
                                  return LinearGradient(
                                    begin: Alignment(0.0, 0.6),
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.white, Colors.transparent],
                                  ).createShader(
                                      Rect.fromLTRB(0, 0, rect.width, rect.height));
                                },
                                blendMode: BlendMode.dstATop,
                                child: Image.asset('${widget.products[index].img[0]}',
                                    fit: BoxFit.fitWidth),
                            ),
                              ),
                              
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.0, vertical: 8.0),
                                      child: Text(widget.products[index].name,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.0,
                                              fontFamily: "SF-Pro-Text-Regular")),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            SizedBox(
                                              height: 10.0,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 12.0, bottom: 12.0),
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 22.0,
                                                    vertical: 6.0),
                                                decoration: BoxDecoration(
                                                    color: Colors.blueAccent,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0)),
                                                child: Text(
                                                  ""+"${widget.products[index].price}",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 16),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 8.0),
                                              child: OutlinedButton(
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'See More',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 12),
                                                      ),
                                                      Icon(
                                                        Icons.arrow_forward_ios,
                                                        size: 12,
                                                      )
                                                    ],
                                                  ),
                                                  style: OutlinedButton.styleFrom(
                                                    primary: Colors.black,
                                                    backgroundColor: Colors.white,
                                                    shape:
                                                        const RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius.all(
                                                                    Radius
                                                                        .circular(
                                                                            25))),
                                                  ),
                                                  onPressed: () {
                                                    setState(() {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  ProductPage()));
                                                    });
                                                  }),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            FavoriteButton(
                                              iconSize: 40,
                                              valueChanged: (_isFavorite) {
                                                _isFavorite = !_isFavorite;
                                                _isFavorite == false
                                                    ? Fluttertoast.showToast(
                                                        msg: "Added to Wishlist",
                                                        toastLength:
                                                            Toast.LENGTH_SHORT,
                                                        gravity:
                                                            ToastGravity.BOTTOM,
                                                        timeInSecForIosWeb: 1,
                                                        backgroundColor:
                                                            Colors.grey[100],
                                                        textColor: Colors.white,
                                                        fontSize: 12.0)
                                                    : Fluttertoast.showToast(
                                                        msg:
                                                            "Removed from Wishlist",
                                                        toastLength:
                                                            Toast.LENGTH_SHORT,
                                                        gravity:
                                                            ToastGravity.BOTTOM,
                                                        timeInSecForIosWeb: 1,
                                                        backgroundColor:
                                                            Colors.grey[100],
                                                        textColor: Colors.white,
                                                        fontSize: 12.0);
                                              },
                                            ),
                                            IconButton(
                                              icon: add
                                                  ? const Icon(
                                                      Icons
                                                          .add_shopping_cart_sharp,
                                                      color: Colors.orange,
                                                    )
                                                  : const Icon(
                                                      Icons
                                                          .add_shopping_cart_sharp,
                                                      color: Colors.black,
                                                    ),
                                              onPressed: () {
                                                setState(() {
                                                  add = !add;

                                                  add == true
                                                      ? Fluttertoast.showToast(
                                                          msg: "Added to Cart",
                                                          toastLength:
                                                              Toast.LENGTH_SHORT,
                                                          gravity:
                                                              ToastGravity.BOTTOM,
                                                          timeInSecForIosWeb: 1,
                                                          backgroundColor:
                                                              Colors.grey[100],
                                                          textColor: Colors.white,
                                                          fontSize: 12.0)
                                                      : Fluttertoast.showToast(
                                                          msg:
                                                              "Removed from Cart",
                                                          toastLength:
                                                              Toast.LENGTH_SHORT,
                                                          gravity:
                                                              ToastGravity.BOTTOM,
                                                          timeInSecForIosWeb: 1,
                                                          backgroundColor:
                                                              Colors.grey[100],
                                                          textColor: Colors.white,
                                                          fontSize: 12.0);
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                    
          );
        },
      ),
    );
  }
}
