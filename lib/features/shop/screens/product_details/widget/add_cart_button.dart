import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/icon/circular_icon.dart';
import 'package:flutterecommerce/utills/constants/custome_color.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utills/constants/size.dart';

class CustomButtonAddtocart extends StatelessWidget {
  const CustomButtonAddtocart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: CustomSize.defaultSpace,
        vertical: CustomSize.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: dark ? CustomColor.dark : CustomColor.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(CustomSize.cardRadiusLG),
          topRight: Radius.circular(CustomSize.cardRadiusLG),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CustomCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: CustomColor.dark,
                width: 40,
                height: 40,
                color: CustomColor.white,
              ),
              const SizedBox(width: CustomSize.spaceBetweenItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall?.apply(color: dark?Colors.white:Colors.black)),
              const SizedBox(width: CustomSize.spaceBetweenItems),
              const CustomCircularIcon(
                icon: Icons.add,
                backgroundColor: CustomColor.dark,
                width: 40,
                height: 40,
                color: CustomColor.white,
              ),
            ],
          ),
          ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(16),
                backgroundColor: Colors.black
              ),
              child: Text("Add to Cart"))
        ],
      ),
    );
  }
}
