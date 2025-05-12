import 'package:flutter/material.dart';
import 'package:flutterecommerce/features/authentications/screens/login/widgets/login_divider.dart';
import 'package:flutterecommerce/features/authentications/screens/login/widgets/login_form.dart';
import 'package:flutterecommerce/features/authentications/screens/login/widgets/login_header.dart';
import 'package:flutterecommerce/features/authentications/screens/login/widgets/social_button.dart';
import 'package:flutterecommerce/utills/constants/size.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = CustomHelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: CustomSize.appBarHeight,
            left: CustomSize.defaultSpace,
            right: CustomSize.defaultSpace,
            bottom: CustomSize.defaultSpace,
          ),
          child: Column(
            children: [
              /// logo, title, subtitle
              CustomLoginHeder(),

              SizedBox(
                height: 10,
              ),

              /// form
              CustomLoginForm(dark: dark),
              SizedBox(height: 20,),

              /// Divider
           CustomLoginDivider(dark: dark,text: "or sign in with",),
              SizedBox(height: 20,),

              /// footer here
              CustomSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
