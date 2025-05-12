import 'package:flutter/material.dart';
import 'package:flutterecommerce/utills/theme/custom/appbar_themes.dart';
import 'package:flutterecommerce/utills/theme/custom/bottomsheet_theme.dart';
import 'package:flutterecommerce/utills/theme/custom/checkbox_theme.dart';
import 'package:flutterecommerce/utills/theme/custom/chip_theme.dart';
import 'package:flutterecommerce/utills/theme/custom/elevatedbuttontheme.dart';
import 'package:flutterecommerce/utills/theme/custom/outlinedbutton.dart';
import 'package:flutterecommerce/utills/theme/custom/text_formfield.dart';
import 'package:flutterecommerce/utills/theme/custom/text_theme.dart';

class CustomThemdata{
  CustomThemdata._();

  static ThemeData lightTheme=ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: CustomTextTheme.lightTexttheme,
    chipTheme: CustomChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: CustomAppBarTheme.lightAppBarTheme,
    checkboxTheme: CustomCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: CustomBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: CustomElevatedButton.lightElevatedButtonTheme,
    outlinedButtonTheme: CustomOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: CustomTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme=ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: CustomTextTheme.dardTextthemes,
    chipTheme: CustomChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: CustomAppBarTheme.darkAppBarTheme,
    checkboxTheme: CustomCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: CustomBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: CustomElevatedButton.dardElevatedButtonTheme,
    outlinedButtonTheme: CustomOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: CustomTextFormFieldTheme.lightInputDecorationTheme,
  );
}