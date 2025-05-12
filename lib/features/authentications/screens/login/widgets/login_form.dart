import 'package:flutter/material.dart';
import 'package:flutterecommerce/features/authentications/screens/signup/signup.dart';
import 'package:flutterecommerce/navigation_menu.dart';
import 'package:get/get.dart';

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
    return Form(
        child: Column(
          children: [
            /// Email form
            TextFormField(
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
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.password,
                ),
                label: Text("Password",style: TextStyle(color: dark?Colors.white:Colors.black),),
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
              style: TextStyle(color: dark ? Colors.white : Colors.black),
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
                    Checkbox(value: true, onChanged: (value) {}),
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
                    Get.offAll(()=>NavigationMenu());
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