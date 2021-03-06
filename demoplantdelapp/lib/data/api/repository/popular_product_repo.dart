import 'package:demoplantdelapp/data/api/api_client.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:get/get.dart';

class PopularProductRepo extends GetxService{
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async{
    return await apiClient.getData("");
  }
} 