import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/app_bar/appbar.dart';
import 'package:flutterecommerce/common/widgets/brand/brand_cart.dart';
import 'package:flutterecommerce/common/widgets/product/sortable/sortable_product.dart';
import 'package:flutterecommerce/features/shop/screens/all_products/all_products.dart';
import 'package:flutterecommerce/utills/constants/size.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';

class BrandProduct extends StatelessWidget {
  const BrandProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Nike",
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSize.defaultSpace),
          child: Column(
            children: [
              CustomBrandCart(dark: dark, showBorder: true),
              SizedBox(
                height: 32,
              ),
              CustomSortableProducts(dark: dark),
            ],
          ),
        ),
      ),
    );
  }
}
