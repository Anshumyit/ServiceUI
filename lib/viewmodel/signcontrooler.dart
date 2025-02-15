import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urbanclap/view/otp.dart';


class AuthController extends GetxController {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  void login() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email.isNotEmpty && password.isNotEmpty) {
      Get.to(() => OtpVerificationScreen());
    } else {
      Get.snackbar("Error", "Please enter email and password");
    }
  }
}

