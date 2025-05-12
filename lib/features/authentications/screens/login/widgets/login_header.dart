import 'package:flutter/material.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';

import '../../../../../utills/constants/image_string.dart';

class CustomLoginHeder extends StatelessWidget {
  const CustomLoginHeder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 150,
            image: AssetImage(CustomImage.onBoardingImage1)),
        SizedBox(
          height: 14,
        ),
        Center(
            child: Text(
              "Login Here",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black).apply(color: dark?Colors.white:Colors.black),
            )),
        SizedBox(
          height: 5,
        ),
        Center(
            child: Text(
              "Here is need to app login",
              style: TextStyle(fontSize: 14, color: Colors.black).apply(color: dark?Colors.white:Colors.black),
            ))
      ],
    );
  }
}