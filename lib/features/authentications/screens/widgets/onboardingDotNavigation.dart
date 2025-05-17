import 'package:flutter/material.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utills/constants/custome_color.dart';
import '../../../../utills/constants/size.dart';
import '../../../../utills/devices/deviceutility.dart';
import '../../controller/controller.onboarding/onboarding_controller.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    final controller=OnBoardingController.instance;
    return Positioned(
        bottom:
        CustomeDeviceUtility.getBottomNavigationBarHeight(context) +
            40,
        left: CustomSize.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(activeDotColor: dark?CustomColor.light: CustomColor.black, dotHeight: 6),
        ));
  }
}