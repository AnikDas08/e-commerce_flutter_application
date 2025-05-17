import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/app_bar/appbar.dart';
import 'package:flutterecommerce/common/widgets/custom_shape/curve_edge_widget.dart';
import 'package:flutterecommerce/common/widgets/icon/circular_icon.dart';
import 'package:flutterecommerce/common/widgets/image/rounded_image.dart';
import 'package:flutterecommerce/common/widgets/text/section_heading.dart';
import 'package:flutterecommerce/features/shop/screens/product_details/widget/add_cart_button.dart';
import 'package:flutterecommerce/features/shop/screens/product_details/widget/product_attribute_item.dart';
import 'package:flutterecommerce/features/shop/screens/product_details/widget/product_image_slider.dart';
import 'package:flutterecommerce/features/shop/screens/product_details/widget/product_metadata.dart';
import 'package:flutterecommerce/features/shop/screens/product_details/widget/rating_share.dart';
import 'package:flutterecommerce/features/shop/screens/product_review/product_review.dart';
import 'package:flutterecommerce/utills/constants/custome_color.dart';
import 'package:flutterecommerce/utills/constants/size.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../../common/widgets/custom_shape/container_shape/CustomRoundedcontainer.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = CustomHelperFunction.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: CustomButtonAddtocart(),
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
                  CustomProductMetadata(),

                  /// Attribute
                  ProductAttribute(),
                  const SizedBox(height: 32,),

                  /// Checkout button
                  SizedBox(width:double.infinity,child: ElevatedButton(onPressed: (){}, child: Text("CheckOut"))),
                  const SizedBox(height: 32,),

                  /// Description
                  const CustomSectionHeading(title: "Description",showActionButton: false,),
                  const SizedBox(height: 12,),
                  ReadMoreText(
                    "This is a product description of nike show and all the product of this company, There are many thinks that buy in our shope",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: " Show more",
                    trimExpandedText: " less",
                    moreStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                    lessStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                    style: TextStyle(color: dark?Colors.white:Colors.black),
                  ),

                  /// Divider
                  const Divider(),
                  const SizedBox(height: 24,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomSectionHeading(title: "Reviews (199)",showActionButton: true,),
                      IconButton(onPressed: (){Get.to(ProductReviewScreen());}, icon: Icon(Iconsax.arrow_right_3)),
                    ],
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


