import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/signin_signup/success_screen.dart';
import 'package:flutterecommerce/data/repositories/authintication/authentication_repository.dart';
import 'package:flutterecommerce/features/authentications/controller/signup/veryfi_email_address.dart';
import 'package:flutterecommerce/utills/constants/text_string.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:get/get.dart';

import '../../../../utills/constants/size.dart';
import '../login/Login.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key, this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunction.isDarkMode(context);
    final controller=Get.put(VerifyEmailController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => AuthenticationRepository.instance.logOut(),
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
              Text(
                CustomTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium?.apply(
                      color: dark ? Colors.white : Colors.black,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: CustomSize.spaceBetweenItems),
              const SizedBox(height: CustomSize.spaceBetweenItems),
              Text(
                email??"",
                style: Theme.of(context).textTheme.labelLarge?.apply(
                      color: dark ? Colors.white : Colors.black,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: CustomSize.spaceBetweenItems),
              Text(
                CustomTexts.emailDescription,
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
                    onPressed: ()=>controller.checkEmailVeriyfication(),
                    child: Text("Continue")),
              ),
              const SizedBox(height: CustomSize.spaceBetweenItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {controller.sendEmailVerification();},
                    child: Text(
                      "Resend email",
                      style:
                          TextStyle(color: dark ? Colors.white : Colors.grey),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
