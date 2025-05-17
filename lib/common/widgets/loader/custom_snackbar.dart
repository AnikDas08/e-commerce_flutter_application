import 'package:flutter/material.dart';
import 'package:flutterecommerce/utills/constants/custome_color.dart';
import 'package:get/get.dart';

class CustomLoader {
  // Success snackbar with customizable title, message, and duration
  static void successSnackBar({
    required String title,
    String message = '',
    int duration = 3,
  }) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: CustomColor.white,
      backgroundColor: CustomColor.primarycolor,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
      margin: const EdgeInsets.all(20),
      icon: const Icon(Icons.check, color: CustomColor.white),
    );
  }

  // Warning snackbar with customizable title and message
  static void warningSnackBar({
    required String title,
    String message = '',
    int duration = 3,
  }) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: CustomColor.white,
      backgroundColor: Colors.orange,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
      margin: const EdgeInsets.all(20),
      icon: const Icon(Icons.warning, color: CustomColor.white),
    );
  }

  // Error snackbar (additional useful method)
  static void errorSnackBar({
    required String title,
    String message = '',
    int duration = 4,
  }) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: CustomColor.white,
      backgroundColor: Colors.red,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
      margin: const EdgeInsets.all(20),
      icon: const Icon(Icons.error, color: CustomColor.white),
    );
  }
}