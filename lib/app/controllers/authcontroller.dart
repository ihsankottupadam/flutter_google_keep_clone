import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_keep/app/routes/app_pages.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late Rx<User?> _user;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  User? get user => _user.value;
  @override
  void onReady() {
    super.onReady();
    _user = Rx(_auth.currentUser);
    _user.bindStream(_auth.userChanges());
    ever(_user, initScreen);
  }

  signInWithGoogle() async {
    try {
      final googleuser = await googleSignIn.signIn();
      if (googleuser == null) return;
      final googleAuth = await googleuser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _auth.signInWithCredential(credential);
      googleSignIn.signOut();
    } on Exception catch (_) {
      _showError('login failed');
    }
  }

  initScreen(User? user) async {
    if (user == null) {
      Get.offAllNamed(Routes.LOGIN);
    } else {
      Get.offAllNamed(Routes.HOME);
    }
  }

  signOut() async {
    try {
      await _auth.signOut();
      if (await googleSignIn.isSignedIn()) {
        await googleSignIn.signOut();
      }
    } on FirebaseException catch (e) {
      _showError('Error signout', e.message);
    }
  }

  _showError(String title, [String? message]) {
    Get.snackbar(title, message ?? '',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: const Color(0xAAF44336),
        colorText: Colors.white);
  }
}
