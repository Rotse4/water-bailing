import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:water_bailing/api/repo.dart';

import 'model.dart';

class SubscriptionController extends GetxController {
  final SubscriptionRepo subscriptionRepo;
  List<Subscription> _subList = [];
  List<Subscription> get subList => _subList;
   List<String> sdata=[];

    RxMap<String, dynamic> paymentMap= RxMap();


  SubscriptionController({required this.subscriptionRepo});
  Future<void> getSubs() async {
    Response? response = await subscriptionRepo.getData();
    print("this is the esponse ${response?.bodyString}");
    if (response?.statusCode == 200) {

      _subList.addAll(SubModel.fromJson(response?.body).subscription);

       print(response?.body);

      print("sublist $_subList");
      update();
    } else {
      print("user orders not found");
    }
  }

    Future<Response> orderNow(Map<String, dynamic> order) async {
        var data= await subscriptionRepo.pay(paymentMap);
  //  print(data.bodyString);
   return data;
  }
}
