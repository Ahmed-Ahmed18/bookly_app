import 'package:booky_app/constants.dart';
import 'package:booky_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false ,
      home: const SplashView(),
      theme: ThemeData().copyWith(scaffoldBackgroundColor: kPrimaryColor),
    );
  }
}


