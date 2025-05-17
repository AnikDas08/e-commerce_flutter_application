import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/app_bar/appbar.dart';
import 'package:flutterecommerce/common/widgets/app_bar/tab_bar_new.dart';
import 'package:flutterecommerce/common/widgets/custom_shape/container_shape/searchContainer.dart';
import 'package:flutterecommerce/common/widgets/layout/custom_gridview_layout.dart';
import 'package:flutterecommerce/common/widgets/text/section_heading.dart';
import 'package:flutterecommerce/features/shop/screens/brand/all_brand.dart';
import 'package:flutterecommerce/features/shop/screens/store/widget/category_tab.dart';
import 'package:flutterecommerce/utills/constants/size.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/brand/brand_cart.dart';
import '../../../../common/widgets/product/product_cart/cart_menu_icon.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text("Store", style: Theme.of(context).textTheme
                .headlineMedium
                ?.apply(color:dark?Colors.white:Colors.black),
          ),
          action: [
            CustomCartCounter(onPressed: (){})
          ],
        ),
        body: NestedScrollView(headerSliverBuilder: (context,innexBoxisScr){
          return[
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: dark?Colors.black:Colors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                  padding: EdgeInsets.all(24),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    /// search bar
                    SizedBox(height: 16,),
                    CustomSearchContainer(text: "Search item here", icon: Icons.search,padding: EdgeInsets.zero,),
                    SizedBox(height: CustomSize.spaceBetweenSections,),


                    /// Feature band
                    CustomSectionHeading(title: "Feature brand",onPressed: ()=>Get.to(AllBrandScreen()),),
                    SizedBox(height: 8,),

                    CustomGridviewLayout(
                      mainAxisExtent: 80,
                        itemCount: 4,
                        itemBuilder: (_,index){
                          return
                            CustomBrandCart(dark: dark,showBorder: true,);
                        })
                  ],
                ),
              ),
              bottom: CustomTab(tabs: [
                Tab(child: Text("Sports",style: TextStyle(fontWeight: FontWeight.bold),),),
                Tab(child: Text("Furniture",style: TextStyle(fontWeight: FontWeight.bold)),),
                Tab(child: Text("Eletronics",style: TextStyle(fontWeight: FontWeight.bold)),),
                Tab(child: Text("Food"),),
                Tab(child: Text("Cosmatics"),),
              ])
            )
          ];
        }, body: TabBarView(children: [
          CustomCategoryTab(dark: dark),
          CustomCategoryTab(dark: dark),
          CustomCategoryTab(dark: dark),
          CustomCategoryTab(dark: dark),
          CustomCategoryTab(dark: dark),
        ])),
      ),
    );
  }
}





