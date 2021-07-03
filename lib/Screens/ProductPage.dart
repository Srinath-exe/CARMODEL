import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:favorite_button/favorite_button.dart';

import 'package:flutter/material.dart';
import 'package:modelcars/Models/tempPrdModel.dart';
import 'package:modelcars/Screens/HomePage/data.dart';
import 'package:modelcars/widgets/productCard.dart';

List<Product> products = [
  Product(
      name: "Fiat 131 Panorama - Alitalia",
      img: [
        "assets/images/image_01.jpg",
        "assets/images/image_02.jpg",
        "assets/images/image_03.jpg",
        "assets/images/image_04.jpg",
        "assets/images/image_05.jpg",
      ],
      details:
          "Named as 'GT' or Grand Touring car, the Ford made GT 40 were produced in the UK and was based on the British made Lola MK6 model with inputs from John Wyer Automotive Engineering, Shelby and a gearbox supplier called Kar-Kraft Powered by Ford made 289 cubic inch V8 engines, about 100 cars rolled out as Ford GT 40 in Mark I, II and Mark III variants. The reason why it was called 40 was because of the height of her windshield which was 40 inches.On 15th June, 1969 at the Circuit de la Sarthe during Le Mans, a Ford GT40 MK I entered by J. W. Automotive Engineering Ltd. and driven by Belgian Jacky Ickx and British Jack Oliver came first after doing 372 laps maintaining an average speed of 208 km/hr"),
  Product(
      name: "name",
      img: ["assets/images/image_02.jpg"],
      details:
          "Named as 'GT' or Grand Touring car, the Ford made GT 40 were produced in the UK and was based on the British made Lola MK6 model with inputs from John Wyer Automotive Engineering, Shelby and a gearbox supplier called Kar-Kraft Powered by Ford made 289 cubic inch V8 engines, about 100 cars rolled out as Ford GT 40 in Mark I, II and Mark III variants. The reason why it was called 40 was because of the height of her windshield which was 40 inches.On 15th June, 1969 at the Circuit de la Sarthe during Le Mans, a Ford GT40 MK I entered by J. W. Automotive Engineering Ltd. and driven by Belgian Jacky Ickx and British Jack Oliver came first after doing 372 laps maintaining an average speed of 208 km/hr"),
  Product(
      name: "lexus",
      img: ["assets/images/image_02.jpg"],
      details:
          "Named as 'GT' or Grand Touring car, the Ford made GT 40 were produced in the UK and was based on the British made Lola MK6 model with inputs from John Wyer Automotive Engineering, Shelby and a gearbox supplier called Kar-Kraft Powered by Ford made 289 cubic inch V8 engines, about 100 cars rolled out as Ford GT 40 in Mark I, II and Mark III variants. The reason why it was called 40 was because of the height of her windshield which was 40 inches.On 15th June, 1969 at the Circuit de la Sarthe during Le Mans, a Ford GT40 MK I entered by J. W. Automotive Engineering Ltd. and driven by Belgian Jacky Ickx and British Jack Oliver came first after doing 372 laps maintaining an average speed of 208 km/hr"),
  Product(
      name: "Ford GT40 MK1 -Le Mans-Winner",
      img: ["assets/images/image_01.jpg"],
      details:
          "Named as 'GT' or Grand Touring car, the Ford made GT 40 were produced in the UK and was based on the British made Lola MK6 model with inputs from John Wyer Automotive Engineering, Shelby and a gearbox supplier called Kar-Kraft Powered by Ford made 289 cubic inch V8 engines, about 100 cars rolled out as Ford GT 40 in Mark I, II and Mark III variants. The reason why it was called 40 was because of the height of her windshield which was 40 inches.On 15th June, 1969 at the Circuit de la Sarthe during Le Mans, a Ford GT40 MK I entered by J. W. Automotive Engineering Ltd. and driven by Belgian Jacky Ickx and British Jack Oliver came first after doing 372 laps maintaining an average speed of 208 km/hr")
];

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool add = false;
  int _currentIndex = 0;
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
              child: Container(
            child: Column(children: [
              appbar(),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Text(
                            "FORD GT40 MKI - LE MANS - WINNER",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                            textScaleFactor: 1,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Scale - 1:18",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                          textScaleFactor: 1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              show ? Container() : prd_img(),
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Text(
                          "₹ 21855.00",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                          textScaleFactor: 1,
                        ),
                        Text(
                          "₹ 114800.00",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                          textScaleFactor: 1,
                        ),
                      ],
                    ),
                  )),
              Specifications(),
              Prod_details(),
              Highlights(),
              Container(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "LATEST",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textScaleFactor: 1,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          
                            Column(
                              children: [
                                ProductCard(
                                  imglink:
                                      "https://www.scalemodelcart.com/usrfile/40002-18_Norev_Mercedes_Maybach_S_650_a.jpg",
                                  name: "Mercedes Maybach S 650",
                                  price: 13880.00,
                                ),
                                ProductCard(
                                  imglink:
                                      "https://www.scalemodelcart.com/usrfile/40002-18_Solido_S1803004_Ford_GT40_a.jpg",
                                  name: "Ford GT40",
                                  price: 7880.00,
                                ),
                              ],
                            
                          ),
                         
                             Column(
                              children: [
                                SizedBox(height:MediaQuery.of(context).size.height * 0.05),
                                 ProductCard(
                              imglink:
                                  "https://www.scalemodelcart.com/usrfile/40002-18_CMR175_Mazda_787B_LeMans_Gachot_a.jpg",
                              name: "Mazda 787B LeMans",
                              price: 9855.00,
                            ),
                            ProductCard(
                              imglink:
                                  "https://www.scalemodelcart.com/usrfile/40002-18_Shelby_Ford_GT40_MK2_LeMans_a.jpg",
                              name: "Shelby Ford GT40 MK II LeMans ",
                              price: 23000.00,
                            ),
                              ],
                            ),
                         
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                       
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ))),
    );
  }

  Widget prd_img() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.37,
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 0.1,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              autoPlayCurve: Curves.fastOutSlowIn,
              pageSnapping: true,
              height: MediaQuery.of(context).size.height * 0.34,
              onPageChanged: (index, reason) {
                setState(
                  () {
                    _currentIndex = index;
                  },
                );
              },
            ),
            items: products[0].img.map((e) {
              return Container(child: img(e));
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: products.map((urlOfItem) {
              int index = products.indexOf(urlOfItem);
              return Container(
                width: 5.0,
                height: 5.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index
                      ? Color.fromRGBO(0, 0, 0, 0.8)
                      : Color.fromRGBO(0, 0, 0, 0.3),
                ),
              );
            }).toList(),
          ),
        ],
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
      child: Image.asset(img, fit: BoxFit.fill),
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
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
              onPressed: () {}),
          Row(
            children: [
              FavoriteButton(
                iconSize: 40,
                valueChanged: (_isFavorite) {
                  _isFavorite = true;
                  _isFavorite == true
                      ? ScaffoldMessenger.of(context)
                          .showSnackBar(const SnackBar(
                          content: Text('Added to Whishlist '),
                        ))
                      : ScaffoldMessenger.of(context)
                          .showSnackBar(const SnackBar(
                          content: Text('Removed to Whishlist '),
                        ));
                },
              ),
              IconButton(
                icon: add
                    ? const Icon(
                        Icons.add_shopping_cart_sharp,
                        color: Colors.orange,
                      )
                    : const Icon(
                        Icons.add_shopping_cart_sharp,
                        color: Colors.black,
                      ),
                onPressed: () {
                  setState(() {
                    add = !add;
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Added to Shopping cart'),
                    ));
                  });
                },
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class Prod_details extends StatefulWidget {
  const Prod_details({Key? key}) : super(key: key);

  @override
  Prod_detailsState createState() => Prod_detailsState();
}

class Prod_detailsState extends State<Prod_details> {
  bool exapnded = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "PRODUCT DETAILS",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textScaleFactor: 1,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            exapnded
                ? Text(
                    products[1].details,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    textScaleFactor: 1,
                    maxLines: 3,
                  )
                : Text(
                    products[1].details,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    textScaleFactor: 1,
                  ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.008,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      exapnded = !exapnded;
                    });
                  },
                  child: Container(
                    child: Text(
                      exapnded ? "See More" : "Show Less",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w500),
                      textScaleFactor: 1,
                    ),
                  ),
                ),
                exapnded
                    ? Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey[600],
                        size: 15,
                      )
                    : Icon(Icons.expand_less,
                        color: Colors.grey[600], size: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Highlights extends StatefulWidget {
  const Highlights({Key? key}) : super(key: key);

  @override
  _HighlightsState createState() => _HighlightsState();
}

class _HighlightsState extends State<Highlights> {
  final controller = ScrollController();
  bool exapnded = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          exapnded = !exapnded;
          // controller.animateTo(controller.position.maxScrollExtent, duration:Duration(milliseconds:1000), curve:Curves.easeIn);
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
        child: Container(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "HIGHLIGHTS",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textScaleFactor: 1,
                ),
                exapnded
                    ? Icon(Icons.arrow_forward_ios)
                    : Icon(
                        Icons.expand_more,
                        size: 35,
                      ),
              ],
            ),
            exapnded
                ? Container()
                : Container(
                    child: Column(children: [
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.008),
                    list("Premium Collectible"),
                    list("Licenced Product"),
                    list("Material: ZAMAC (zinc alloy), Rubber and Plastic"),
                    list("Opening Model"),
                  ])),
          ],
        )),
      ),
    );
  }

  Widget list(String txt) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "-" + txt,
              style: TextStyle(
                fontSize: 15,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ],
    );
  }
}

class Specifications extends StatefulWidget {
  const Specifications({Key? key}) : super(key: key);

  @override
  _SpecificationsState createState() => _SpecificationsState();
}

class _SpecificationsState extends State<Specifications> {
  bool exapnded = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          exapnded = !exapnded;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
        child: Container(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "SPECIFICATIONS",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textScaleFactor: 1,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.009,
            ),
            Row(
              children: [
                specs("Ford", "BRAND", Colors.orange,
                    Icons.directions_car_filled_outlined),
                specs(
                  "1947-1970",
                  "PERIOD",
                  Colors.orange,
                  Icons.history_outlined,
                ),

                // specs(),
              ],
            ),
            Row(
              children: [
                specs(
                  "1966",
                  "YEAR",
                  Colors.orange,
                  Icons.schedule_rounded,
                ),
                specs(
                    "USA", "MODEL ORIGIN", Colors.orange, Icons.flag_outlined),

                // specs(),
              ],
            ),
            Row(
              children: [
                specs(
                  "1:18",
                  "SCALE",
                  Colors.orange,
                  Icons.straighten_outlined,
                ),
                specs(
                  "12.5 X 6 X 5.5",
                  "BOX DIMENSIONS (INCH)",
                  Colors.orange,
                  Icons.view_in_ar_outlined,
                ),

                // specs(),
              ],
            ),
            Row(
              children: [
                specs("Blue", "COLOR", Colors.blue, Icons.color_lens),
                specs("Solido", "MAKE", Colors.orange, Icons.business_outlined),
              ],
            ),
            Row(
              children: [
                specs(
                  "Racing-F1/GP",
                  "THEME",
                  Colors.orange,
                  Icons.color_lens_outlined,
                ),
                specs("Metal", "MATERIAL", Colors.orange,
                    Icons.build_circle_outlined),
              ],
            ),
          ],
        )),
      ),
    );
  }

  Widget specs(String txt, String txt2, Color col, IconData img) {
    return Container(
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.12,
            height: MediaQuery.of(context).size.height * 0.05,
            decoration: new BoxDecoration(
              //  image: DecorationImage(
              //   image: AssetImage(
              //       img),
              //   fit: BoxFit.fill,
              // ),
              color: Colors.grey[100],
              shape: BoxShape.circle,
            ),
            child: Center(
                child: Icon(
              img,
              color: Colors.orange[200],
              size: 25,
            )),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.02,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.30,
          height: MediaQuery.of(context).size.height * 0.05,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    txt,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    textScaleFactor: 1,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    txt2,
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[500]),
                    textScaleFactor: 1,
                  ),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }

  Widget table() {
    return Container(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          tablerow("Brand", 'Ford'),
          tablerow("Period", '1947-1970'),
          tablerow("Year", "1966"),
          tablerow("Model Origin", "USA"),
          tablerow("Scale", "1:18"),
          tablerow("Box Dimension (in inches)", "12.5 X 6 X 5.5"),
          tablerow("Color", "Blue"),
          tablerow("Make", "Solido"),
          tablerow("Theme", "Racing - F1 / GP"),
          tablerow("Material", "Metal"),
        ],
      ),
    );
  }

  Widget tablerow(String c1, String c2) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9 * 0.3,
                  child: Text(
                    c1,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w400),
                    textScaleFactor: 1,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9 * 0.5,
                  child: Text(c2,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w500),
                      textScaleFactor: 1),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
