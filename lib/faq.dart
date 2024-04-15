import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';


class Faqs extends StatelessWidget {
  const Faqs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
  child: Column(
    children: [
      Container(
  child: Column(
    children: [
      Container(
        height: 250,
        decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/jonnPage.jpeg"),
          ),
        ),
        child: Stack(
          children: [
            Container(
              color: Colors.white.withOpacity(0.5), // Adjust the opacity as needed
            ),
            Center(child: Text("FAQ", style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),)),
            GestureDetector(
              onTap: () => Get.back(),
              child: Container(
                margin: EdgeInsets.only(left: 20, top: 40),
                height: 40,
                width: 40,
                alignment: Alignment.topLeft,
                child: Icon(Icons.arrow_back),
              ),
            )
          ],
        ),
      ),

      SizedBox(height: 15,),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 65,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text("How can I provide a feedback or suggestion", style: TextStyle(fontSize: 16),),
        ),
      ),
      SizedBox(height: 20,),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 65,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text("Is there a  free trial", style: TextStyle(fontSize: 16),),
        ),
      ),
      SizedBox(height: 20,),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 65,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text("How can I contact customer support", style: TextStyle(fontSize: 16),),
        ),
      ),
      SizedBox(height: 20,),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 65,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text("What payment methods do you support", style: TextStyle(fontSize: 16),),
        ),
      ),
      SizedBox(height: 20,),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 65,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text("How can I provide a feedback or suggestion", style: TextStyle(fontSize: 16),),
        ),
      ),
      SizedBox(height: 20,),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 65,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text("How can I upgrade or downgrade subscription", style: TextStyle(fontSize: 16),),
        ),
      ),
      SizedBox(height: 20,),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 65,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text("Is my personal data secure", style: TextStyle(fontSize: 16),),
        ),
      ),
    ],
  ),
)

    ],
  ),
)
          ],
        ),
      ),
    );
  }
}