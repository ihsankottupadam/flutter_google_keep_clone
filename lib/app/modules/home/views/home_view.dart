import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_keep/app/data/enums/notetype.dart';

import '../../../../core/values/colors.dart';
import '../controllers/home_controller.dart';
import 'app_drawer.dart';
import 'bottom_bar.dart';
import 'home_body.dart';
import 'main_appbar.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MainAppBar(),
        automaticallyImplyLeading: false,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.newNote(NoteType.textNote),
        backgroundColor: MyColors.lightBlue,
        child: const Icon(Icons.add),
      ),
      drawer: const AppDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomBar(),
      body: const NoteView(),
    );
  }
}
