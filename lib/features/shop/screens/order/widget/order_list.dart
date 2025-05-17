import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/custom_shape/container_shape/CustomRoundedcontainer.dart';
import 'package:flutterecommerce/utills/constants/custome_color.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:iconsax/iconsax.dart';

class CustomOrderList extends StatelessWidget {
  const CustomOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunction.isDarkMode(context);

    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (_,__)=>SizedBox(height: 32,),
      itemBuilder:(_,__)=> CustomRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(16),
        backgroundColor: dark ? CustomColor.dark :CustomColor.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// -- Row 1
            Row(
              children: [
                /// 1 - Icon
                const Icon(Icons.local_shipping),
                const SizedBox(width: 8),

                /// 2 - Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                          color: CustomColor.primarycolor,
                          fontWeightDelta: 1,
                        ),
                      ),
                      Text(
                        '07 Nov 2024',
                        style: Theme.of(context).textTheme.headlineMedium?.apply(color: dark?CustomColor.light:CustomColor.black),
                      ),
                    ],
                  ),
                ),

                /// 3 - Icon
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios, size: 24),
                ),
              ],
            ),
            SizedBox(height: 24,),
            /// Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      /// 1 - Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: 8),

                      /// 2 - Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'order',
                              style: Theme.of(context).textTheme.labelMedium!.apply(color: dark?Colors.white:Colors.black),
                            ),
                            Text(
                              '[#56674]',
                              style: Theme.of(context).textTheme.titleMedium?.apply(color: dark?CustomColor.light:CustomColor.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      /// 1 - Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: 8),

                      /// 2 - Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Processing',
                              style: Theme.of(context).textTheme.labelMedium?.apply(color: dark?CustomColor.light.withOpacity(0.4):CustomColor.black.withOpacity(0.4)),
                            ),
                            Text(
                              '07 Nov 2024',
                              style: Theme.of(context).textTheme.titleMedium?.apply(color: dark?CustomColor.light:CustomColor.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
