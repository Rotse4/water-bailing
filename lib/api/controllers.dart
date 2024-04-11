import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:water_bailing/api/repo.dart';

import 'model.dart';

class SubscriptionController extends GetxController {
  final SubscriptionRepo subscriptionRepo;
  List<Subscription> _subList = [];
  List<Subscription> get subList => _subList;
   List<String> sdata=[];
  var plan;
  var total;
  var used;
  var remaining;

  SubscriptionController({required this.subscriptionRepo});
  Future<void> getSubs() async {
    Response? response = await subscriptionRepo.getData();
    print("this is the esponse ${response?.bodyString}");
    if (response?.statusCode == 200) {
      // _subList.addAll(SubModel.fromJson(response?.body).subscription);
       plan=Subscription.fromJson(response?.body).amount;
       total=Subscription.fromJson(response?.body).totalBought;
       used=Subscription.fromJson(response?.body).usedWate;
       remaining=Subscription.fromJson(response?.body).availableWater;
       print("Plan isss $plan");
       print(response?.body);

      // print(_subList);
      update();
    } else {
      print("user orders not found");
    }
  }
}
