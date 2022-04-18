import 'package:demoplantdelapp/controllers/popular_product_controller.dart';
import 'package:demoplantdelapp/data/api/api_client.dart';
import 'package:demoplantdelapp/data/api/repository/popular_product_repo.dart';
import 'package:get/instance_manager.dart';

Future<void> init()async {
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://www.kaggle.com/colinmorris/hello-python/tutorial"));

  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));

}