import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/app_bar/appbar.dart';
import 'package:flutterecommerce/common/widgets/custom_shape/container_shape/primary_header_container.dart';
import 'package:flutterecommerce/common/widgets/list_tile/setting_menu_tile.dart';
import 'package:flutterecommerce/common/widgets/text/section_heading.dart';
import 'package:flutterecommerce/utills/constants/size.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/list_tile/user_profile_tile.dart';


class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomPrimaryHeader(
                child: Column(
                  children: [
                    /// App bar
                    CustomAppBar(title: Text("Account",style: Theme.of(context).textTheme.headlineMedium?.apply(color: Colors.white),),),
                    /// User profile
                    CustomUserProfileTile(),
                    SizedBox(height: 32,)
                  ],
                )
            ),
            /// body
            Padding(padding: EdgeInsets.all(16),
            child:Column(
              children: [
                /// account setting
                CustomSectionHeading(title: "Account Setting",showActionButton: false,),

                SizedBox(height: 16,),
                
                CustomSettingMenuTile(icon: Iconsax.safe_home, title: "My Address", subtitle: "Set shopping address",onTap: (){},dark: dark,),
                CustomSettingMenuTile(icon: Iconsax.shopping_cart, title: "My Cart", subtitle: "Add, remove product and add to checkout",onTap: (){},dark: dark,),
                CustomSettingMenuTile(icon: Iconsax.bag_tick, title: "My Orders", subtitle: "In progress and Completed orders",onTap: (){},dark: dark,),
                CustomSettingMenuTile(icon: Iconsax.bank, title: "Bank Account", subtitle: "Withdraw bakance to register bank account",onTap: (){},dark: dark,),
                CustomSettingMenuTile(icon: Iconsax.discount_shape, title: "My coupons", subtitle: "Lists of all the discount coupons",onTap: (){},dark: dark,),
                CustomSettingMenuTile(icon: Iconsax.notification, title: "Notification", subtitle: "Set any kind of notification",onTap: (){},dark: dark,),
                CustomSettingMenuTile(icon: Iconsax.security_card, title: "Account Privicy", subtitle: "Manage data usage and control",onTap: (){},dark: dark,),
                SizedBox(height: CustomSize.spaceBetweenItems,),

                /// App settings
                CustomSectionHeading(title: "App Settings",showActionButton: false,),
                SizedBox(height: 8,),
                CustomSettingMenuTile(icon: Iconsax.document_upload, title: "Load Data", subtitle: "Upload data to your cloud firebase", dark: dark),
                CustomSettingMenuTile(icon: Iconsax.location, title: "Geo Location", subtitle: "Set based on location", dark: dark,trailing: Switch(value: true, onChanged: (value){}),),
                CustomSettingMenuTile(icon: Iconsax.security_user, title: "Safe mode", subtitle: "Search result is safe for all age", dark: dark,trailing: Switch(value: true, onChanged: (value){}),),
                CustomSettingMenuTile(icon: Iconsax.document_upload, title: "Hd Image", subtitle: "Set quality to image", dark: dark,trailing: Switch(value: true, onChanged: (value){}),),

                SizedBox(height: CustomSize.spaceBetweenItems),
                /// Logour Button
                SizedBox(
                  width: double.infinity,
                child: OutlinedButton(onPressed: (){}, child: Text("Logout",style: TextStyle(color: dark?Colors.white:Colors.black),)),
                )
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}
