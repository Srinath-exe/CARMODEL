
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modelcars/Models/tempPrdModel.dart';


class CardScrollWidget extends StatefulWidget {
  List<Product> products;

  CardScrollWidget({required this.products});

  @override
  _CardScrollWidgetState createState() => _CardScrollWidgetState();
}

class _CardScrollWidgetState extends State<CardScrollWidget> {
  var padding = 20.0;

  var verticalInset = 20.0;
  var cardAspectRatio;
  var widgetAspectRatio;
  var currentPage;
  @override
  void initState() {
    currentPage = widget.products.length - 1.0;
    cardAspectRatio = 12.0 / 15.0;
    widgetAspectRatio = cardAspectRatio * 1.2;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    PageController controller =
        PageController(initialPage: widget.products.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page!;
      });
    });
    return new AspectRatio(
      aspectRatio: widgetAspectRatio,
      child: LayoutBuilder(builder: (context, contraints) {
        var width = contraints.maxWidth;
        var height = contraints.maxHeight;

        var safeWidth = width - 2 * padding;
        var safeHeight = height - 2 * padding;

        var heightOfPrimaryCard = safeHeight;
        var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

        var primaryCardLeft = safeWidth - widthOfPrimaryCard;
        var horizontalInset = primaryCardLeft / 2;

        List<Widget> cardList = [];
        List<Color> colors = [Colors.black, Colors.blue, Colors.pinkAccent];

        for (var i = 0; i < widget.products.length; i++) {
          var delta = i - currentPage;
          bool isOnRight = delta > 0;

          var start = padding +
              max(
                  primaryCardLeft -
                      horizontalInset * -delta * (isOnRight ? 15 : 1),
                  0.0);

          var cardItem = Positioned.directional(
            top: padding + verticalInset * max(-delta, 0.0),
            bottom: padding + verticalInset * max(-delta, 0.0),
            start: start,
            textDirection: TextDirection.rtl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14.0),
              child: Container(
                color: Colors.white,
                child: Container(
                  decoration: BoxDecoration(color: Colors.white10, boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(3.0, 6.0),
                        blurRadius: 10.0)
                  ]),
                  child: AspectRatio(
                    aspectRatio: cardAspectRatio,
                    child: Column(
                      // fit: StackFit.expand,
                      children: <Widget>[
                        ShaderMask(
                          shaderCallback: (rect) {
                            return LinearGradient(
                              begin: Alignment(0.0, 0.6),
                              end: Alignment.bottomCenter,
                              colors: [Colors.white, Colors.transparent],
                            ).createShader(
                                Rect.fromLTRB(0, 0, rect.width, rect.height));
                          },
                          blendMode: BlendMode.dstATop,
                          child: Image.asset(widget.products[i].img[i],
                              fit: BoxFit.fitWidth),
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
                                child: Text(widget.products[i].name,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.0,
                                        fontFamily: "SF-Pro-Text-Regular")),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 12.0, bottom: 12.0),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 22.0, vertical: 6.0),
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  child: Text(
                                    "15,500",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
          cardList.add(cardItem);
        }
        return Container(
          child: Stack(
            children: <Widget>[
              Stack(
                clipBehavior: Clip.hardEdge,
                children: cardList,
              ),
              Positioned.fill(
                child: PageView.builder(
                  itemCount: widget.products.length,
                  controller: controller,
                  reverse: true,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      width: 100,
                    );
                  },
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}