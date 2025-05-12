import 'package:flutter/material.dart';
import 'package:flutterecommerce/utills/constants/size.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:iconsax/iconsax.dart';

class CustomSignupForm extends StatelessWidget {
  const CustomSignupForm({
    super.key, required this.dark,
  });
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [

              /// First Name
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    label: Text("Email",style: TextStyle(color: dark?Colors.white:Colors.black),),
                  ),
                  style: TextStyle(color: dark ? Colors.white : Colors.black),
                ),
              ),

              SizedBox(width: CustomSize.spaceBetweenItems,),

              /// Last name
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    label: Text("Last Name",style: TextStyle(color: dark?Colors.white:Colors.black),),
                  ),
                  style: TextStyle(color: dark ? Colors.white : Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(height: CustomSize.spaceBetweenItems,),
          /// Email
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email,
              ),
              label: Text("Email",style: TextStyle(color: dark?Colors.white:Colors.black),),
            ),
            style: TextStyle(color: dark ? Colors.white : Colors.black),
          ),
          const SizedBox(height: CustomSize.spaceBetweenItems,),

          /// Phone Number
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.phone,
              ),
              label: Text("Phone Number",style: TextStyle(color: dark?Colors.white:Colors.black),),
            ),
            style: TextStyle(color: dark ? Colors.white : Colors.black),
          ),// TextFormField
          SizedBox(height: CustomSize.spaceBetweenItems,),

          /// Password
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Iconsax.password_check5,
              ),
              label: Text("Password",style: TextStyle(color: dark?Colors.white:Colors.black),),
            ),
            style: TextStyle(color: dark ? Colors.white : Colors.black),
          ),
        ],
      ),
    );
  }
}