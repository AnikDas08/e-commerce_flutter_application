import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterecommerce/common/widgets/loader/custom_snackbar.dart';
import 'package:flutterecommerce/common/widgets/signin_signup/success_screen.dart';
import 'package:flutterecommerce/data/repositories/authintication/authentication_repository.dart';
import 'package:get/get.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  @override
  void onInit() {
    sendEmailVerification();
    setTimerforAutoRedirects();
    super.onInit();
  }

  /// Send Email ver
  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerifications();
      CustomLoader.successSnackBar(
          title: "Email sent",
          message: "Plesase check your email and verity it go");
    } catch (exceptions) {
      CustomLoader.errorSnackBar(
          title: "error message", message: exceptions.toString());
    }
  }

  /// Timer to auto redirect email
  setTimerforAutoRedirects() async {
    Timer.periodic(Duration(seconds: 3), (timer) async {
      await FirebaseAuth.instance.currentUser!.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(() => SuccessScreen(
            title: "Succeful",
            subTitle: "Your email is verify now go to main fail",
            onPressed: () => AuthenticationRepository.instance
                .redirectToAppropriateScreen()));
      }
    });
  }
  /// Manually check
  checkEmailVeriyfication() async {
    final currentuser = FirebaseAuth.instance.currentUser;
    if (currentuser != null && currentuser.emailVerified) {
      Get.off(() => SuccessScreen(
          title: "Succeful",
          subTitle: "Your email is verify now go to main fail",
          onPressed: () => AuthenticationRepository.instance
              .redirectToAppropriateScreen()));
    }
  }
}
