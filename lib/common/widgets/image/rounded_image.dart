import 'package:flutter/material.dart';
import 'package:flutterecommerce/utills/constants/custome_color.dart';

class CustomRoundedImage extends StatelessWidget {
  const CustomRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius=true,
    this.border,
    this.backgroundColor=CustomColor.light,
    this.fit=BoxFit.contain,
    this.padding,
    this.isNetworkImage=false,
    this.onPressed,
    this.borderRadius=16,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsets? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        border: border,
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius:
        applyImageRadius ? BorderRadius.circular(16) : BorderRadius.zero,
        child: Image(
          fit: BoxFit.cover,
          image: isNetworkImage
              ? NetworkImage(imageUrl)
              : AssetImage(imageUrl) as ImageProvider,
        ),
      ), // ClipRRect
    );
  }
}