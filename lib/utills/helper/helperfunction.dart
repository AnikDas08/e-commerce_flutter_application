import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CustomHelperFunction {
  /// Get color from color name string
  static Color? getColor(String value) {
    switch (value.toLowerCase()) {
      case 'green':
        return Colors.green;
      case 'red':
        return Colors.red;
      case 'blue':
        return Colors.blue;
      case 'pink':
        return Colors.pink;
      case 'grey':
        return Colors.grey;
      case 'purple':
        return Colors.purple;
      case 'black':
        return Colors.black;
      case 'white':
        return Colors.white;
      case 'yellow':
        return Colors.yellow;
      case 'orange':
        return Colors.orange;
      case 'teal':
        return Colors.teal;
      case 'cyan':
        return Colors.cyan;
      case 'brown':
        return Colors.brown;
      case 'indigo':
        return Colors.indigo;
      case 'amber':
        return Colors.amber;
      default:
        return null;
    }
  }

  /// Get color from hex code string
  static Color getColorFromHex(String hexColor) {
    hexColor = hexColor.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor"; // Add opacity if missing
    }
    return Color(int.parse(hexColor, radix: 16));
  }

  /// Check if app is running in dark mode
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  /// Get screen size
  static Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  /// Get screen height
  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  /// Get screen width
  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  /// Get formatted date
  static String getFormattedDate(DateTime date, {String format = 'dd MMM yyyy'}) {
    return DateFormat(format).format(date);
  }

  /// Remove duplicate items from a list
  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  /// Wrap text with overflow handling
  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    List<Widget> wrapped = [];
    for (var i = 0; i < widgets.length; i += rowSize) {
      var end = (i + rowSize < widgets.length) ? i + rowSize : widgets.length;
      wrapped.add(Row(children: widgets.sublist(i, end)));
    }
    return wrapped;
  }

  /// Check if email is valid
  static bool isValidEmail(String email) {
    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+',
    );
    return emailRegex.hasMatch(email);
  }

  /// Show snackbar
  static void showSnackBar(String message, {bool isError = false}) {
    Get.snackbar(
      isError ? 'Error' : 'Success',
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: isError ? Colors.red : Colors.green,
      colorText: Colors.white,
    );
  }

  /// Capitalize first letter of each word
  static String capitalize(String text) {
    if (text.isEmpty) return text;
    return text.split(' ').map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(' ');
  }

  /// Get device orientation
  static Orientation getOrientation(BuildContext context) {
    return MediaQuery.of(context).orientation;
  }

  /// Check if device has notch
  static bool hasNotch(BuildContext context) {
    return MediaQuery.of(context).viewPadding.top > 24;
  }
}