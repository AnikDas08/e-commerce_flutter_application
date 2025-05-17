import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/image_text_widget/image_text.dart';
import 'package:flutterecommerce/features/shop/screens/sub_category/sub_category.dart';
import 'package:get/get.dart';

class CustomHomeCategory extends StatelessWidget {
  const CustomHomeCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        // Replace with your actual item count
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return CustomVerticalImage(image: "",title: "Category",onTap: (){
            Get.to(SubCategoryScreen());
          },
          );
        },
      ),
    );
  }
}