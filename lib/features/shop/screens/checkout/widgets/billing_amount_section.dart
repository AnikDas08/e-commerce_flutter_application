import 'package:flutter/material.dart';

import '../../../../../utills/constants/custome_color.dart';
import '../../../../../utills/helper/helperfunction.dart';

class CustomBillingAmountSection extends StatelessWidget {
  const CustomBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Column(
      children: [
        /// Subtotals
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium?.apply(color: dark?CustomColor.white:CustomColor.dark)),
            Text('\$26.0', style: Theme.of(context).textTheme.bodyMedium?.apply(color: dark?CustomColor.white:CustomColor.dark)),
          ],
        ),
        const SizedBox(height: 8),

        /// Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium?.apply(color: dark?CustomColor.white:CustomColor.dark)),
            Text('\$6.0', style: Theme.of(context).textTheme.labelLarge?.apply(color: dark?CustomColor.white:CustomColor.dark)),
          ],
        ),
        const SizedBox(height: 8),

        /// Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium?.apply(color: dark?CustomColor.white:CustomColor.dark)),
            Text('\$2.0', style: Theme.of(context).textTheme.labelLarge?.apply(color: dark?CustomColor.white:CustomColor.dark)),
          ],
        ),
        /// Oder Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium?.apply(color: dark?CustomColor.white:CustomColor.dark)),
            Text('\$15.0', style: Theme.of(context).textTheme.labelLarge?.apply(color: dark?CustomColor.white:CustomColor.dark)),
          ],
        ),
      ],
    );
  }
}
