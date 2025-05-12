import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/app_bar/appbar.dart';
import 'package:flutterecommerce/common/widgets/image/circular_image.dart';
import 'package:flutterecommerce/common/widgets/text/section_heading.dart';
import 'package:flutterecommerce/features/personalizations/screens/profile/widgets/profile_menu.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utills/constants/size.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: const CustomAppBar(showBackArrow: true, title: Text("Profile")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSize.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CustomCirculaimage(
                      image: "assets/images/banner/programmer.png",
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {}, // Add your onPressed logic here
                      child: const Text("Change Profile Picture"),
                    ),
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: CustomSize.spaceBetweenItems / 2),
              const Divider(),
              const SizedBox(height: CustomSize.spaceBetweenSections),

              /// profile information
              CustomSectionHeading(title: "Profile Information",showActionButton: false,),
              SizedBox(height: 16,),

              CustomProfileMenu(dark: dark, onPressed: (){}, title: "Name", value: "Codding with Anik"),
              CustomProfileMenu(dark: dark, onPressed: (){}, title: "User Name", value: "Codding with Anik"),

              /// Personal Informations
              const SizedBox(height: CustomSize.spaceBetweenSections),
              CustomSectionHeading(title: "Profile Information",showActionButton: false,),
              SizedBox(height: 16,),

              CustomProfileMenu(dark: dark, onPressed: (){}, title: "User Id", value: "3543"),
              CustomProfileMenu(dark: dark, onPressed: (){}, title: "Email", value: "support456@gmai.com"),
              CustomProfileMenu(dark: dark, onPressed: (){}, title: "Phone Number", value: "01771119085"),
              CustomProfileMenu(dark: dark, onPressed: (){}, title: "Gender", value: "Male"),
              CustomProfileMenu(dark: dark, onPressed: (){}, title: "Date of Birth", value: "07-09-2000"),

              SizedBox(height: CustomSize.spaceBetweenSections,),
              Center(
                child: TextButton(onPressed: (){}, child: Text("Close account",style: TextStyle(color: Colors.red),)),
              )

            ],
          ),
        ),
      ),
    );
  }
}
