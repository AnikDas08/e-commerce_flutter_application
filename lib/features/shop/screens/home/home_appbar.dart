import 'package:flutter/material.dart';

import '../../../../common/widgets/app_bar/appbar.dart';
import '../../../../common/widgets/product_cart/cart_menu_icon.dart';

class CustomHomeAppbar extends StatelessWidget {
  const CustomHomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Good Day for shopping", style: Theme.of(context).textTheme.labelMedium?.apply(color: Colors.white.withOpacity(0.6))),
          Text("শপিং এর জন্য ভালো দিন", style: Theme.of(context).textTheme.labelMedium?.apply(color: Colors.white)),
        ],
      ),
      action: [
        CustomCartCounter(onPressed: (){

        },
          iconColor: Colors.white,
        )
      ],
    );
  }
}