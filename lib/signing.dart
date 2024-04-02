import 'package:flutter/material.dart';
import 'package:foodfly/shared/widgets.dart';
import 'package:foodfly/signing_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SigningPage extends GetView<SigningController> {
  const SigningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: PreferredSize(
          child: Container(
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x0F000000),
                    blurRadius: 30,
                    offset: Offset(0, 4),
                    spreadRadius: 1,
                  )
                ]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(85.0),
                  child: Image.asset('assets/png/logo.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 6.4,
                  ),
                  child: TabBar(
                    dividerColor: Colors.transparent,
                    controller: controller.signingTabConreoller,
                    tabs: controller.signingTabs,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 40),
                    indicatorColor: Get.theme.primaryColor,
                    splashFactory: NoSplash.splashFactory,
                  ),
                ),
              ],
            ),
          ),
          preferredSize: Size(double.infinity, 331)),
      body: TabBarView(
        controller: controller.signingTabConreoller,
        children: [
          SignIn(),
          Container(
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
