import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/brand/brand_cart.dart';

import '../../../utills/constants/custome_color.dart';
import '../../../utills/constants/size.dart';
import '../custom_shape/container_shape/CustomRoundedcontainer.dart';

class CustomBrandShowcase extends StatelessWidget {
  const CustomBrandShowcase({
    super.key,
    required this.dark, required this.images
  });

  final bool dark;

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      showBorder: true,
      borderColor: CustomColor.darkGrey,
      padding: EdgeInsets.all(8),
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: CustomSize.spaceBetweenItems),
      child: Column(
        children: [
          /// brand with product cart
          CustomBrandCart(dark: dark, showBorder: false),
          SizedBox(height: 4,),
          /// brand top 3 product
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: images.map((images)=>brandProductImage(images, context)).toList()
            ),
          ),
        ],
      ),
    );
  }
  Widget brandProductImage(String image,context){
    return
      CustomRoundedContainer(
        height: 100,
        width: 100,
        backgroundColor: dark?CustomColor.darkGrey:CustomColor.darkGrey.withOpacity(0.3),
        margin: EdgeInsets.only(right: 8),
        padding: EdgeInsets.all(16),
        child: Image(image: AssetImage(image),fit: BoxFit.contain,),
      );
  }
}