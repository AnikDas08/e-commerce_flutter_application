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
        Flexible(child: Divider(color: dark?CustomColor.darkGrey:CustomColor.grey,thickness: 0.8,indent: 60,endIndent: 3,)),
        Padding(padding:EdgeInsets.only(left: 10,right: 10),child: Text(text,style: TextStyle(color: dark?Colors.white:Colors.black),)),
        Flexible(child: Divider(color: dark?CustomColor.darkGrey:CustomColor.grey,thickness: 0.8,indent: 3,endIndent: 60,)),
      ],
    );
  }
}