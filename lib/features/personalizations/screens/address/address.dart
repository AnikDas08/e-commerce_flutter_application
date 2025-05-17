import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/app_bar/appbar.dart';
import 'package:flutterecommerce/common/widgets/custom_shape/container_shape/CustomRoundedcontainer.dart';
import 'package:flutterecommerce/features/personalizations/screens/address/add_new_address.dart';
import 'package:flutterecommerce/features/personalizations/screens/address/widgets/single_address.dart';
import 'package:flutterecommerce/utills/constants/custome_color.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:get/get.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunction.isDarkMode(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const AddNewAddressScreen());
        },
        child: Icon(
          Icons.add,
          color: dark ? Colors.white : Colors.black,
        ),
        backgroundColor: CustomColor.primarycolor,
      ),
      appBar: CustomAppBar(
        title: Text(
          "Address",
          style: TextStyle(color: dark ? CustomColor.white : CustomColor.black),
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              CustomSingleAddress(selectedAddress: false),
              CustomSingleAddress(selectedAddress: true),
            ],
          ),
        ),
      ),
    );
  }
}
