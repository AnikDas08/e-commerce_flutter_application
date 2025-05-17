import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutterecommerce/common/widgets/app_bar/appbar.dart';
import 'package:flutterecommerce/features/shop/screens/product_review/widget/product_rating.dart';
import 'package:flutterecommerce/features/shop/screens/product_review/widget/progress_indicators.dart';
import 'package:flutterecommerce/features/shop/screens/product_review/widget/rating_progress_indicator.dart';
import 'package:flutterecommerce/features/shop/screens/product_review/widget/user_review_card.dart';
import 'package:flutterecommerce/utills/constants/custome_color.dart';
import 'package:flutterecommerce/utills/devices/deviceutility.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';

import '../../../../utills/constants/size.dart';

class ProductReviewScreen extends StatelessWidget {
  ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Scaffold(
      /// App Bar
      appBar: CustomAppBar(
        title: Text("Review and rating",style: TextStyle(color: dark?Colors.white:Colors.black),),
        showBackArrow: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Settings and reviews are verified and are from people who use the same type of device that you use.",
                style: TextStyle(color: dark?CustomColor.white:CustomColor.dark),
              ),
              const SizedBox(height: CustomSize.spaceBetweenItems),

              /// Overall Product Ratings
              CustomOverallProductRating(),

              /// Ratingbar
              const SizedBox(height: 16,),
              CustomRatingbarIndicator(rating: 3.5,),
              Text("12,188",style: Theme.of(context).textTheme.bodyMedium?.apply(color: dark?Colors.white:Colors.black)),

              const SizedBox(height: 32,),
              /// User Review List Here
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),

            ],
          ),
        ),
      )
    );
  }
}



