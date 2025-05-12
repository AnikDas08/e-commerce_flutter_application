import 'package:flutter/material.dart';

import '../../../../../utills/constants/custome_color.dart';
import '../../../../../utills/constants/image_string.dart';

class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: CustomColor.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          width: 40,
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: 30,
              height: 30,
              image: AssetImage("assets/logos/google-icon.png"),
            ), // Image
          ), // IconButton
        ),
        SizedBox(width: 20,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: CustomColor.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          width: 40,
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: 30,
              height: 30,
              image: AssetImage(CustomImage.facebook),
            ), // Image
          ), // IconButton
        ),
      ],
    );
  }
}