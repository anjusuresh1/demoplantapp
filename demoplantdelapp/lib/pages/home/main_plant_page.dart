import 'package:demoplantdelapp/pages/home/plant_page_body.dart';
import 'package:demoplantdelapp/widgets/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:demoplantdelapp/widgets/big_text.dart';
import 'package:demoplantdelapp/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class MainPlantPage extends StatefulWidget {
  const MainPlantPage({ Key? key }) : super(key: key);

  @override
  State<MainPlantPage> createState() => _MainPlantPageState();
}

class _MainPlantPageState extends State<MainPlantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //showing the header
          Container(      
            child: Container(
              margin: EdgeInsets.only(top:Dimensions.height45,bottom:Dimensions.height15),
              padding: EdgeInsets.only(left:Dimensions.width20, right:Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                     BigText(text: "India", color:Color(0xFF89dad0)),
                      Row(
                        children: [
                          SmallText(text: "Kochi",color:Color.fromARGB(255, 74, 72, 71)),
                          Icon(Icons.arrow_drop_down_circle_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child:Container( 
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      child: Icon(Icons.search, color:Colors.white,size:Dimensions.iconSize24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15),
                        color: Color(0xFF89dad0),
                     ),
                    ) ,
                  )       
                ],
              ),
            ),
          ),
          //showing the body  
          Expanded(child: SingleChildScrollView(
            child: PlantPageBody(),
          )),
        ],
      ),
    );
  }
}
