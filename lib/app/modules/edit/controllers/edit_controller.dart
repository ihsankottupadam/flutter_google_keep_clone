import 'dart:developer';

import 'package:get/get.dart';
import 'package:google_keep/app/data/enums/edit_action.dart';
import 'package:google_keep/app/data/models/note.dart';

class EditController extends GetxController {
  late EditAction action;
  Note? note;
  NoteType? noteType;
  @override
  void onInit() {
    log('EditController');
    var arguments = Get.arguments;
    noteType = arguments['type'];
    log('type:$noteType');
    super.onInit();
  }

  saveNote() {}
}
