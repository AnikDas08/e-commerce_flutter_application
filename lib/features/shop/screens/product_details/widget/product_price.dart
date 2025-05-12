import 'package:flutter/material.dart';

class CustomProductPrice extends StatelessWidget {
  CustomProductPrice({
    super.key,
    this.currencySign = '\$',
    required this.price,
    this.dark,
    this.isLarge = false,
    this.maxLines = 1,
    this.lineThrough = false,
  });

  final String currencySign;
  final String price;
  final bool? dark;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium?.apply(color: dark!?Colors.white:Colors.black,
                decoration: lineThrough ? TextDecoration.lineThrough : null,
              )
          : Theme.of(context).textTheme.titleLarge?.apply(color: dark!?Colors.white:Colors.black,
                decoration: lineThrough ? TextDecoration.lineThrough : null,
              ),
    );
  }
}
