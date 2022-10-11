import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/edit_controller.dart';

class EditView extends GetView<EditController> {
  const EditView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.done))],
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: 'Title'),
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Note'),
          )
        ],
      ),
    );
  }
}
