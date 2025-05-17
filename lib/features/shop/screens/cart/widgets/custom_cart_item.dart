import 'package:flutter/material.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';

import '../../../../../common/widgets/product/cart/add_remove_button.dart';
import '../../../../../common/widgets/product/cart/cart_item_here.dart';
import '../../../../../utills/constants/size.dart';
import '../../product_details/widget/product_price.dart';

class CustomCartItems extends StatelessWidget {
  const CustomCartItems({
    super.key, this.showAddRemoveButtonHere=true,
  });

  final bool showAddRemoveButtonHere;

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) => const SizedBox(height: CustomSize.spaceBetweenItems),
      itemBuilder: (_, index) => Column(
        children: [
          /// Cart Item
          CustomCartItem(dark: dark),
          if(showAddRemoveButtonHere)const SizedBox(height: CustomSize.spaceBetweenItems),
          SizedBox(width: 70,),
          if(showAddRemoveButtonHere)
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 70,),
                  /// Add Remove Buttons
                  CustomProductQuantityAddRemoveButtons(dark: dark),
                ],
              ),
              CustomProductPrice(price: "256",dark: dark,)

            ],
          ),

        ],
      ),
    );
  }
}