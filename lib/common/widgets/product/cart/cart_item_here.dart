import 'package:flutter/material.dart';

import '../../../../utills/constants/custome_color.dart';
import '../../../../utills/constants/size.dart';
import '../../image/rounded_image.dart';
import '../../text/band_titlewithveriryimage.dart';
import '../../text/brand_titletext.dart';


class CustomCartItem extends StatelessWidget {
  const CustomCartItem({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Product Image
        CustomRoundedImage(
          imageUrl: "assets/images/banner/image3.jpg",
          width: 68,
          height: 68,
          padding: const EdgeInsets.all(18),
          backgroundColor: dark
              ? CustomColor.darkGrey
              : CustomColor.light,
        ),

        const SizedBox(width: CustomSize.spaceBetweenItems),

        /// Title, Price, & Size
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTitlewithverifyImage(title: 'Nike',textColor: dark?Colors.white.withOpacity(0.6):Colors.black.withOpacity(0.6)),
              Flexible(child: CustomBrandTitleText(title: 'Black Sports shoes', maxLines: 1,color: dark?Colors.white:Colors.black,)),

              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Color ', style: Theme.of(context).textTheme.bodySmall?.apply(color: dark?CustomColor.white.withOpacity(0.6):CustomColor.black.withOpacity(0.6))),
                    TextSpan(text: 'Green ', style: Theme.of(context).textTheme.bodyLarge?.apply(color: dark?CustomColor.white:CustomColor.black)),
                    TextSpan(text: 'Size ', style: Theme.of(context).textTheme.bodySmall?.apply(color: dark?CustomColor.white.withOpacity(0.6):CustomColor.black.withOpacity(0.6))),
                    TextSpan(text: 'UK 38', style: Theme.of(context).textTheme.bodyLarge?.apply(color: dark?CustomColor.white:CustomColor.black)),
                  ],
                ),
              )
            ],
          ),
        ),
        // Attributes
      ],
    );
  }
}