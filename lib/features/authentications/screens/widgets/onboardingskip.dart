import 'package:flutter/material.dart';
import 'package:flutterecommerce/features/authentications/controller.onboarding/onboarding_controller.dart';

import '../../../../utills/constants/size.dart';

class OnBordingSkip extends StatelessWidget {
  const OnBordingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: CustomSize.defaultSpace,
        right: CustomSize.defaultSpace,
        child: TextButton(onPressed: () {
          return OnBoardingController.instance.skipPage();
        }, child: const Text("Skip",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),)));
  }
}