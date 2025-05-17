import 'package:flutter/material.dart';
import 'package:flutterecommerce/features/authentications/controller/signin/signin_controller.dart';
import 'package:flutterecommerce/features/authentications/screens/signup/signup.dart';
import 'package:flutterecommerce/navigation_menu.dart';
import 'package:flutterecommerce/utills/validators/validation.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utills/constants/size.dart';
import '../../password_configaration_now/forgate_password.dart';

class CustomLoginForm extends StatelessWidget {
  const CustomLoginForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(LoginController());
    return Form(
      key: controller.loginFormKey,
        child: Column(
          children: [
            /// Email form
            TextFormField(
              controller: controller.email,
              validator: (value)=>CustomValidation.validateEmail(value),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.subdirectory_arrow_right,
                ),
                label: Text("Email",style: TextStyle(color: dark?Colors.white:Colors.black),),
              ),
              style: TextStyle(color: dark ? Colors.white : Colors.black),
            ),
            SizedBox(
              height: CustomSize.spaceBetweenItems,
            ),
            /// Password Form
            Obx(
                  () => TextFormField(
                controller: controller.password,
                obscureText: controller.hidePassword.value,
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
            SizedBox(
              height: CustomSize.spaceBetweenItems / 2,
            ),

            // Remember me of forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember me
                Row(
                  children: [
                    Obx(()=> Checkbox(value: controller.rememberMe.value, onChanged: (value) {(controller.rememberMe.value=!controller.rememberMe.value);})),
                    Text(
                      "Remember me",
                      style: TextStyle(
                          color: dark ? Colors.white : Colors.black),
                    )
                  ],
                ),

                /// forget passsword
                TextButton(
                    onPressed: () {
                      Get.to(()=>ForgetPassword());
                    },
                    child: Text(
                      "Forget Password",
                      style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),

            /// Signin Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    controller.emailAndPasswordSignIn(context);
                  }, child: Text("Sign In",style: Theme.of(context).textTheme.titleMedium?.apply(color: dark?Colors.white:Colors.black))),
            ),
            SizedBox(height: 10,),

            /// Signup Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(SignupScreen());
                }, child: Text("Create Account",style: Theme.of(context).textTheme.titleMedium?.apply(color: dark?Colors.white:Colors.black),),
              ),
            )
          ],
        ));
  }
}