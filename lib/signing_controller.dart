import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigningController extends GetxController
    with GetSingleTickerProviderStateMixin {
  List<Widget> signingTabs = [
    Text(
      'Login',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),
    Text(
      'Sign-Up',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    )
  ];
  late TabController signingTabConreoller;
  @override
  void onInit() {
    signingTabConreoller =
        TabController(length: signingTabs.length, vsync: this);
    super.onInit();
  }
}
