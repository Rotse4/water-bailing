import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:water_bailing/home.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();

  // ignore: unused_field
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

 

  void register(String username, String email, String password) async {
    if (username.isEmpty || email.isEmpty || password.isEmpty) {
      Get.snackbar(
        "Empty Fields",
        "Please fill all fields",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.TOP,
        titleText: const Text(
          'Registration failed',
          style: TextStyle(color: Colors.white),
        ),
      );
      return;
    }
    
    try {
      EasyLoading.show(status: 'Registering...');

      // Create user
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // Update display name
      await userCredential.user!.updateDisplayName(username);
      // Save username to Firestore
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredential.user!.uid)
          .set({'username': username});

      EasyLoading.dismiss();

      Get.snackbar(
        "Registered",
        "You have successfully registered",
        backgroundColor: Colors.green,
        snackPosition: SnackPosition.TOP,
        titleText: const Text(
          'Registration successful',
          style: TextStyle(color: Colors.white),
        ),
      );

      await Future.delayed(Duration(seconds: 1));

    
      Get.offAll(() => Home());
      
    } catch (e) {
      EasyLoading.dismiss(); 
      Get.snackbar(
        "Registration Failed",
        e.toString(),
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.TOP,
        titleText: const Text(
          'Account creation failed',
          style: TextStyle(color: Colors.white),
        ),
      );
    }
  }

  void login(String email, String password) async {
    if (email.isEmpty || password.isEmpty) {
      Get.snackbar(
        "Empty Fields",
        "Please fill in all fields",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.TOP,
        titleText: const Text(
          'Login failed',
          style: TextStyle(color: Colors.white),
        ),
      );
      print(FirebaseAuth.instance.currentUser);
      return;
    }

    try {
      EasyLoading.show(status: 'Authenticating...');

      // Sign in user
    
      // ignore: unused_local_variable
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Dismiss loading indicator
      EasyLoading.dismiss();

      // Show success message on login screen
      Get.snackbar(
        "Authenticated",
        "You have successfully logged in",
        backgroundColor: Colors.green,
        snackPosition: SnackPosition.TOP,
        titleText: const Text(
          'Login successful',
          style: TextStyle(color: Colors.white),
        ),
      );

      // Proceed to the home page with the username
      Get.offAll(() => Home());
      
    } catch (e) {

      EasyLoading.dismiss(); // Dismiss loading indicator
      Get.snackbar(
        "Login Failed",
        e.toString(),
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.TOP,
        titleText: const Text(
          'Login failed',
          style: TextStyle(color: Colors.white),
        ),
      );
    }
  }

  Future<void> logOut() async {
    await auth.signOut();
  }
}