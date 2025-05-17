import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/app_bar/appbar.dart';
import 'package:flutterecommerce/common/widgets/icon/circular_icon.dart';
import 'package:flutterecommerce/common/widgets/image/rounded_image.dart';
import 'package:flutterecommerce/common/widgets/text/band_titlewithveriryimage.dart';
import 'package:flutterecommerce/common/widgets/text/brand_titletext.dart';
import 'package:flutterecommerce/features/shop/screens/cart/widgets/custom_cart_item.dart';
import 'package:flutterecommerce/features/shop/screens/checkout/checkout.dart';
import 'package:flutterecommerce/features/shop/screens/product_details/widget/product_price.dart';
import 'package:flutterecommerce/utills/constants/custome_color.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utills/constants/size.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title:Text(
          "Cart",
          style: TextStyle(color: dark ? CustomColor.white : CustomColor.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(CustomSize.defaultSpace),
        child: CustomCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(24),
        child: ElevatedButton(onPressed: (){Get.to(CheckOutScreen());},
            child: Text("Checkout \256")),
      ),
    );
  }
}


