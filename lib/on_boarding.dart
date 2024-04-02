import 'package:flutter/material.dart';
import 'package:foodfly/signing.dart';
import 'package:get/get.dart';

import 'shared/widgets.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 49),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 73,
                  height: 73,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(),
                  ),
                  child: Image.asset('assets/png/logo.png'),
                ),
                SizedBox(
                  height: 31,
                ),
                Text(
                  'Food Can Fly!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 65,
                    fontFamily: 'SF-Pro-Rounded',
                    fontWeight: FontWeight.w800,
                    height: 0.87,
                    letterSpacing: -1.95,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 120),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          alignment: Alignment.bottomRight,
                          width: 225.40,
                          height: 298.54,
                          child: Image.asset(
                            'assets/png/manFace.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 120),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          width: 358.10,
                          height: 434.36,
                          child: Image.asset(
                            'assets/png/girlFace.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 310,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      tileMode: TileMode.decal,
                      colors: [
                        Color(0xFFFF470B),
                        Color(0xFFff6b3b),
                        Colors.transparent,
                      ],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(36.0),
                    child: RoundedButton(
                      title: 'Get Started',
                      onPressed: () {
                        Get.offNamed('/signing');
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
