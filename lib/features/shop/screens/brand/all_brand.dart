import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/app_bar/appbar.dart';
import 'package:flutterecommerce/common/widgets/brand/brand_cart.dart';
import 'package:flutterecommerce/common/widgets/layout/custom_gridview_layout.dart';
import 'package:flutterecommerce/common/widgets/text/section_heading.dart';
import 'package:flutterecommerce/features/shop/screens/brand/brand_product.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:get/get.dart';

import '../../../../utills/constants/size.dart';

class AllBrandScreen extends StatelessWidget {
  const AllBrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: const CustomAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSize.defaultSpace),
          child: Column(
            children: [
              /// Heading
              const CustomSectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: CustomSize.spaceBetweenItems),

              /// Brands
              CustomGridviewLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => CustomBrandCart(
                  dark: dark,
                  showBorder: true,
                  onTap: () => Get.to(() => BrandProduct()),
                ),
              ), // TGridLayout
            ], // Column
          ), // Padding
        ), // SingleChildScrollView
      ),
    );
  }
}
