import 'package:flutter/material.dart';
import 'package:foodfly/core/routes.dart';
import 'package:foodfly/on_boarding.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: routes,
      debugShowCheckedModeBanner: false,
      title: 'Food Fly',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          primaryColor: Color(0xFFFF4B3A)),
      home: const OnBoardingScreen(),
    );
  }
}
