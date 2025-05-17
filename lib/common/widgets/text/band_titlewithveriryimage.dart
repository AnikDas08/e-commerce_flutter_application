import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/text/brand_titletext.dart';
import 'package:flutterecommerce/utills/constants/enums.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';

import '../../../utills/constants/custome_color.dart';

class CustomTitlewithverifyImage extends StatelessWidget {
  const CustomTitlewithverifyImage({
    super.key,
    this.textColor=Colors.black,
    this.maxLines = 1,
    required this.title,
    this.iconColor = CustomColor.primarycolor,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor;
  final Color iconColor;
  final TextAlign textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: CustomBrandTitleText(
              title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: 8),
        Icon(Icons.verified, color: iconColor, size: 15),

      ],
    );
  }
}