import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                cursorColor: Get.theme.primaryColor,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Get.theme.primaryColor,
                  )),
                  labelText: 'Email Address',
                  labelStyle: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 46.0, bottom: 34),
                child: TextFormField(
                  cursorColor: Get.theme.primaryColor,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Get.theme.primaryColor,
                    )),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              TextButton(
                  style: ButtonStyle(
                      splashFactory: NoSplash.splashFactory,
                      padding: MaterialStatePropertyAll(EdgeInsets.zero)),
                  onPressed: () {},
                  child: Text(
                    'Forgot passcode?',
                    style: TextStyle(
                      color: Get.theme.primaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
            ],
          ),
          Row(
            children: [
              RoundedFilledButton(
                title: 'Login',
                onPressed: () {
                  Get.offNamed('/signing');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final Function() onPressed;
  final String title;
  const RoundedButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                    vertical: 25,
                  )),
                  backgroundColor: MaterialStatePropertyAll(Colors.white)),
              onPressed: onPressed,
              child: Text(
                title,
                style: TextStyle(
                  color: Color(0xFFFF460A),
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              )),
        ),
      ],
    );
  }
}

class RoundedFilledButton extends StatelessWidget {
  final Function() onPressed;
  final String title;
  const RoundedFilledButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
              vertical: 20,
            )),
            backgroundColor: MaterialStatePropertyAll(Color(0xFFFF460A)),
          ),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          )),
    );
  }
}
