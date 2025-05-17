import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/custom_shape/container_shape/primary_header_container.dart';
import 'package:flutterecommerce/common/widgets/layout/custom_gridview_layout.dart';
import 'package:flutterecommerce/common/widgets/product/product_cart/product_card_vertical.dart';
import 'package:flutterecommerce/common/widgets/text/section_heading.dart';
import 'package:flutterecommerce/features/shop/screens/all_products/all_products.dart';
import 'package:flutterecommerce/features/shop/screens/home/home_appbar.dart';
import 'package:flutterecommerce/features/shop/screens/home/home_category.dart';
import 'package:flutterecommerce/features/shop/screens/home/promoSlider.dart';
import 'package:flutterecommerce/utills/constants/size.dart';
import 'package:get/get.dart';

import '../../../common/widgets/custom_shape/container_shape/searchContainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          /// header primary curve
          CustomPrimaryHeader(
              child: Column(
            children: [
              /// App Bar
              CustomHomeAppbar(),
              SizedBox(
                height: 32,
              ),

              /// Search Bar
              CustomSearchContainer(
                  text: "Search in store", icon: Icons.search),
              SizedBox(
                height: CustomSize.spaceBetweenSections,
              ),

              /// category
              Padding(
                padding: EdgeInsets.only(left: CustomSize.defaultSpace),
                child: Column(
                  children: [
                    CustomSectionHeading(
                      title: "Popular Category",
                      showActionButton: false,
                    ),
                    SizedBox(
                      height: CustomSize.spaceBetweenSections,
                    ),

                    /// category horizontal view
                    CustomHomeCategory(),
                    SizedBox(
                      height: CustomSize.spaceBetweenSections,
                    ),
                  ],
                ),
              )
            ],
          )),

          /// Rounded image
          Padding(
            padding: EdgeInsets.all(16),
            child: CustomPromoSlider(banner: ["assets/images/banner/banner1.jpg","assets/images/banner/image1.jpg","assets/images/banner/banner1.jpg","assets/images/banner/image1.jpg",],)
          ),
          SizedBox(height: CustomSize.spaceBetweenItems,),

          /// Popular product
          /// Heading
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomSectionHeading(title: "Popular Item",onPressed: (){Get.to(AllProductsScreen());},),
          ),

          SizedBox(height: 16,),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomGridviewLayout(itemCount: 4, itemBuilder: (index,_)=>CustomProductCardVertical()),
          )

        ],
      ),
    ));
  }
}


