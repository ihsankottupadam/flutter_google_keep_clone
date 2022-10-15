import 'package:get/get.dart';
import 'package:google_keep/app/controllers/authcontroller.dart';

class LoginController extends GetxController {
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  logIn() {
    Get.find<AuthController>().signInWithGoogle();
  }
}
