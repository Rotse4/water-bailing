import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:water_bailing/api/controllers.dart';
import 'package:water_bailing/authentication/auth_pages/login.dart';
import 'package:water_bailing/authentication/controllers/auth_controller.dart';
import 'package:water_bailing/faq.dart';
import 'package:water_bailing/home.dart';
import 'package:water_bailing/payment.dart';
import 'helper/depandancies.dart' as dep;

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: const FirebaseOptions(
    apiKey: 'AIzaSyBQpnYPM6ie9paMpFLLRg98D3elYkZQr28', 
    appId: '1:59614586993:android:5cae1c7c8f7fc646a613d0', 
    messagingSenderId: '59614586993', 
    projectId: 'billingsystem-61b81')).then((value) => Get.put(AuthController()));
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
          Get.find<SubscriptionController>().getSubs();

  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home:   Faqs(),
      home:   Home(),
    );
  }
}

