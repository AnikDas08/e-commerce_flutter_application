import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/style/shadows.dart';
import 'package:flutterecommerce/common/widgets/custom_shape/container_shape/CustomRoundedcontainer.dart';
import 'package:flutterecommerce/common/widgets/image/rounded_image.dart';
import 'package:flutterecommerce/common/widgets/text/band_titlewithveriryimage.dart';
import 'package:flutterecommerce/common/widgets/text/product_title_text.dart';
import 'package:flutterecommerce/utills/constants/custome_color.dart';
import 'package:flutterecommerce/utills/constants/size.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../features/shop/screens/product_details/widget/product_price.dart';
import '../../icon/circular_icon.dart';

class CustomProductCartHorizontal extends StatelessWidget {
  const CustomProductCartHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = CustomHelperFunction.isDarkMode(context);
    return Container(
      width: 318,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(CustomSize.imageAvatarSize),
        color: dark ? CustomColor.darkGrey : CustomColor.softGrey,
      ), // BoxDecoration
      child: Row(
        children: [
          /// Thumbnail
          CustomRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(8),
            backgroundColor: dark ? CustomColor.dark : CustomColor.light,
            child: Stack(
              children: [
                /// -- Thumbnail Image
                CustomRoundedImage(
                    height: 120,
                    width: 120,
                    imageUrl: "assets/images/banner/image3.jpg",
                    applyImageRadius: true),

                /// sale tag
                Positioned(
                  top: 12,
                  child: CustomRoundedContainer(
                    radius: 8,
                    backgroundColor:
                        CustomColor.secondaryColor.withOpacity(0.6),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Text(
                      "25%",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: CustomColor.black),
                    ),
                  ),
                ),

                /// favourite item icon
                Positioned(
                    top: 0,
                    right: 0,
                    child: CustomCircularIcon(
                      dark: dark,
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    )),
              ],
            ), // Stack
          ),

          /// Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: 8,left: 8),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomProductText(title: 'Green Nike Half Sleeves Shirt', smallSize: true),
                      SizedBox(height: CustomSize.spaceBetweenItems / 2),
                      CustomTitlewithverifyImage(title: 'Nike'),
                    ],
                  ),
                  /// Price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomProductPrice(price: "269.00", dark: dark,),

                      /// add button
                      Container(
                        decoration: const BoxDecoration(
                          color: CustomColor.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ), // BorderRadius.only
                        ), // BoxDecoration
                        child: const SizedBox(
                            width: 32 * 1.2,
                            height: 32 * 1.2,
                            child: Center(child:
                            Icon(Iconsax.add,color: CustomColor.white,),
                            )
                        ), // SizedBox
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}
