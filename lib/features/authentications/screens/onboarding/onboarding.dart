import 'package:flutter/material.dart';
import 'package:flutterecommerce/features/authentications/controller.onboarding/onboarding_controller.dart';
import 'package:flutterecommerce/utills/constants/image_string.dart';
import 'package:flutterecommerce/utills/constants/text_string.dart';
import 'package:get/get.dart';

import '../widgets/on_boarding_next_button.dart';
import '../widgets/onboardingDotNavigation.dart';
import '../widgets/onboardingpage.dart';
import '../widgets/onboardingskip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // horizontal
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: "assets/images/animations/shopping-cart.gif",
                title: CustomTexts.onBoardingTitle1,
                subtitle: CustomTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: CustomImage.onBordingImage2,
                title: CustomTexts.onBoardingTitle2,
                subtitle: CustomTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: "assets/images/animations/success-email-here.gif",
                title: CustomTexts.onBoardingTitle3,
                subtitle: CustomTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // skip buttton
          OnBordingSkip(),

          // Dot navigation page indicators
          OnBoardingDotNavigation(),

          // Circular button
          OnBordingNextButton()
        ],
      ),
    );
  }
}


