import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utills/constants/size.dart';

class CustomRatingShare extends StatelessWidget {
  const CustomRatingShare({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// Rating
        Row(
          children: [
            Icon(Iconsax.star5,color: Colors.amber,size: 24,),
            SizedBox(height: CustomSize.spaceBetweenItems/2,),
            Text.rich(
                TextSpan(
                    children:[
                      TextSpan(text: "0.5",style: Theme.of(context).textTheme.bodyLarge?.apply(color: dark?Colors.white:Colors.black)),
                      TextSpan(text: "(119)",style: TextStyle(color: dark?Colors.white:Colors.black)),
                    ]
                )
            )
          ],
        ),
        IconButton(onPressed: (){}, icon: Icon(Icons.share,size: 24,))
      ],
    );
  }
}