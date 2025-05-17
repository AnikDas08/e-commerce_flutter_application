

import 'package:flutter/cupertino.dart';
import 'package:flutterecommerce/common/widgets/loader/custom_snackbar.dart';
import 'package:flutterecommerce/data/repositories/authintication/authentication_repository.dart';
import 'package:flutterecommerce/data/repositories/authintication/user/user_model/user_model.dart';
import 'package:flutterecommerce/data/repositories/authintication/user/user_repository.dart';
import 'package:flutterecommerce/features/authentications/screens/signup/signup.dart';
import 'package:flutterecommerce/features/authentications/screens/signup/verify_email.dart';
import 'package:flutterecommerce/utills/popups/full_screen_loader.dart';
import 'package:get/get.dart';

import '../../../../common/network/connectio.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final hidePassword = true.obs; // password hide
  final privacyPolicy = false.obs; // privacy Policy
  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupkey = GlobalKey<FormState>();



  void signup(BuildContext context) async {
    try {

      /// Internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected){
       // CustomFullScreenLoader.stopLoading();
        return;
      }

      /// Check Text From Singup
      if (!signupkey.currentState!.validate()){
      // CustomFullScreenLoader.stopLoading();
        return;
      }

      /// privacy policy
      if (!privacyPolicy.value) {
       // CustomFullScreenLoader.stopLoading();
        CustomLoader.warningSnackBar(title: "Accept Privacy Policy",
            message: "In order to create Account, your must have to read term policy");
        return;
      }

      /// Start Loading
      CustomFullScreenLoader.openLoadingDialog(
          "We are processing your information",
          "assets/images/animations/aninations.json",context);

      /// Register use firebase authentication and Save data in Firestore
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(email.text.trim(), password.text);


      // Save Authenticate user data
      final newUser = UserModel(
          id: userCredential.user!.uid,
          firstName: firstName.text,
          lastName: lastName.text,
          username: userName.text,
          email: email.text,
          phoneNumber: phoneNumber.text,
          profilePicture: "");
      final userRepositories=Get.put(UserRepository());
      await userRepositories.saveUserRecord(newUser);

      // remove loader
      CustomFullScreenLoader.stopLoading();

      // show success snackbar
      CustomLoader.successSnackBar(title: "Congratulation",message: "Your account has been created");

      // Move To Verify Email Screen
      Get.offAll(VerifyEmail(email: email.text,));

    }catch (exception) {
      CustomLoader.errorSnackBar(
          title: "oh Snap", message: exception.toString());
      CustomFullScreenLoader.stopLoading();
      Get.offAll(SignupScreen());
    } finally {
      CustomFullScreenLoader.stopLoading();
    }
  }
}