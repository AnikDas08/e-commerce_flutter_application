import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutterecommerce/common/widgets/custom_shape/container_shape/CustomRoundedcontainer.dart';
import 'package:flutterecommerce/features/shop/screens/product_review/widget/product_rating.dart';
import 'package:flutterecommerce/utills/constants/custome_color.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:readmore/readmore.dart';

import '../../../../../utills/constants/size.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/review_image/review1.jpg"),
                ),
                const SizedBox(width: CustomSize.spaceBetweenItems),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge?.apply(color: dark?Colors.white:Colors.black)),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: CustomSize.spaceBetweenItems),

        /// Review
        Row(
          children: [
             CustomRatingbarIndicator(rating: 4),
            const SizedBox(width: CustomSize.spaceBetweenItems),
            Text('01 Nov, 2023', style: Theme.of(context).textTheme.bodyMedium?.apply(color: dark?Colors.white:Colors.black)),
          ],
        ),
        const SizedBox(height: CustomSize.spaceBetweenItems),
        ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: ' show more',
          trimExpandedText: ' show less',
          style: TextStyle(color: dark?Colors.white:Colors.black),
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color:Colors.black,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: CustomSize.spaceBetweenItems,),

        /// Company Review
        CustomRoundedContainer(
          backgroundColor: dark?CustomColor.darkGrey:CustomColor.grey,
          child: Padding(
              padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Anik Store",style: Theme.of(context).textTheme.titleMedium?.apply(color: dark?Colors.white:Colors.black),)
                  ],
                ),
                SizedBox(height: 16,),
                ReadMoreText(
                  'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' show more',
                  trimExpandedText: ' show less',
                  style: TextStyle(color: dark?Colors.white:Colors.black),
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color:Colors.black,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 32,)
      ],
    );
  }
}
