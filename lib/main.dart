import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:google_keep/core/theme/app_theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
      title: "Google Keep",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme));
}
