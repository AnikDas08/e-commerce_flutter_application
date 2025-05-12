import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomeDeviceUtility {
  /// Hides the keyboard if it's open
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  /// Sets the status bar color
  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

  /// Checks if device is in landscape orientation
  static bool isLandscapeOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  /// Checks if device is in portrait orientation
  static bool isPortraitOrientation(BuildContext context) {
    return !isLandscapeOrientation(context);
  }

  /// Gets the screen height
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  /// Gets the screen width
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// Gets the pixel ratio
  static double getPixelRatio(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }

  /// Gets the status bar height
  static double getStatusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  /// Gets the bottom navigation bar height
  static double getBottomNavigationBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }

  /// Checks if device has notch
  static bool hasNotch(BuildContext context) {
    return MediaQuery.of(context).padding.top > 24;
  }

  /// Vibrates the device
  static Future<void> vibrate(Duration duration) async {
    await HapticFeedback.vibrate();
    await Future.delayed(duration);
    await HapticFeedback.vibrate();
  }
}