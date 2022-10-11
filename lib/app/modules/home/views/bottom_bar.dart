import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_keep/app/data/enums/notetype.dart';
import 'package:google_keep/app/modules/home/controllers/home_controller.dart';

import '../../../../core/values/colors.dart';

class BottomBar extends StatelessWidget {
  BottomBar({
    Key? key,
  }) : super(key: key);
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: MyColors.NavBarColor,
      notchMargin: 7,
      child: Row(
        children: [
          IconButton(
            onPressed: () => controller.newNote(NoteType.listNote),
            icon: const Icon(Icons.check_box_outlined),
            tooltip: 'New list note',
          ),
          IconButton(
              onPressed: () => controller.newNote(NoteType.audioNote),
              icon: const Icon(Icons.mic_none_outlined),
              tooltip: 'New auio note'),
          IconButton(
              onPressed: () => controller.newNote(NoteType.imageNote),
              icon: const Icon(Icons.image_outlined),
              tooltip: 'New image note')
        ],
      ),
    );
  }
}
