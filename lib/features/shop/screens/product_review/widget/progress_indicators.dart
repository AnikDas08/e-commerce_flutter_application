import 'package:flutter/material.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';

import '../../../../../utills/constants/custome_color.dart';
import '../../../../../utills/devices/deviceutility.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({
    super.key, required this.text, required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(text, style: Theme.of(context).textTheme.bodyMedium?.apply(color: dark?CustomColor.white:CustomColor.black)),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: CustomeDeviceUtility.getScreenWidth(context) * 0.8,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 11,
              backgroundColor: CustomColor.grey,
              borderRadius: BorderRadius.circular(7),
              valueColor: const AlwaysStoppedAnimation(CustomColor.primarycolor),
            ),
          ),
        ),
      ],
    );
  }
}