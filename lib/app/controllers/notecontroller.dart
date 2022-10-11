import 'package:get/get.dart';

import 'package:firebase_database/firebase_database.dart';

class NoteController extends GetxController {
  final databaseReference = FirebaseDatabase.instance.ref();
}
