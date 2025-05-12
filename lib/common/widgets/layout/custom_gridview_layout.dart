import 'package:flutter/material.dart';
import 'package:flutterecommerce/utills/constants/size.dart';

class CustomGridviewLayout extends StatelessWidget {
  const CustomGridviewLayout({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 220,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: mainAxisExtent,
        mainAxisSpacing: CustomSize.gridViewSpacing,
        crossAxisSpacing: CustomSize.gridViewSpacing,
      ), // SliverGridDelegateWithFixedCrossAxisCount
      itemBuilder: itemBuilder,
    );
  }
}