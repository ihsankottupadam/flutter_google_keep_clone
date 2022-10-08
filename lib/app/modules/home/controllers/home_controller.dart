import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    km();
    super.onInit();
  }

  km() {
    log('called');
    MediaQuery.of(Get.context!).removePadding(removeBottom: true);
  }
}
