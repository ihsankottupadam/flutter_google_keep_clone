import 'dart:async';

import 'package:get/get.dart';
import 'package:google_keep/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    goToLogin();
    super.onInit();
  }

  final String appLogo = 'assets/images/google_keep.png';
  void goToLogin() {
    Timer(const Duration(seconds: 3), () => Get.toNamed(Routes.LOGIN));
  }
}
