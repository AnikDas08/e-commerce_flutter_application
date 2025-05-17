import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/app_bar/appbar.dart';
import 'package:flutterecommerce/common/widgets/custom_shape/container_shape/CustomRoundedcontainer.dart';
import 'package:flutterecommerce/common/widgets/signin_signup/success_screen.dart';
import 'package:flutterecommerce/features/shop/screens/cart/widgets/custom_cart_item.dart';
import 'package:flutterecommerce/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:flutterecommerce/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:flutterecommerce/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:flutterecommerce/features/shop/screens/home.dart';
import 'package:flutterecommerce/navigation_menu.dart';
import 'package:flutterecommerce/utills/constants/size.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/product/cart/coupon_card.dart';
import '../../../../utills/constants/custome_color.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Order Review", style: TextStyle(color: dark ? CustomColor.white : CustomColor.black),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CustomSize.defaultSpace),
          child: Column(
            children: [
              /// Item in Cart
              CustomCartItems(
                showAddRemoveButtonHere: false,
              ),
              const SizedBox(
                height: 32,
              ),

              /// Coupons TextField
              CustomCouponCode(),
              const SizedBox(height: 32),

              /// Billing section
              CustomRoundedContainer(
                showBorder: true,
                padding: EdgeInsets.all(16),
                backgroundColor: dark ? Colors.black : Colors.white,
                child: Column(
                  children: [
                    /// Pricing
                    CustomBillingAmountSection(),
                    SizedBox(
                      height: CustomSize.spaceBetweenItems,
                    ),

                    /// Divider
                    Divider(),
                    SizedBox(
                      height: CustomSize.spaceBetweenItems,
                    ),

                    /// Payment Method
                    CustomBillingPaymentSection(),
                    SizedBox(
                      height: CustomSize.spaceBetweenItems,
                    ),

                    /// Address Method
                    CustomBillingAddressSection(),
                    SizedBox(
                      height: CustomSize.spaceBetweenItems,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(24),
        child: ElevatedButton(
            onPressed: () {
              Get.to(SuccessScreen(
                  title: "Payment Successfully",
                  subTitle: "Your item will be ship so",
                  onPressed: ()=>Get.to(NavigationMenu())));
            },
            child: Text("Checkout \256")),
      ),
    );
  }
}
