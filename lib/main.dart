import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vending_machine/app/modules/login/views/login_Screen.dart';
import 'package:vending_machine/app/modules/splash/views/splash_Screen.dart';
import 'package:vending_machine/screen/botton_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
