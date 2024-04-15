import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:water_bailing/api/controllers.dart';
import 'package:water_bailing/dialog.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

SubscriptionController subscriptionController=Get.find();
  @override
  void initiate(){
    super.initState();
    subscriptionController.paymentMap['amount']="100";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.symmetric(vertical: 40,horizontal: 20),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 187, 209, 227),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("Subscriptions", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
          GestureDetector(
            onTap: () {
              setState((){
              subscriptionController.paymentMap['amount']="100";
            });
              Get.to(PhoneNumberDialog());
            },
            child: Container(
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                border: Border.all()
              ),
              child: Center(child: Text("100Ksh  200Ltrs")),
            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            // onTap: () => Get.to(PhoneNumberDialog()),
            onTap: () {
              setState((){
              subscriptionController.paymentMap['amount']="200";
            });
              Get.to(PhoneNumberDialog());
            },
            child: Container(
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                border: Border.all()
              ),
              child: Center(child: Text("200Ksh  500Ltrs")),
            ),
          ),
          SizedBox(height:20 ,),
          GestureDetector(
            onTap: () {
              setState((){
              subscriptionController.paymentMap['amount']="500";
            });
              Get.to(PhoneNumberDialog());
            },
            child: Container(
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                border: Border.all()
              ),
              child: Center(child: Text("500Ksh  1000Ltrs")),
            ),
          ),
          Expanded(
            child: Container(
              // color: Colors.white,
            )
            ),

          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue
            ),
            child: Center(child: Text("Make Payment")),
          ),

          SizedBox(height: 20,)

          ],
        
        ),
      ),
    );
  }
}