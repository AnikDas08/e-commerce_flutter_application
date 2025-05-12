import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/brand/brand_showcase.dart';
import 'package:flutterecommerce/common/widgets/image/circular_image.dart';
import 'package:flutterecommerce/common/widgets/text/band_titlewithveriryimage.dart';
import 'package:flutterecommerce/common/widgets/text/brand_titletext.dart';
import 'package:flutterecommerce/common/widgets/text/product_title_text.dart';
import 'package:flutterecommerce/features/shop/screens/product_details/widget/product_price.dart';
import 'package:flutterecommerce/utills/constants/enums.dart';

import '../../../../../common/widgets/custom_shape/container_shape/CustomRoundedcontainer.dart';
import '../../../../../utills/constants/custome_color.dart';
import '../../../../../utills/helper/helperfunction.dart';

class CustomProductMetadata extends StatelessWidget {
  const CustomProductMetadata({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = CustomHelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            /// Sale Tag
            CustomRoundedContainer(
              radius: 8,
              showBorder: true,
              backgroundColor: Colors.red,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Text(
                "25%",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(width: 24),
            /// price
            Text("\$258",style: Theme.of(context).textTheme.titleSmall?.apply(color: dark?Colors.white:Colors.black),),
            SizedBox(width: 24,),
            CustomProductPrice(price: "126",dark: dark,isLarge: true,),

          ],
        ),
        SizedBox(height: 16,),

        /// Tilte
        CustomProductText(title: "Green Nike screen shirt"),
        SizedBox(height: 8,),

        /// Stock status
        Row(
          children: [
            CustomProductText(title: "Status"),
            SizedBox(width: 16,),
            Text("In Stock",style: Theme.of(context).textTheme.titleMedium?.apply(color: dark?Colors.white:Colors.black))
          ],
        ),
        SizedBox(height: 16,),
        /// Brand
        Row(
          children: [
            CustomCirculaimage(
              height: 32,
                width: 32,
                image: "assets/icons/nike.png"
            ),
            CustomTitlewithverifyImage(title: "Nike"),
          ],
        ),
      ],
    );
  }
}
