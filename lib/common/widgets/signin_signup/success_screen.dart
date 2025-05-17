import 'package:flutter/material.dart';
import 'package:flutterecommerce/features/authentications/screens/login/Login.dart';
import 'package:get/get.dart';

import '../../../utills/constants/size.dart';
import '../../../utills/constants/text_string.dart';
import '../../../utills/helper/helperfunction.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
        this.image="assets/images/animations/success-email-here.gif",
        required this.title,
        required this.subTitle,
        required this.onPressed
      });

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(CustomSize.defaultSpace),
              child: Column(
                children: [
                  /// Image
                  Image(
                    image: const AssetImage(
                        "assets/images/animations/success-email-here.gif"),
                    width: CustomHelperFunction.screenWidth() * 0.6,
                  ),
                  const SizedBox(height: CustomSize.spaceBetweenItems),

                  /// Title & SubTitle
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineMedium?.apply(
                          color: dark ? Colors.white : Colors.black,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: CustomSize.spaceBetweenItems),
                  Text(
                    subTitle,
                    style: Theme.of(context).textTheme.labelLarge?.apply(
                          color: dark ? Colors.white : Colors.grey,
                        ),
                    textAlign: TextAlign.center,
                  ),

                  /// Buttons
                  const SizedBox(height: CustomSize.spaceBetweenItems),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: onPressed,child: Text("Continue")),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
