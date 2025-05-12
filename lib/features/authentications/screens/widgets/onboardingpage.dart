import 'package:flutter/material.dart';

import '../../../../utills/constants/size.dart';
import '../../../../utills/helper/helperfunction.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.all(CustomSize.defaultSpace),
      child: Column(
        children: [
          Image(
              width: CustomHelperFunction.screenWidth() * 0.8,
              height: CustomHelperFunction.screenHeight() * 0.6,
              image: AssetImage(image)),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.apply(color: dark?Colors.white:Colors.black),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: CustomSize.spaceBetweenItems),
          Text(
            subtitle,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.apply(color: dark?Colors.white:Colors.black),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}