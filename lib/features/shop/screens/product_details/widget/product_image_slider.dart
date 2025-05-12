import 'package:flutter/material.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/app_bar/appbar.dart';
import '../../../../../common/widgets/custom_shape/curve_edge_widget.dart';
import '../../../../../common/widgets/icon/circular_icon.dart';
import '../../../../../common/widgets/image/rounded_image.dart';
import '../../../../../utills/constants/custome_color.dart';

class CustomProductImageSlider extends StatelessWidget {
  const CustomProductImageSlider({
    super.key,});


  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return CustomCurveEdgeWidget(
      childs: Container(
        color: dark? CustomColor.darkGrey:CustomColor.light,
        child: Stack(
          children: [
            /// Main Image
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.asset(
                "assets/images/banner/image1.jpg",
                fit: BoxFit.cover,
              ),
            ),

            ///Image slider
            Positioned(
              right: 0,
              bottom: 30,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(width: 16),
                  itemBuilder: (_, index) => CustomRoundedImage(
                    width: 80,
                    backgroundColor: dark?CustomColor.dark:CustomColor.white,
                    border: Border.all(color: CustomColor.primarycolor),
                    imageUrl: "assets/images/banner/image1.jpg",
                    padding: const EdgeInsets.all(8),
                  ),
                ),
              ),
            ),
            CustomAppBar(
              showBackArrow: true,
              action: [CustomCircularIcon(icon: Iconsax.heart5,color: Colors.red,)],
            )
          ],
        ),
      ),
    );
  }
}