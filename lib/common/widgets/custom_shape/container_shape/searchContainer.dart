import 'package:flutter/material.dart';

import '../../../../utills/constants/custome_color.dart';
import '../../../../utills/devices/deviceutility.dart';
import '../../../../utills/helper/helperfunction.dart';

class CustomSearchContainer extends StatelessWidget {
  const CustomSearchContainer({
    super.key,
    required this.text,
    required this.icon,
    this.showBackground = true,
    this.showBorder = true,
    this.padding=const EdgeInsets.symmetric(horizontal: 24),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunction.isDarkMode(context);
    return Padding(
      padding: padding,
      child: Container(
        width: CustomeDeviceUtility.getScreenWidth(context),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
                  ? CustomColor.black
                  : CustomColor.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          border: showBorder ? Border.all(color: CustomColor.grey) : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: CustomColor.darkGrey,
            ),
            const SizedBox(width: 32),
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.apply(color: Colors.blueGrey),
            ),
          ],
        ),
      ),
    );
  }
}
