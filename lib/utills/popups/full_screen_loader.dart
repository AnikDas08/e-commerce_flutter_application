import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/loader/animation_loader.dart';
import 'package:flutterecommerce/utills/constants/custome_color.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:get/get.dart';

class CustomFullScreenLoader {
  /// Open a full-screen loading dialog with a given text and animation.
  /// This method doesn't return anything.
  ///
  /// Parameters:
  /// - text: The text to be displayed in the loading dialog.
  /// - animation: The Lottie animation to be shown.
  static void openLoadingDialog(String text, String animation,BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    showDialog(
      context: context, // Use Get.overlayContext for overlay dialogs
      barrierDismissible: false, // The dialog can't be dismissed by tapping outside it
      builder: (_) => PopScope(
        canPop: false, // Disable popping with the back button
        child: Container(
          color: dark
              ? CustomColor.dark
              : CustomColor.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250), // Adjust the spacing as needed
              CustomAnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        ),
      ),
    );
  }
  static void stopLoading() {
    if (Get.isDialogOpen ?? false) {
      Get.back(); // Dialog বন্ধ করার জন্য
    }
  }
}