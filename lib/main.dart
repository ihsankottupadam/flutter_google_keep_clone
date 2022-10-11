import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_keep/app/modules/home/bindings/initial_bindings.dart';

import 'package:google_keep/core/theme/app_theme.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GetMaterialApp(
      title: "Google Keep",
      initialRoute: AppPages.INITIAL,
      initialBinding: InitialBindis(),
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme));
}
