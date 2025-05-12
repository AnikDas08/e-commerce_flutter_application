import 'package:flutter/material.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';

class CustomProductText extends StatelessWidget {
  const CustomProductText({
    super.key,
    required this.title,
    this.smallSize = false,
    this.maxLines = 2,
    this.textAlign = TextAlign.left,
  });

  final String title;
  final bool smallSize;
  final int maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Text(
      title,
      style: smallSize
          ? Theme.of(context).textTheme.labelLarge?.apply(color: dark?Colors.white:Colors.black)
          : Theme.of(context).textTheme.titleSmall?.apply(color: dark?Colors.white:Colors.black),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}