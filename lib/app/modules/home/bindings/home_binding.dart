import 'package:get/get.dart';
import 'package:google_keep/app/controllers/notecontroller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NoteController());
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
