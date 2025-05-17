import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/text/section_heading.dart';
import 'package:flutterecommerce/utills/constants/custome_color.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';

class CustomBillingAddressSection extends StatelessWidget {
  const CustomBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text('Coding with T', style: Theme.of(context).textTheme.bodyLarge?.apply(color: dark?CustomColor.white:CustomColor.black)),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: 16),
            Text('+32-317-8859525', style: Theme.of(context).textTheme.bodyMedium?.apply(color: dark?CustomColor.white:CustomColor.black)),
          ],
        ), // Row
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                'South Liams, Maine 87695, USA',
                style: Theme.of(context).textTheme.bodyMedium?.apply(color: dark?CustomColor.white:CustomColor.black),
                softWrap: true,
              ),
            ),
          ],
        ), // Row
      ],
    ); // Column
  }
}
