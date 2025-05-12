import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/layout/custom_gridview_layout.dart';
import 'package:flutterecommerce/common/widgets/product/product_card_vertical.dart';
import 'package:flutterecommerce/common/widgets/text/section_heading.dart';
import 'package:flutterecommerce/utills/constants/size.dart';

import '../../../../../common/widgets/brand/brand_showcase.dart';

class CustomCategoryTab extends StatelessWidget {
  const CustomCategoryTab({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {

    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [Padding(padding: EdgeInsets.all(CustomSize.defaultSpace),
      child: Column(
        children: [
      
          /// --Brands
          CustomBrandShowcase(dark: dark,images: ["assets/images/banner/banner1.jpg","assets/images/banner/image1.jpg","assets/images/banner/image3.jpg"],),
          CustomBrandShowcase(dark: dark,images: ["assets/images/banner/banner1.jpg","assets/images/banner/image1.jpg","assets/images/banner/image3.jpg"],),

          /// --product
          CustomSectionHeading(title: "You might like",showActionButton: true,onPressed: (){},),
          SizedBox(height: 16,),
          
          CustomGridviewLayout(itemCount: 4, itemBuilder: (_,index)=>CustomProductCardVertical()),
          SizedBox(height: 16,)
        ],
      ),),
    ]
    );
  }
}
