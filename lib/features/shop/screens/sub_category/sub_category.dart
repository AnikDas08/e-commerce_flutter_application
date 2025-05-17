import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/app_bar/appbar.dart';
import 'package:flutterecommerce/common/widgets/image/rounded_image.dart';
import 'package:flutterecommerce/common/widgets/product/product_cart/product_carthorizontal.dart';
import 'package:flutterecommerce/common/widgets/text/section_heading.dart';

class SubCategoryScreen extends StatelessWidget {
   SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text("Sports",),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              /// Banner
              CustomRoundedImage(imageUrl: "assets/images/banner/image3.jpg",applyImageRadius: true),

              Column(
                children: [
                  /// Custom Heading
                  CustomSectionHeading(title: "Sports and Shirt"),
                  const SizedBox(height: 32,),

                  /// Product Horizontal
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                        separatorBuilder: (_,index)=>SizedBox(width: 16,),
                        itemBuilder:  (_,index)=>CustomProductCartHorizontal(),
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
