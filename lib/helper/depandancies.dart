import 'package:water_bailing/api/controllers.dart';

import '../api/api_client.dart';
import '../api/repo.dart';
import '../app_constants.dart';
import 'package:get/get.dart';

Future<void> init()async {
  // final sharedPreferences = await SharedPreferences.getInstance();
  // Get.lazyPut(() => sharedPreferences);
  //api cliend
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
  // Get.lazyPut(() => AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));
  //repos
  Get.lazyPut(() => SubscriptionRepo(apiClient: Get.find()));
  
  //controllers
  // Get.lazyPut(() => Subscription(subscriptionRepo: Get.find()));
  Get.lazyPut(() => SubscriptionController(subscriptionRepo: Get.find()));
 
  // Get.lazyPut(() => AuthController());
}