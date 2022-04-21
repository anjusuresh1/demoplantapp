import 'package:demoplantdelapp/pages/home/plant/popular_plant_detail.dart';
import 'package:demoplantdelapp/routes/route_helper.dart';
import 'package:demoplantdelapp/widgets/app_icon.dart';
import 'package:demoplantdelapp/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';

import '../../../widgets/big_text.dart';
import '../../../widgets/dimensions.dart';
import 'package:get/get.dart';

class RecommendedPlantDetail extends StatelessWidget {
  const RecommendedPlantDetail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteHelper.initial);
                  },
                  child: AppIcon(icon: Icons.clear),
                ),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20) ,
                child: Center(child: BigText(size:Dimensions.font26,text:"Indoor Plants")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top:5, bottom: 10), 
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20)
                  )
                ),        
                ),

            ),
            pinned: true,
            backgroundColor: Colors.yellow,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/images/indoor.png",
              width: double.maxFinite,
              fit: BoxFit.cover,
              ),

            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(text: "The peace lily should be close to, but not directly under a window in a warm room in your house where it will benefit from indirect sunlight. It's best to water them a few times a week with filtered, room temperature water. Peace lilies prefer a soil that can mix drainage and moisture retention. The peace lily should be close to, but not directly under a window in a warm room in your house where it will benefit from indirect sunlight. It's best to water them a few times a week with filtered, room temperature water. Peace lilies prefer a soil that can mix drainage and moisture retention. The peace lily should be close to, but not directly under a window in a warm room in your house where it will benefit from indirect sunlight. It's best to water them a few times a week with filtered, room temperature water. Peace lilies prefer a soil that can mix drainage and moisture retention. The peace lily should be close to, but not directly under a window in a warm room in your house where it will benefit from indirect sunlight. It's best to water them a few times a week with filtered, room temperature water. Peace lilies prefer a soil that can mix drainage and moisture retention. "),
                  margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20 ),
                )
              ],
            ),
          )

        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: 
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(
                iconSize: Dimensions.iconSize24,
                iconColor:Colors.white,
                backgroundColor:Color(0xFF89dad0) ,
                icon: Icons.remove),
              BigText(text: "\Rs350 "+" X "+" 0 ", color: Colors.black87,size: Dimensions.font26,), 
              AppIcon(
                iconSize: Dimensions.iconSize24,
                iconColor:Colors.white,
                backgroundColor:Color(0xFF89dad0) ,
                icon: Icons.add)
            ],
          ),
          ),
          Container(
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
          child:Icon(  
            Icons.favorite,
            color: Color(0xFF89dad0),
            
           ),
          ),
          Container(
            padding: EdgeInsets.only(top:Dimensions.height20, bottom: Dimensions.height20,left: Dimensions.width20, right: Dimensions.width20),
            child: BigText(text: "\Rs.350 | Add to cart", color:Colors.white,),
            decoration: BoxDecoration( 
              borderRadius:BorderRadius.circular(Dimensions.radius20),
              color: Color(0xFF89dad0)
            )
          )
          ],
          )
      ),
        ],
      ),
    );
  }
}