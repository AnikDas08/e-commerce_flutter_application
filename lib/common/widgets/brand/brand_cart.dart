import 'package:flutter/material.dart';

import '../../../utills/constants/custome_color.dart';
import '../custom_shape/container_shape/CustomRoundedcontainer.dart';
import '../image/circular_image.dart';
import '../text/band_titlewithveriryimage.dart';

class CustomBrandCart extends StatelessWidget {
  const CustomBrandCart({
    super.key,
    required this.dark, required this.showBorder, this.onTap,
  });

  final bool dark;
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomRoundedContainer(
        padding: EdgeInsets.all(10),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child:
        Row(
          children: [
            /// icon
            Flexible(
              child: CustomCirculaimage(
                image: "assets/images/banner/image3.jpg",
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor: dark?CustomColor.dark:CustomColor.white,
              ),
            ),
            SizedBox(width: 8,),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTitlewithverifyImage(title: "Nike"),
                  Text(
                    "255 product",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium?.apply(color: dark?Colors.white.withOpacity(0.5):Colors.black.withOpacity(0.5)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}