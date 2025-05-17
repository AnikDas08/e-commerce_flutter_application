import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/app_bar/appbar.dart';
import 'package:flutterecommerce/common/widgets/layout/custom_gridview_layout.dart';
import 'package:flutterecommerce/common/widgets/product/product_cart/product_card_vertical.dart';
import 'package:flutterecommerce/utills/constants/size.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';

import '../../../../common/widgets/product/sortable/sortable_product.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: const CustomAppBar(title: Text('Popular Products'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSize.defaultSpace),
          child: CustomSortableProducts(dark: dark),
        ),
      ),
    );
  }
}

