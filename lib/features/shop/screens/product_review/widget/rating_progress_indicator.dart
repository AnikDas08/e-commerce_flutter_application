import 'package:flutter/material.dart';
import 'package:flutterecommerce/features/shop/screens/product_review/widget/progress_indicators.dart';

class CustomOverallProductRating extends StatelessWidget {
  const CustomOverallProductRating({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text('4.8', style: Theme.of(context).textTheme.displayLarge),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              CustomProgressIndicator(text: "5", value: 1.0),
              CustomProgressIndicator(text: "4", value: 0.8),
              CustomProgressIndicator(text: "3", value: 0.6),
              CustomProgressIndicator(text: "2", value: 0.4),
              CustomProgressIndicator(text: "1", value: 0.2),
              // Add more rating rows here for 4, 3, 2, 1 stars
            ],
          ),
        ),
      ],
    );
  }
}