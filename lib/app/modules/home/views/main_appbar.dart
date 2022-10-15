import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/values/colors.dart';
import '../controllers/home_controller.dart';

class MainAppBar extends GetWidget<HomeController> {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: MyColors.lightBlue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      clipBehavior: Clip.hardEdge,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu)),
            Expanded(
                child: GestureDetector(
              onTap: () {},
              child: Text(
                'Search your notes',
                style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
              ),
            )),
            IconButton(onPressed: () {}, icon: const Icon(Icons.grid_view)),
            GestureDetector(
                onTap: controller.authController.signInWithGoogle,
                child: CircleAvatar(
                    backgroundImage:
                        NetworkImage(controller.authController.user!.photoURL!),
                    radius: 15))
          ],
        ),
      ),
    );
  }
}
