import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vending_machine/app/modules/login/views/login_Screen.dart';
import 'package:vending_machine/app/modules/splash/views/splash_Screen.dart';
import 'package:vending_machine/app/routes/app_pages.dart';
import 'package:vending_machine/app/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialRoute: AppPages.initialRoute,
      getPages: AppPages.routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
