import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/app_bar/appbar.dart';
import 'package:flutterecommerce/common/widgets/custom_shape/curve_edge_widget.dart';
import 'package:flutterecommerce/common/widgets/icon/circular_icon.dart';
import 'package:flutterecommerce/common/widgets/image/rounded_image.dart';
import 'package:flutterecommerce/features/shop/screens/product_details/widget/product_image_slider.dart';
import 'package:flutterecommerce/features/shop/screens/product_details/widget/product_metadata.dart';
import 'package:flutterecommerce/features/shop/screens/product_details/widget/rating_share.dart';
import 'package:flutterecommerce/utills/constants/custome_color.dart';
import 'package:flutterecommerce/utills/constants/size.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_shape/container_shape/CustomRoundedcontainer.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = CustomHelperFunction.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// product image slider
            CustomProductImageSlider(),

            /// Product details
            Padding(
                padding: EdgeInsets.only(right: CustomSize.defaultSpace,bottom: CustomSize.defaultSpace,left: CustomSize.defaultSpace),
              child: Column(
                children: [
                  /// Rating and share
                  CustomRatingShare(dark: dark),

                  /// Price Title Stock Brand
                  CustomProductMetadata()

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


