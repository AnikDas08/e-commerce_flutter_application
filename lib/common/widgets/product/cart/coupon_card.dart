import 'package:flutter/material.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';

import '../../../../utills/constants/custome_color.dart';
import '../../custom_shape/container_shape/CustomRoundedcontainer.dart';

class CustomCouponCode extends StatelessWidget {
  const CustomCouponCode({
    super.key,});


  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return CustomRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? CustomColor.dark : CustomColor.white,
      padding: const EdgeInsets.only(
        top: 8,
        bottom: 16,
        right: 16,
        left: 16,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: 'Have a promo code? Enter here',
                border: InputBorder.none,
              ),
            ),
          ),
          /// Button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: dark ? CustomColor.white.withOpacity(0.5) : CustomColor.dark.withOpacity(0.5),
                backgroundColor: Colors.grey.withOpacity(0.2),
                side: BorderSide(color: Colors.grey.withOpacity(0.1)),
              ),
              child: const Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}