import 'package:flutter/material.dart';

import '../../../../utills/constants/size.dart';
import '../../../../utills/constants/text_string.dart';
import '../../../../utills/helper/helperfunction.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(title: Text("kldjfk"),backgroundColor: Colors.blue,),
      body: SingleChildScrollView(
        child: Padding(
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
                CustomTexts.changeYourPasswordtitle,
                style: Theme.of(context).textTheme.headlineMedium?.apply(
                  color: dark ? Colors.white : Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: CustomSize.spaceBetweenItems),
              Text(
                CustomTexts.changeYourPasswordSubtitle,
                style: Theme.of(context).textTheme.labelLarge?.apply(
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
                    },
                    child: Text("Done")),
              ),
              const SizedBox(height: CustomSize.spaceBetweenItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {
                    },
                    child: Text("Resend Email")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
