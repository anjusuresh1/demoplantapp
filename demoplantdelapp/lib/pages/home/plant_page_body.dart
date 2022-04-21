import 'dart:ui';

import 'package:demoplantdelapp/pages/home/plant/popular_plant_detail.dart';
import 'package:demoplantdelapp/routes/route_helper.dart';
import 'package:demoplantdelapp/widgets/app_column.dart';
import 'package:demoplantdelapp/widgets/big_text.dart';
import 'package:demoplantdelapp/widgets/icons_and_text_widget.dart';
import 'package:demoplantdelapp/widgets/small_text.dart';
import 'package:demoplantdelapp/widgets/dimensions.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class PlantPageBody extends StatefulWidget {
  const PlantPageBody({Key? key}) : super(key: key);

  @override
  State<PlantPageBody> createState() => _PlantPageBodyState();
}

class _PlantPageBodyState extends State<PlantPageBody> {
  var plants = [
    {
      "type": "Indoor Plants",
      "name": "Peace lily",
      "Scientific name": "Spathiphyllum",
      "image": "assets/images/img1.jpeg",
      "description":
          "The peace lily should be close to, but not directly under a fwindow in a warm room in your house where it will benefit from indirect sunlight. It's best to water them a few times a week with filtered, room temperature water. Peace lilies prefer a soil that can mix drainage and moisture retention."
    },
    {
      "type": "Indoor Plants",
      "name": "Monstera",
      "Scientific name": "Monstera adansonii",
      "image": "assets/images/img2.jpeg",
      "description":
          "Place your Monstera where it can receive medium to bright indirect light.Water every one to two weeks, allowing soil to dry out between waterings. Plant your Monstera in a container with drainage holes and use a good quality potting soil with peat moss that drains easily."
    },
    {
      "type": "Outdoor Plants",
      "name": "Aglaonema red ruby",
      "Scientific name": "Aglaonema commutatum",
      "image": "assets/images/img3.jpeg",
      "description":
          "The green variety of the plant needs low sunlight whereas variegated ones need medium to bright sunlight. Water thoroughly in the summer, and mist often to raise humidity. During the winter, reduce watering but do not let the plant dry completely. A well-drained potting soil is perfect."
    },
    {
      "type": "Outdoor Plants",
      "name": "Paper flower",
      "Scientific name": "Bougainvillaea",
      "image": "assets/images/img1.jpeg",
      "description":
          "Sunlight is the most important factor that helps this plant grow to its fullest. They need at least six to eight hours of sunlight a day to produce their beautiful colours. Bougainvillaea likes it dry. It prefers a good, deep watering every three or four weeks to frequent shallow waterings.A mixture of loam and organic compost worked into the native soil is what works best for them"
    },
    {
      "type": "Hanging Plants",
      "name": "turtle vine",
      "Scientific name": "Callisia repens",
      "image": "assets/images/img3.jpeg",
      "description":
          "The plant does well in bright indirect sunlight. Save the plant from the scorching afternoon sun. It needs slightly moist soil for better growth. As a thumb rule, water only when the top 2-inches feel dry to touch."
    },
    {
      "type": "Hanging Plants",
      "name": "creeping inch plant",
      "Scientific name": "Callisia repens",
      "image": "assets/images/img2.jpeg",
      "description":
          "Most types of inch plant can take a little direct sun on their leaves, making them fun choices for growing in a sunny window. Water every 5 to 7 days depending on light and temperature. Keep soil evenly moist, but not soggy."
    },
    {
      "type": "water plants",
      "name": "water lily",
      "Scientific name": "Nymphaeaceae",
      "image": "assets/images/img1.jpeg",
      "description":
          "Lilies do best in warm, sunny conditions, so ideally should be planted no deeper than fourty five- sixty cms deep from the soil to the water surface."
    },
    {
      "type": "water plants",
      "name": "lotus",
      "Scientific name": "Nelumbo nucifera",
      "image": "assets/images/img2.jpeg",
      "description":
          "Place the pot in a shallow water maximum of 20to30cms deep and the best temperature to grow lotus plants is 70F."
    },
    {
      "type": "succulents",
      "name": "pincushion cactus",
      "Scientific name": "Mammillaria",
      "image": "assets/images/img3.jpeg",
      "description":
          "It needs between 10to14hours of light a day.The soil for a pincushion needs to be well drained and gritty. The soil needs to dry out between watering, which is best accomplished with a sandy topsoil."
    },
    {
      "type": "succulents",
      "name": "zebra plant",
      "Scientific name": "Haworthiopsis attenuata",
      "image": "assets/images/img1.jpeg",
      "description":
          "zebra plant thrives in the sunniest area that does not get very strong midday sun.Moderate Watering Once a week or so in Summer and once every two weeks in Winter.It grows best in a cactus potting mix that drains well."
    }
  ];

  var categories = [
    {
      "type": "Indoor Plants",
      "name": "Peace lily",
      "distance": "1.7km",
      "time": "3days",
      "image": "assets/images/img1.jpeg"
    },
    {
      "type": "Outdoor Plants",
      "name": "Peace lily",
      "distance": "3.4km",
      "time": "2-3days",
      "image": "assets/images/img2.jpeg"
    },
    {
      "type": "Hanging Plants",
      "name": "Peace lily",
      "distance": "1km",
      "time": "1-2days",
      "image": "assets/images/img3.jpeg"
    },
    {
      "type": "succulents",
      "name": "Peace lily",
      "distance": "4km",
      "time": "3-4days",
      "image": "assets/images/img1.jpeg"
    },
    {
      "type": "Water Plants",
      "name": "Peace lily",
      "distance": "1.2km",
      "time": "1-2days",
      "image": "assets/images/img1.jpeg"
    }
  ];

  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider section
        Container(
          // color: Colors.redAccent,
          height: Dimensions.pageView,

          child: PageView.builder(
              controller: pageController,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                // return _buildPageItem(position);
                return Stack(
                  children: [
                    GestureDetector(
                      onTap: () {Get.toNamed(RouteHelper.getRecommendedPlant());},
                      child: Container(
                        height: Dimensions.pageViewContainer,
                        margin: EdgeInsets.only(
                            left: Dimensions.width10,
                            right: Dimensions.width10),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius30),
                            color: index.isEven
                                ? Color(0xFF69c5df)
                                : Color(0xFF9294cc),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    categories[index]["image"].toString()))),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: Dimensions.pageViewTextContainer,
                        margin: EdgeInsets.only(
                            left: Dimensions.width30,
                            right: Dimensions.width30,
                            bottom: Dimensions.height30),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFFe8e8e8),
                                  blurRadius: 5.0,
                                  offset: Offset(0, 5)),
                              BoxShadow(
                                  color: Colors.white, offset: Offset(-5, 0)),
                              BoxShadow(
                                  color: Colors.white, offset: Offset(-5, 0))
                            ]),
                        child: Container(
                          padding: EdgeInsets.only(
                              top: Dimensions.height15, left: 15, right: 15),
                          child: AppColumn(
                              text: categories[index]["type"].toString()),
                        ),
                      ),
                    )
                  ],
                );
              }),
        ),
        //dots
        new DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            activeColor: Color(0xFF69c5df),
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        //popular text
        SizedBox(height: Dimensions.height30),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              SizedBox(
                width: Dimensions.width10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(
                  text: ".",
                  color: Color(0xFFccc7c5),
                ),
              ),
              SizedBox(
                width: Dimensions.width10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(text: "Plant pairing"),
              )
            ],
          ),
        ),
        //list of food and images

        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: plants.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.toNamed(RouteHelper.getRecommendedPlant());
                },
                child: Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                      bottom: Dimensions.height10),
                  child: Row(
                    children: [
                      //image section
                      Container(
                        width: Dimensions.listViewImgSize,
                        height: Dimensions.listViewImgSize,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius20),
                          color: Colors.white38,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage(plants[index]["image"].toString()),
                          ),
                        ),
                      ),
                      //text section
                      Expanded(
                          child: Container(
                        height: Dimensions.listViewTextContSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(Dimensions.radius20),
                              bottomRight:
                                  Radius.circular(Dimensions.radius20)),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: Dimensions.width10,
                              right: Dimensions.width10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(text: plants[index]["name"].toString()),
                              SizedBox(
                                height: Dimensions.height10,
                              ),
                              SmallText(text: plants[index]["type"].toString()),
                              SizedBox(
                                height: Dimensions.height10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconAndTextWidget(
                                      icon: Icons.circle_sharp,
                                      text: "Normal",
                                      iconColor:
                                          Color.fromARGB(255, 222, 176, 96)),
                                  IconAndTextWidget(
                                      icon: Icons.location_on,
                                      text:
                                          plants[index]["distance"].toString(),
                                      iconColor: Color(0xFF69c5df)),
                                  IconAndTextWidget(
                                      icon: Icons.access_time_rounded,
                                      text: plants[index]["time"].toString(),
                                      iconColor:
                                          Color.fromARGB(255, 173, 146, 205))
                                ],
                              )
                            ],
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
              );
            }),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }

    return Transform(
        transform: matrix,
        child: Stack(
          children: [
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteHelper.getPopularPlant(index));
                  },
                  child: Container(
                    height: Dimensions.pageViewContainer,
                    margin: EdgeInsets.only(
                        left: Dimensions.width10, right: Dimensions.width10),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius30),
                        color: index.isEven
                            ? Color(0xFF69c5df)
                            : Color(0xFF9294cc),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/indoor.png"))),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: Dimensions.pageViewTextContainer,
                margin: EdgeInsets.only(
                    left: Dimensions.width30,
                    right: Dimensions.width30,
                    bottom: Dimensions.height30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFFe8e8e8),
                          blurRadius: 5.0,
                          offset: Offset(0, 5)),
                      BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                      BoxShadow(color: Colors.white, offset: Offset(-5, 0))
                    ]),
                child: Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height15, left: 15, right: 15),
                  child: AppColumn(text: "Indoor Plants"),
                ),
              ),
            )
          ],
        ));
  }
}
