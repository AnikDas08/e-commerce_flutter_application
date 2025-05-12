import 'package:flutter/material.dart';
import 'package:flutterecommerce/utills/constants/custome_color.dart';

class CustomShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: CustomColor.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: CustomColor.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(2, 0),  // Changed to horizontal offset
  );
}