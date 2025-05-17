import 'package:flutter/material.dart';
import 'package:flutterecommerce/features/shop/screens/order/widget/order_list.dart';
import 'package:flutterecommerce/utills/constants/size.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';

import '../../../../common/widgets/app_bar/appbar.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "My Order", style: TextStyle(color: dark ? Colors.white:Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(CustomSize.defaultSpace),

        /// Orders
        child: CustomOrderList(

        ),
      )
    );
  }
}
