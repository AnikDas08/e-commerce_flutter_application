import 'package:flutter/material.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';

class CustomSectionHeading extends StatelessWidget {
  const CustomSectionHeading({
    super.key,
    this.textColor,
    this.showActionButton =true,
    required this.title,
    this.buttonTitle = 'View All',
    this.onPressed,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title;
  final String buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineMedium?.apply(color: dark?Colors.white:Colors.black), maxLines: 1, overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
            onPressed: onPressed,
            child: Text(buttonTitle,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
          ),
      ],
    );
  }
}