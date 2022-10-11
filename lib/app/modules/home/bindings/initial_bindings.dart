import 'package:get/get.dart';
import 'package:google_keep/app/controllers/authcontroller.dart';

class InitialBindis extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
  }
}
