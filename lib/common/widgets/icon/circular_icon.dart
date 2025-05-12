import 'package:flutter/material.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';

import '../../../utills/constants/size.dart';

class CustomCircularIcon extends StatelessWidget {
  const CustomCircularIcon({
    super.key,
    this.dark,
    this.width,
    this.height,
    this.size=CustomSize.iconLG,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final bool? dark;
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color:backgroundColor!=null?backgroundColor!: dark
            ? Colors.black.withOpacity(0.5)
            : Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
          onPressed: () => (), icon: Icon(icon,color: color,)),
    );
  }
}
