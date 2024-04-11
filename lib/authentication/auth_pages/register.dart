import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:water_bailing/authentication/auth_pages/login.dart';
import 'package:water_bailing/authentication/controllers/auth_controller.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 270,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
                    color: Color.fromARGB(255, 160, 198, 226),
                  ),
                  child: const Center(child: Text('Welcome',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w700),)),
              
                ),
                Container(
                  height: 500,
                  width: double.maxFinite,
                  margin: const EdgeInsets.only(top: 230,left: 10,right: 10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10,),
                       const Text('Register',style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 2, 35, 63),fontWeight: FontWeight.w700),),
                       const SizedBox(height: 20,),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 20),
                         child: TextField(
                          controller: usernameController,
                                decoration: InputDecoration(
                                  hintText: 'Enter Username',
                                  labelText: 'Username',labelStyle: const TextStyle(color:Color.fromARGB(255, 2, 35, 63), ),
                                  prefixIcon: const Icon(Icons.person,color: Color.fromARGB(255, 2, 35, 63),),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                        width: 1.0,
                                        color: Color.fromARGB(255, 2, 35, 63),
                                      )
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                        width: 1.0,
                                        color: Color.fromARGB(255, 2, 35, 63),
                                      )
                                  ),
                                  border:OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                       
                                  ),
                       
                                ),
                              ),
                       ),
                       const SizedBox(height: 10,),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 20),
                         child: TextField(
                          controller: emailController,
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  labelText: 'Enter email',labelStyle: const TextStyle(color:Color.fromARGB(255, 2, 35, 63),),
                                  prefixIcon: const Icon(Icons.email,color: Color.fromARGB(255, 2, 35, 63),),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                        width: 1.0,
                                        color: Color.fromARGB(255, 2, 35, 63),
                                      )
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                        width: 1.0,
                                        color: Color.fromARGB(255, 2, 35, 63),
                                      )
                                  ),
                                  border:OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                       
                                  ),
                       
                                ),
                              ),
                          
                       ),
                       const SizedBox(height: 10,),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 20),
                         child: TextField(
                          obscureText: true,
                          controller: passwordController,
                                decoration: InputDecoration(
                                  hintText: 'Enter Password',
                                  labelText: 'Password',labelStyle: const TextStyle(color:Color.fromARGB(255, 2, 35, 63),),
                                  prefixIcon: const Icon(Icons.password,color: Color.fromARGB(255, 2, 35, 63),),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                        width: 1.0,
                                        color: Color.fromARGB(255, 2, 35, 63),
                                      )
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                        width: 1.0,
                                        color: Color.fromARGB(255, 2, 35, 63),
                                      )
                                  ),
                                  border:OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                       
                                  ),
                       
                                ),
                              ),
                       ),
                       const SizedBox(height: 10,),
                       
                       const SizedBox(height: 40,),
                       GestureDetector(
                         onTap: (){
                            AuthController.instance.register(usernameController.text.trim(), emailController.text.trim(), passwordController.text.trim());
                          },
                         child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 60),
                          height: 50,
                          width: double.maxFinite,
                          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Color.fromARGB(255, 162, 201, 234),
                          ),
                          child: const Center(
                            child: Text('Register',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w700),),
                          ),
                         ),
                       ),
                       SizedBox(height: 20,),
                       Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("                     Have an account"),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                            onTap: () {
                              Get.to(const LoginPage());
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    )
                    ],
                  ),
                ),
                
              ],
            )
          ],
        ),
      )
    );
  }
}