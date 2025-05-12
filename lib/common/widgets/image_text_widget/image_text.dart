import 'package:flutter/material.dart';
import 'package:flutterecommerce/utills/constants/size.dart';

class CustomVerticalImage extends StatelessWidget {
  const CustomVerticalImage({
    super.key,
    required this.image,
    required this.title,
    this.textcolor=Colors.white,
    this.backgroundColor=Colors.white,
    this.onTap,
  });

  final String image, title;
  final Color? textcolor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: CustomSize.spaceBetweenItems),
        child: Column(
          children: [
            /// Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  // Replace with your actual image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title, // Replace with your actual category names
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.apply(color: textcolor),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}