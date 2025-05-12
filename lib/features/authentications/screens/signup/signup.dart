import 'package:flutter/material.dart';
import 'package:flutterecommerce/features/authentications/screens/login/widgets/login_divider.dart';
import 'package:flutterecommerce/features/authentications/screens/login/widgets/social_button.dart';
import 'package:flutterecommerce/features/authentications/screens/signup/signup_form.dart';
import 'package:flutterecommerce/features/authentications/screens/signup/term_condition_checkbox.dart';
import 'package:flutterecommerce/features/authentications/screens/signup/verify_email.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:get/get.dart';

import '../../../../utills/constants/size.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(title: Text("Signup now",),
          backgroundColor: Colors.blue,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                "Let create account",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: dark?Colors.white:Colors.black),
              ),
              const SizedBox(height: CustomSize.spaceBetweenItems),

              /// Form
              CustomSignupForm(dark: dark,),
              SizedBox(height: CustomSize.spaceBetweenItems,),
              /// I agree to pricacy tearm condition
              TermConditionCheckbox(),
              SizedBox(height: CustomSize.spaceBetweenItems,),
              /// Signup Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(VerifyEmail());
                    }, child: Text("Create Account")),
              ),
              SizedBox(height: CustomSize.spaceBetweenItems,),
              /// Divider
              CustomLoginDivider(dark: dark,text: "or signup with",),
              SizedBox(height: CustomSize.spaceBetweenItems,),

              /// social button
              CustomSocialButton(),

            ],
          ),
        ),
      ),
    );
  }
}

