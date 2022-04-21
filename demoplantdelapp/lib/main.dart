import 'package:demoplantdelapp/controllers/popular_product_controller.dart';
import 'package:demoplantdelapp/pages/home/main_plant_page.dart';
import 'package:demoplantdelapp/pages/home/plant/popular_plant_detail.dart';
import 'package:demoplantdelapp/pages/home/plant/recommended_plant_detail.dart';
import 'package:demoplantdelapp/pages/home/plant_page_body.dart';
import 'package:demoplantdelapp/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( 
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      home: MainPlantPage(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}

