import 'package:get/get_connect/connect.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:water_bailing/api/api_client.dart';
import 'package:water_bailing/app_constants.dart';

class SubscriptionRepo extends GetxService{
  final ApiClient apiClient;
  SubscriptionRepo({required this.apiClient});

  Future<Response?> getData() async{
    var data= await apiClient.getData(AppConstants.SUB_DATA);
    // print(url)
    return data;
  }
}