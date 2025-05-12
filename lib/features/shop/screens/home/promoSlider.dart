import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/custom_shape/container_shape/circular_container.dart';
import 'package:flutterecommerce/features/shop/controllers/home_controller.dart';
import 'package:flutterecommerce/utills/constants/size.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/image/rounded_image.dart';

class CustomPromoSlider extends StatelessWidget {
  const CustomPromoSlider({
    super.key, required this.banner,
  });

  final List<String> banner;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            items: banner.map((e)=>CustomRoundedImage(imageUrl: e)).toList(),
            options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, _) => controller.updatePage(index))),
        SizedBox(
          height: CustomSize.spaceBetweenItems,
        ),
        Obx(
              () => Row(
                mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banner.length; i++) // কারণ তুমি 5টি item দিয়েছো
                CustomCircularContainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carouselCurrentIndex.value == i ? Colors.green : Colors.grey,),
            ],
          ),
        )

      ],
    );
  }
}
