import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utills/constants/custome_color.dart';
import '../../../../utills/constants/size.dart';
import '../../icon/circular_icon.dart';

class CustomProductQuantityAddRemoveButtons extends StatelessWidget {
  const CustomProductQuantityAddRemoveButtons({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: 16,
          color: dark? CustomColor.white : CustomColor.black,
          backgroundColor: dark ? CustomColor.darkGrey : CustomColor.light,
        ),
        const SizedBox(width: CustomSize.spaceBetweenItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall?.apply(color: dark?Colors.white:Colors.black)),
        const SizedBox(width: CustomSize.spaceBetweenItems),
        const CustomCircularIcon(
          icon: Icons.add,
          width: 32,
          height: 32,
          size: 16,
          color: CustomColor.white,
          backgroundColor: CustomColor.primarycolor,
        ),
      ],
    );
  }
}