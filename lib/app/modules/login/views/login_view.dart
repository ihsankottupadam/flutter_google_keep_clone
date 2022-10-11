import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_keep/app/modules/login/views/widgets/google_button.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Hero(
            tag: "appLogo",
            child: Image.asset('assets/images/google_keep.png')),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: GoogleButton(
            onPressed: () {},
          ),
        ),
      ],
    ));
  }
}
