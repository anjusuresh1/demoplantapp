import 'package:demoplantdelapp/pages/home/main_plant_page.dart';
import 'package:demoplantdelapp/pages/home/plant/popular_plant_detail.dart';
import 'package:demoplantdelapp/pages/home/plant/recommended_plant_detail.dart';
import 'package:get/get.dart';

class RouteHelper{
  static const String initial="/";
  static const String popularPlant="/popular-plant";
  static const String recommendedPlant="/recommended-plant";
  
  static String getInitial()=>'$initial';
  static String getPopularPlant(int pageId)=>'$popularPlant?pageId=$pageId';
  static String getRecommendedPlant()=>'$recommendedPlant';

  static List<GetPage> routes=[
    GetPage(name: initial, page: ()=>MainPlantPage()),

    GetPage(name: popularPlant, page: (){
      var pageId=Get.parameters['pageId'];
      return PopularPlantDetail(pageId:int.parse(pageId!));

    },
      transition: Transition.fadeIn
    ),

    GetPage(name: recommendedPlant, page: (){
      return RecommendedPlantDetail();

    },
      transition: Transition.fadeIn
    )

  ];
}