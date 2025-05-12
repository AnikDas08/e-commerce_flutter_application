import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/signin_signup/success_screen.dart';
import 'package:flutterecommerce/utills/constants/text_string.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:get/get.dart';

import '../../../../utills/constants/size.dart';
import '../login/Login.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSize.defaultSpace),
          child: Column(
            children: [

              /// Image
              Image(
                image: const AssetImage("assets/images/animations/email.gif"),
                width: CustomHelperFunction.screenWidth() * 0.6,
              ),
              const SizedBox(height: CustomSize.spaceBetweenItems),

              /// Title & SubTitle
              Text(CustomTexts.confirmEmail,
                style: Theme
                    .of(context)
                    .textTheme
                    .headlineMedium
                    ?.apply(
                  color: dark ? Colors.white : Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: CustomSize.spaceBetweenItems),
              Text(CustomTexts.emailAddress,
                style: Theme
                    .of(context)
                    .textTheme
                    .labelLarge
                    ?.apply(
                  color: dark ? Colors.white : Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: CustomSize.spaceBetweenItems),
              Text(CustomTexts.emailDescription,
                style: Theme
                    .of(context)
                    .textTheme
                    .labelLarge
                    ?.apply(
                  color: dark ? Colors.white : Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              /// Buttons
              const SizedBox(height: CustomSize.spaceBetweenItems),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(SuccessScreen());
                    }, child: Text("Continue")),
              ),
              const SizedBox(height: CustomSize.spaceBetweenItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {},
                    child: Text("Resend email",
                      style: TextStyle(color: dark ? Colors.white:Colors.grey),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
