import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../../utills/constants/custome_color.dart';

class CustomRatingbarIndicator extends StatelessWidget {
  const CustomRatingbarIndicator({
    super.key, required this.rating,
  });
  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
        rating: rating,
        itemSize: 24,
        unratedColor: CustomColor.grey,
        itemBuilder: (_,__)=>Icon(Icons.star,color: CustomColor.primarycolor,)
    );
  }
}