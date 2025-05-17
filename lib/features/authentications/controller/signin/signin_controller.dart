import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/loader/custom_snackbar.dart';
import 'package:flutterecommerce/features/authentications/screens/login/Login.dart';
import 'package:flutterecommerce/utills/popups/full_screen_loader.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../common/network/connectio.dart';
import '../../../../data/repositories/authintication/authentication_repository.dart';

class LoginController extends GetxController {
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  Future<void> emailAndPasswordSignIn(BuildContext context) async {
    try {

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        CustomFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!loginFormKey.currentState!.validate()) {
        CustomFullScreenLoader.stopLoading();
        return;
      }

      // Save Data if Remember Me is selected
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }else{
        CustomLoader.warningSnackBar(title: "Accept Privacy Policy",
            message: "In order to create Account, your must have to read term policy");
        return;
      }

      // Start Loading
      CustomFullScreenLoader.openLoadingDialog(
          "We are processing your information",
          "assets/images/animations/aninations.json",
          context);

      // Login user using Email & Password Authentication
      final userCredentials = await AuthenticationRepository.instance
          .logInWithEmailAndPassword(email.text.trim(), password.text.trim());

      // Remove Loader
      CustomFullScreenLoader.stopLoading();

      // show success snackbar
      CustomLoader.successSnackBar(title: "Congratulation",message: "Succefully login now account");

      // Redirect
      AuthenticationRepository.instance.redirectToAppropriateScreen();
    } catch (e) {
      CustomFullScreenLoader.stopLoading();
      CustomLoader.errorSnackBar(title: 'Error', message: e.toString());
      Get.offAll(LoginScreen());
    }
  }
}
