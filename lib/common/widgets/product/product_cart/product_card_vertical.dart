import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/style/shadows.dart';
import 'package:flutterecommerce/common/widgets/custom_shape/container_shape/CustomRoundedcontainer.dart';
import 'package:flutterecommerce/common/widgets/image/rounded_image.dart';
import 'package:flutterecommerce/common/widgets/text/product_title_text.dart';
import 'package:flutterecommerce/features/shop/screens/product_details/product_details.dart';
import 'package:flutterecommerce/utills/constants/custome_color.dart';
import 'package:flutterecommerce/utills/constants/size.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../icon/circular_icon.dart';

class CustomProductCardVertical extends StatelessWidget {
  const CustomProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);

    /// Container with size padding, color, edges, radius and shadow.
    return GestureDetector(
      onTap: (){
        Get.to(ProductDetailsScreen());
      },
      child: Container(
        width: 160,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          boxShadow: [CustomShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(20),
          color: dark ? CustomColor.darkGrey : CustomColor.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Thumbnail, Wishlist Button, Discount Tag
            CustomRoundedContainer(
              height: 120,
              padding:  EdgeInsets.all(8),
              backgroundColor: dark ? CustomColor.dark : CustomColor.light,
              child: Stack(
                children: [
                /// thambia
                  CustomRoundedImage(imageUrl: "assets/images/banner/image1.jpg",applyImageRadius: true,),
                  /// sale tag
                  Positioned(
                    top: 10,
                    child: CustomRoundedContainer(
                      radius: 8,
                      backgroundColor: CustomColor.secondaryColor.withOpacity(0.6),
                      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                      child: Text("25%",style: Theme.of(context).textTheme.labelLarge!.apply(color: CustomColor.black),),
                    ),
                  ),
                  /// favourite item icon
                  Positioned(
                    top: 0,
                      right: 0,
                      child: CustomCircularIcon(dark: dark,icon: Iconsax.heart5,color: Colors.red,)), // Padding
                ],
              ),

            ),
            /// details
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomProductText(title: "Green Nike air",smallSize: true,),
                    Row(
                      children: [
                        Text("Nike",overflow: TextOverflow.ellipsis,maxLines: 1,style: Theme.of(context).textTheme.labelMedium?.
                        apply(color: Colors.grey.shade700)),
                        const SizedBox(width: 8,),
                        Icon(Iconsax.verify5,color: CustomColor.primarycolor,size: CustomSize.iconXS,)
                      ],
                    ),
                  ],
                ),
              ), // Column
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// price
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("\$20.0",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headlineMedium?.apply(color: Colors.black),
                    ),
                  ),
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
            )
          ],
        ),
      ),
    );
  }
}
