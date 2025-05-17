import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/custom_shape/container_shape/CustomRoundedcontainer.dart';
import 'package:flutterecommerce/utills/constants/custome_color.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utills/constants/size.dart';

class CustomSingleAddress extends StatelessWidget {
  const CustomSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunction.isDarkMode(context);
    return CustomRoundedContainer(
      width: double.infinity,
      padding: EdgeInsets.all(CustomSize.borderRadiusMD),
      showBorder: true,
      backgroundColor: selectedAddress
          ? CustomColor.primarycolor.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? CustomColor.darkGrey
              : CustomColor.grey,
      margin: const EdgeInsets.only(bottom: CustomSize.spaceBetweenItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
              ?dark
                  ? CustomColor.light
                  : CustomColor.dark.withOpacity(0.4)
                  :null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Anik Das',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge?.apply(color: dark?CustomColor.white:CustomColor.black),
              ),
              SizedBox(height: 8,),
              Text(
                '(088+)01771119085',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyLarge?.apply(color: dark?CustomColor.white:CustomColor.black),
              ),
              SizedBox(height: 8,),
              Text(
                '82356 Timmy Coves, South Liana, Maine, 87665, USA',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                style: Theme.of(context).textTheme.bodyLarge?.apply(color: dark?CustomColor.white:CustomColor.black),
              ),
              const SizedBox(height: 16),
            ],
          )
        ],
      ),
    );
  }
}
