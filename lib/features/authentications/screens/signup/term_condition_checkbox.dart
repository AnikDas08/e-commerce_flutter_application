import 'package:flutter/material.dart';
import 'package:flutterecommerce/utills/constants/custome_color.dart';
import 'package:flutterecommerce/utills/constants/size.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:get/get.dart';

import '../../controller/signup/signup_controller.dart';

class CustomTermConditionCheckbox extends StatelessWidget {
  const CustomTermConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunction.isDarkMode(context);
    final controller = SignupController.instance;
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Obx(() => Checkbox(
                value: controller.privacyPolicy.value,
                onChanged: (value) => controller.privacyPolicy.value =
                    !controller.privacyPolicy.value))),
        SizedBox(
          width: CustomSize.spaceBetweenItems,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "I agree to",
                style: Theme.of(context).textTheme.bodySmall?.apply(
                      color: dark ? CustomColor.white : CustomColor.dark,
                    ),
              ),
              TextSpan(
                text: " Privacy Policy",
                style: Theme.of(context).textTheme.bodyMedium?.apply(
                      color: dark ? CustomColor.white : CustomColor.dark,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? CustomColor.white : CustomColor.dark,
                    ),
              ),
              TextSpan(
                text: " and",
                style: Theme.of(context).textTheme.bodySmall?.apply(
                      color: dark ? CustomColor.white : CustomColor.dark,
                    ),
              ),
              TextSpan(
                text: " Item of use",
                style: Theme.of(context).textTheme.bodyMedium?.apply(
                      color: dark ? CustomColor.white : CustomColor.dark,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? CustomColor.white : CustomColor.dark,
                    ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
