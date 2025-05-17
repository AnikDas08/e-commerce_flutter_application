import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/app_bar/appbar.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utills/constants/size.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(showBackArrow: true, title: Text('Add new Address',style: TextStyle(color: dark?Colors.white:Colors.black),)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSize.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                      label: Text("Name",style: TextStyle(color: dark?Colors.white:Colors.black),),
                  ),
                ),
                const SizedBox(height: CustomSize.spaceBetweenItems),

                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.mobile),
                    label: Text("Phone Number",style: TextStyle(color: dark?Colors.white:Colors.black),),
                  ),
                ),
                const SizedBox(height: 16),

                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.building_3),
                          label: Text("Street",style: TextStyle(color: dark?Colors.white:Colors.black),),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.code),
                          label: Text("Postal Code",style: TextStyle(color: dark?Colors.white:Colors.black),),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.building),
                          label: Text("City",style: TextStyle(color: dark?Colors.white:Colors.black),),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        decoration:  InputDecoration(
                          prefixIcon: Icon(Iconsax.activity),
                          label: Text("State",style: TextStyle(color: dark?Colors.white:Colors.black),),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                TextFormField(
                  decoration:  InputDecoration(
                    prefixIcon: Icon(Iconsax.global),
                    label: Text("Country",style: TextStyle(color: dark?Colors.white:Colors.black),),
                  ),
                ),
                const SizedBox(height: CustomSize.defaultSpace),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Save',),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
