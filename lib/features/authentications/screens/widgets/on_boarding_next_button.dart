import 'package:flutter/material.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';

import '../../../../utills/constants/custome_color.dart';
import '../../../../utills/constants/size.dart';
import '../../../../utills/devices/deviceutility.dart';
import '../../controller.onboarding/onboarding_controller.dart';

class OnBordingNextButton extends StatelessWidget {
  const OnBordingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Positioned(
      right: CustomSize.defaultSpace+2,
      bottom: CustomeDeviceUtility.getBottomNavigationBarHeight(context)+15,
      child: ElevatedButton(
          onPressed: (){
            return
              OnBoardingController.instance.nextPage();
          },
          style: ElevatedButton.styleFrom(shape: CircleBorder(),backgroundColor:dark?CustomColor.white: CustomColor.black),
          child: Icon(Icons.keyboard_double_arrow_right_rounded)),
    );
  }
}