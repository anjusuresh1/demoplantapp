


import 'package:demoplantdelapp/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'big_text.dart';
import 'dimensions.dart';
import 'icons_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({ Key? key, required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Column( 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: text,size: Dimensions.font26,),
                    SizedBox(height: Dimensions.height10,),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) => Icon(Icons.star, color: Color(0xFF89dad0),size: 15,)),
                        ),
                      ],
                    ),
                    SizedBox(height: Dimensions.height20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconAndTextWidget(icon: Icons.circle_sharp,
                            text: "Normal", 
                            iconColor: Color.fromARGB(255, 222, 176, 96)),

                        IconAndTextWidget(icon: Icons.location_on,
                            text: "1.7km", 
                            iconColor: Color(0xFF69c5df)),

                        IconAndTextWidget(icon: Icons.access_time_rounded,
                            text: "32min", 
                            iconColor: Color.fromARGB(255, 173, 146, 205))
                      ],
                    )
                  ],
    );
  }
}