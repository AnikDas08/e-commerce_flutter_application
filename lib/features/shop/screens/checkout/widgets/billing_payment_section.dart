import 'package:flutter/material.dart';
import 'package:flutterecommerce/utills/constants/custome_color.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';

import '../../../../../common/widgets/custom_shape/container_shape/CustomRoundedcontainer.dart';
import '../../../../../common/widgets/text/section_heading.dart';

class CustomBillingPaymentSection extends StatelessWidget {
  const CustomBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunction.isDarkMode(context);

    return Column(
      children: [
        CustomSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            CustomRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? Colors.black : Colors.white,
              padding: const EdgeInsets.all(8),
              child: const Image(
                image: AssetImage("assets/icons/nike.png"),
                fit: BoxFit.contain,
              ),
            ), // TRoundedContainer
            const SizedBox(width: 8),
            Text("Paypal", style: Theme.of(context).textTheme.bodyLarge?.apply(color: dark?CustomColor.white:CustomColor.black)),
          ],
        ),
        const SizedBox(height: 8),
        // Row
      ],
    );
  }
}
