import 'package:flutter/material.dart';

import '../../../../../utills/constants/custome_color.dart';

class CustomLoginDivider extends StatelessWidget {
  const CustomLoginDivider({
    super.key,
    required this.dark, this.text,
  });

  final bool dark;
  final text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark?CustomColor.darkGrey:CustomColor.dark,thickness: 0.8,indent: 60,endIndent: 3,)),
        Text(text,style: TextStyle(color: Colors.grey),),
        Flexible(child: Divider(color: dark?CustomColor.darkGrey:CustomColor.dark,thickness: 0.8,indent: 3,endIndent: 60,)),
      ],
    );
  }
}