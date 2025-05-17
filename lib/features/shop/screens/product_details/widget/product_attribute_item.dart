import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterecommerce/common/widgets/custom_shape/container_shape/CustomRoundedcontainer.dart';
import 'package:flutterecommerce/common/widgets/text/product_title_text.dart';
import 'package:flutterecommerce/common/widgets/text/section_heading.dart';
import 'package:flutterecommerce/features/shop/screens/product_details/widget/product_price.dart';
import 'package:flutterecommerce/utills/constants/custome_color.dart';
import 'package:flutterecommerce/utills/constants/size.dart';

import '../../../../../common/widgets/chip/choice_chip.dart';
import '../../../../../utills/helper/helperfunction.dart';

class ProductAttribute extends StatelessWidget {
  const ProductAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = CustomHelperFunction.isDarkMode(context);
    return Column(
      /// Pricing and descriotion
      children: [
        CustomRoundedContainer(
          padding: EdgeInsets.all(16),
          backgroundColor: dark?CustomColor.darkGrey:CustomColor.grey,
          child: Column(
            children: [
              /// Title, Price, Stock
              Row(
                children: [
                  CustomSectionHeading(title: "Variation",showActionButton: false,),
                  SizedBox(width: 16,),
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [

                          CustomProductText(title: "Price: ",smallSize: true,),
                          SizedBox(width: CustomSize.spaceBetweenItems/2,),

                          /// Actual Price
                          Text("\$36",style: Theme.of(context).textTheme.titleSmall?.copyWith(color: dark?CustomColor.light:CustomColor.dark,decoration: TextDecoration.lineThrough),),
                          SizedBox(width:16),

                          /// Sale Price
                          CustomProductPrice(price: "126",dark: dark,isLarge: true,)
                        ],
                      ),



                      /// Stack value
                      Row(
                        children: [
                          CustomProductText(title: "Stock: ",smallSize: true,),
                          SizedBox(width: CustomSize.spaceBetweenItems/2,),
                          Text("In Stock",style: TextStyle(color: dark?Colors.white:Colors.black),),

                          Text("\$36",style: Theme.of(context).textTheme.titleSmall?.copyWith(color: dark?CustomColor.light:CustomColor.dark,decoration: TextDecoration.lineThrough),),
                          SizedBox(width:16),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              CustomProductText(title: "This is the description of this product of the item kjdf dkjfd kdjf",smallSize: true,maxLines: 4,)

            ],
          ),
        ),
        SizedBox(height: CustomSize.spaceBetweenItems),

        /// Attribute
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSectionHeading(title:"Colors",showActionButton: false,),
            SizedBox(height: 12,),
            Wrap(
              spacing: 8,
              children: [
                CustomsChoiceChip(text: "green", selected: true,onSelected: (value){},),
                CustomsChoiceChip(text: "blue", selected: false,onSelected: (value){},),
                CustomsChoiceChip(text: "yellow", selected: false,onSelected: (value){},)
              ],
            )

          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSectionHeading(title:"Size"),
            SizedBox(height: 12,),
            Wrap(
              spacing: 8,
              children: [
                CustomsChoiceChip(text: "Eu 34", selected: true,onSelected: (value){},),
                CustomsChoiceChip(text: "Eu 35", selected: false,onSelected: (value){},),
                CustomsChoiceChip(text: "Eu 37", selected: false,onSelected: (value){},)
              ],
            )
          ],
        )
      ],
    );
  }
}

