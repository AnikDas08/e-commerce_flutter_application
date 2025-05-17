import 'package:flutter/material.dart';
import 'package:flutterecommerce/features/authentications/screens/signup/term_condition_checkbox.dart';
import 'package:flutterecommerce/features/authentications/screens/signup/verify_email.dart';
import 'package:flutterecommerce/utills/constants/size.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:flutterecommerce/utills/validators/validation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iconsax/iconsax.dart';

import '../../controller/signup/signup_controller.dart';

class CustomSignupForm extends StatelessWidget {
  const CustomSignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupkey,
      child: Column(
        children: [
          Row(
            children: [
              /// First Name
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      CustomValidation.validateEmptytext("First Name", value),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    label: Text(
                      "First Name",
                      style:
                          TextStyle(color: dark ? Colors.white.withOpacity(0.6) : Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  style: TextStyle(color: dark ? Colors.white : Colors.black),
                ),
              ),

              SizedBox(
                width: CustomSize.spaceBetweenItems,
              ),

              /// Last name
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      CustomValidation.validateEmptytext("Last Name", value),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    label: Text(
                      "Last Name",
                      style:
                          TextStyle(color: dark ? Colors.white.withOpacity(0.6) : Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  style: TextStyle(color: dark ? Colors.white : Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(
            height: CustomSize.spaceBetweenItems,
          ),

          /// Email
          TextFormField(
            controller: controller.email,
            validator: (value) => CustomValidation.validateEmail(value),
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email,
              ),
              label: Text(
                "Email",
                style: TextStyle(color: dark ? Colors.white.withOpacity(0.6) : Colors.black.withOpacity(0.6)),
              ),
            ),
            style: TextStyle(color: dark ? Colors.white : Colors.black),
          ),
          const SizedBox(
            height: CustomSize.spaceBetweenItems,
          ),

          /// Phone Number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => CustomValidation.validatePhoneNumber(value),
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.phone,
              ),
              label: Text(
                "Phone Number",
                style: TextStyle(color: dark ? Colors.white.withOpacity(0.6) : Colors.black.withOpacity(0.6)),
              ),
            ),
            style: TextStyle(color: dark ? Colors.white : Colors.black),
          ), // TextFormField
          SizedBox(
            height: CustomSize.spaceBetweenItems,
          ),

          /// Password
          Obx(
            () => TextFormField(
              controller: controller.password,
              obscureText: controller.hidePassword.value,
              validator: (value) => CustomValidation.validatePassword(value),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.password),
                suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                    icon: Icon(controller.hidePassword.value?Iconsax.eye_slash:Iconsax.eye)),
                label: Text(
                  "Password",
                  style: TextStyle(color: dark ? Colors.white.withOpacity(0.6) : Colors.black.withOpacity(0.6)),
                ),
              ),
              style: TextStyle(color: dark ? Colors.white : Colors.black),
            ),
          ),

          SizedBox(height: 32,),

          /// I agree to pricacy tearm condition
          CustomTermConditionCheckbox(),
          SizedBox(
            height: CustomSize.spaceBetweenItems,
          ),

          /// Signup Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  controller.signup(context);
                },
                child: Text("Create Account")),
          ),
        ],
      ),
    );
  }
}
