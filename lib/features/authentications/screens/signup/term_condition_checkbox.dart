import 'package:flutter/material.dart';
import 'package:flutterecommerce/utills/constants/custome_color.dart';
import 'package:flutterecommerce/utills/constants/size.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';

class TermConditionCheckbox extends StatelessWidget {
  const TermConditionCheckbox({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Row(
      children: [
        SizedBox(width:24,height:24,child: Checkbox(value: true, onChanged: (value){})),
        SizedBox(width: CustomSize.spaceBetweenItems,),

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
                  decorationColor: dark ? CustomColor.white : CustomColor.dark,
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
                  decorationColor: dark ? CustomColor.white : CustomColor.dark,
                ),
              ),

            ],
          ),
        )
      ],
    );
  }
}