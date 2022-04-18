import 'package:demoplantdelapp/pages/home/plant/popular_plant_detail.dart';
import 'package:demoplantdelapp/widgets/dimensions.dart';
import 'package:demoplantdelapp/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({ Key? key, required this.text }) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddennText=true;

  double textHeight = Dimensions.screenheight/5.63;
  
  @override
  void initState(){
    super.initState();
    if(widget.text.length>textHeight){
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt()+1, widget.text.length);
    }else{
      firstHalf = widget.text;
      secondHalf = " ";
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(text: firstHalf):Column(
        children: [
          SmallText(height:1.8,text: hiddennText?(firstHalf+"..."):(firstHalf+secondHalf)),
          InkWell(
            onTap: (){
              setState(() {
                hiddennText=!hiddennText;
              });
               
            },
            child: Row(
              children: [
                SmallText(text: "show more", color:Color(0xFF89dad0),),
                Icon(hiddennText?Icons.arrow_drop_down:Icons.arrow_drop_up, color: Color(0xFF89dad0),)
  
            ]
            ),
          )
        ],
      ),
    );
  }
}