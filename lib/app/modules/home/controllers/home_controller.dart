import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_keep/app/controllers/authcontroller.dart';
import 'package:google_keep/app/data/enums/notetype.dart';
import 'package:google_keep/app/routes/app_pages.dart';

class HomeController extends GetxController {
  final AuthController authController = Get.find();
  @override
  void onInit() {
    km();
    super.onInit();
  }

  newNote(NoteType type) {
    Get.toNamed(Routes.EDIT, arguments: {'type': type});
  }

  km() {
    log('called');
    MediaQuery.of(Get.context!).removePadding(removeBottom: true);
  }
}
