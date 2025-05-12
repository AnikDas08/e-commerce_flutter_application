import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/app_bar/appbar.dart';
import 'package:flutterecommerce/common/widgets/icon/circular_icon.dart';
import 'package:flutterecommerce/common/widgets/layout/custom_gridview_layout.dart';
import 'package:flutterecommerce/common/widgets/product/product_card_vertical.dart';
import 'package:flutterecommerce/features/shop/screens/home.dart';
import 'package:flutterecommerce/utills/constants/size.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        title: Text("WishList",style: Theme.of(context).textTheme.headlineMedium?.apply(color: dark?Colors.white:Colors.black),),
        action: [
          CustomCircularIcon(icon: Iconsax.add,onPressed: ()=>Get.to(const HomeScreen()),)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding:EdgeInsets.all(CustomSize.defaultSpace),
        child: Column(
            children: [
              CustomGridviewLayout(itemCount: 6, itemBuilder: (_,index)=>CustomProductCardVertical())
            ],
        ),),
      ),
    );
  }
}
