import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutterecommerce/common/widgets/exceptions/firebase_authentication_exception.dart';
import 'package:flutterecommerce/common/widgets/exceptions/firebase_exception.dart';
import 'package:flutterecommerce/common/widgets/exceptions/formate_exception.dart';
import 'package:flutterecommerce/common/widgets/exceptions/platform_exception.dart';
import 'package:flutterecommerce/features/authentications/screens/signup/verify_email.dart';
import 'package:flutterecommerce/navigation_menu.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../features/authentications/screens/login/Login.dart';
import '../../../features/authentications/screens/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;
  bool _initialized = false;

  @override
  void onReady() {
    if (!_initialized) {
      _initialized = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        redirectToAppropriateScreen();
      });
    }
  }

  Future<void> redirectToAppropriateScreen() async {
    try {
      FlutterNativeSplash.remove();
      final user = _auth.currentUser;
      if (user != null) {
        if (user.emailVerified) {
          Get.offAll(NavigationMenu());
        } else {
          Get.offAll(VerifyEmail());
        }
      }else{
        final isFirstTime = deviceStorage.read('isFirstTime') ?? true;

        if (isFirstTime) {
          await deviceStorage.write('isFirstTime', false);
          Get.offAll(() => const OnBoardingScreen(),
              duration: const Duration(milliseconds: 500));
        } else {
          Get.offAll(() => const LoginScreen(),
              duration: const Duration(milliseconds: 500));
        }
      }

    } catch (e) {
      print('Redirection error: $e');
      Get.offAll(() => const LoginScreen());
    }

  }

  /// Email register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {

      throw CustomFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw CustomFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const CustomFormatException();
    } on PlatformException catch (e) {
      throw CustomPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  /// Email Verifycation
  Future<void> sendEmailVerifications() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw CustomFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw CustomFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const FormatException();
    } on PlatformException catch (e) {
      throw CustomPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  Future<UserCredential> logInWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw CustomFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw CustomFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const CustomFormatException();
    } on PlatformException catch (e) {
      throw CustomPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  ///Logout register
  Future<void> logOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    Get.offAll(LoginScreen());
    } on FirebaseAuthException catch (e) {
      throw CustomFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw CustomFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const CustomFormatException();
    } on PlatformException catch (e) {
      throw CustomPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
}
