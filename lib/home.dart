import 'package:flutter/material.dart';
import 'package:water_bailing/api/controllers.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({super.key});
  SubscriptionController subscriptionController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Water Billing"),
      ),
      body: Container(
        // padding: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/header-mobile-Water01.jpg"),
                          fit: BoxFit.cover
                          )),
                          child: Stack(
                            alignment: Alignment.bottomCenter  ,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 15,),
                                    Text("Plan         :${subscriptionController.subList[0].amount.toString()}", style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                    Text("Total  : ${subscriptionController.subList[0].totalBought.toString()}",style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                                    Text("Used  : ${subscriptionController.subList[0].usedWate.toString()}", style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
                                    Text("Remaining:  ${subscriptionController.subList[0].availableWater.toString()}", style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
                                    
                                  ],
                                ),
                              ),
                              // Container(
                                
                              //   child: ,
                              // )
                            ],
                          ),
            ),
            Container(
              // ma
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(5)),
              margin: EdgeInsets.symmetric(vertical: 30),
              height: 60,
              child: Center(child: Text("Units available for usage")),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(5)),
              height: 60,
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Center(child: Text("Make Payments")),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(5)),
              height: 60,
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Center(child: Center(child: Text("Water reading"))),
            ),
            SizedBox(
              height: 110,
            ),
            Container(
              width: double.maxFinite,
              height: 50,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Center(child: Text("FAQs")),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 187, 209, 227), borderRadius: BorderRadius.circular(5)),
            )
          ],
        ),
      ),
    );
  }
}
