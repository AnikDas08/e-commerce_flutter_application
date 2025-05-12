import 'package:flutter/material.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';

import '../../../utills/constants/custome_color.dart';

class CustomCirculaimage extends StatelessWidget {
  const CustomCirculaimage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.overlayColor,
    this.backgroundColor,
    required this.image,
    this.fit = BoxFit.cover,
    this.padding = 8,
    this.isNetworkImage = false,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: dark?CustomColor.dark:CustomColor.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: 
        Image(image: isNetworkImage?NetworkImage(image):AssetImage(image)as ImageProvider),
      ),
    );
  }
}