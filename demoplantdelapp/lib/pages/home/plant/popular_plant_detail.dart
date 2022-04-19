import 'dart:io';

import 'package:demoplantdelapp/pages/home/main_plant_page.dart';
import 'package:demoplantdelapp/widgets/dimensions.dart';
import 'package:demoplantdelapp/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

import '../../../widgets/app_column.dart';
import '../../../widgets/app_icon.dart';
import '../../../widgets/big_text.dart';
import '../../../widgets/icons_and_text_widget.dart';
import '../../../widgets/small_text.dart';


class PopularPlantDetail extends StatelessWidget {
  const PopularPlantDetail ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      body:Stack(
        children: [
          //background image
          Positioned(
            left: 0,
            right: 0,
            child:Container(
              width: double.maxFinite,
              height: Dimensions.popularPlantImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image:AssetImage(
                  "assets/images/indoor.png"
                  ) 
                )
              ),
            )
          ), //icon widgets
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap:() {
                  Get.to(() =>MainPlantPage());
                },
              child:
              AppIcon(icon: Icons.arrow_back_ios)),
              AppIcon(icon: Icons.add_shopping_cart_outlined)


            ],
            )),//introduction of plants
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularPlantImgSize-20,
              child: Container(
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20 ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20)
                  ),
                  color: Colors.white
                   ),
           child:Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children:[
             AppColumn(text:"Peace lily"),
             SizedBox(height: Dimensions.height20,),
             BigText(text:"Introduce"),
             SizedBox(height: Dimensions.height20,),
             const Expanded(child: SingleChildScrollView(child: ExpandableTextWidget(text: "The peace lily should be close to, but not directly under a window in a warm room in your house where it will benefit from indirect sunlight .It's best to water them a few times a week with filtered, room temperature water. Peace lilies prefer a soil that can mix drainage and moisture retention" ))),
             ],
           ),
                )
            ) //expandable text widget
        ],
      ),
      bottomNavigationBar: Container(
      height:Dimensions.botonHeightBar,
      padding:EdgeInsets.only(top:Dimensions.height30,bottom: Dimensions.height30,left:Dimensions.width20,right: Dimensions.width20),
      decoration: BoxDecoration(
        color:AppColors.buttonBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft:Radius.circular(Dimensions.radius20*2),
          topRight:Radius.circular(Dimensions.radius20*2)

        )
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Container(
          padding: EdgeInsets.only(top:Dimensions.height20, bottom: Dimensions.height20,left: Dimensions.width20, right: Dimensions.width20),
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(Dimensions.radius20),
            color: Colors.white
          ),
          child:Row(
            
            children: [
              Icon(Icons.remove,color:Color.fromARGB(255, 74, 73, 73),),
              SizedBox(width: Dimensions.width10/2,),
              BigText(text: "0"),
              SizedBox(width: Dimensions.width10/2,),
              Icon(Icons.add,color:Color.fromARGB(255, 63, 62, 62),),
            ],
            )
          ),
          Container(
            padding: EdgeInsets.only(top:Dimensions.height20, bottom: Dimensions.height20,left: Dimensions.width20, right: Dimensions.width20),
            child: BigText(text: "\Rs.150 | Add to cart", color:Colors.white,),
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(Dimensions.radius20),
              color: Color(0xFF89dad0)
            )
          )
          ],
          )
      ),
    );
  }
}

class AppColors {
  static var buttonBackgroundColor;
}