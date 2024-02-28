import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Water Bailing"),
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
