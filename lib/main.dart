import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:e_commerce/pages/home.dart';

import 'controller/auth/auth.dart';
import 'pages/splash.dart';

AuthController authController = AuthController();

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Obx(
        () {
          if (authController.authenicated.value)
            return HomeView();
          else
            return SplashScreen();
        },
      ),
    );
  }
}