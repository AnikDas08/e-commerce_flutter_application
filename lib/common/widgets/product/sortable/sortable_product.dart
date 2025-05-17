import 'package:flutter/material.dart';

import '../../../../utills/constants/size.dart';
import '../../layout/custom_gridview_layout.dart';
import '../product_cart/product_card_vertical.dart';

class CustomSortableProducts extends StatelessWidget {
  const CustomSortableProducts({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Icons.sort)),
          onChanged: (value) {},
          style: TextStyle(color: dark?Colors.white:Colors.black),
          items: ['Name', 'Higher Price', 'Lower Price', 'Sale', 'Newest', 'Popularity']
              .map((option) => DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
        ),
        SizedBox(height: CustomSize.spaceBetweenSections,),
        /// Products
        CustomGridviewLayout(itemCount: 4, itemBuilder: (context, index) => const CustomProductCardVertical())
      ],


    );
  }
}