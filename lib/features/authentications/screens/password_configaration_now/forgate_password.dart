import 'package:flutter/material.dart';
import 'package:flutterecommerce/features/authentications/screens/password_configaration_now/reset_password.dart';
import 'package:flutterecommerce/utills/constants/text_string.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:get/get.dart';

import '../../../../utills/constants/size.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(CustomSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Headings
            Text(CustomTexts.forgatePasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium?.apply(color: dark?Colors.white:Colors.black)),
            const SizedBox(height: CustomSize.spaceBetweenItems),
            Text(CustomTexts.forgetPasswordSubtitle,
                style: Theme.of(context).textTheme.labelMedium?.apply(color: dark?Colors.white:Colors.grey)),
            const SizedBox(height: CustomSize.spaceBetweenItems + 2),

            /// Text field
            TextFormField(
              decoration: const InputDecoration(
                labelText: CustomTexts.email,
                prefixIcon: Icon(Icons.email),
              ),
              style: TextStyle(color: dark ? Colors.white : Colors.black),
            ), // TextFormField
            const SizedBox(height: CustomSize.spaceBetweenItems),

            /// Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPassword()),
                child: const Text("Submit"),
              ),
            ),
          ], // Column children
        ), // Column
      ), // Padding
    ); // Scaffold
  }
}