import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/custom_shape/container_shape/circular_container.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';

class CustomsChoiceChip extends StatelessWidget {
  const CustomsChoiceChip({
    super.key, required this.text, required this.selected, this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: CustomHelperFunction.getColor(text)!=null?const SizedBox(): Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected?Colors.white:null),
        avatar: CustomHelperFunction.getColor(text)!=null?CustomCircularContainer(width: 50,height: 50,backgroundColor: CustomHelperFunction.getColor(text)!,):null,
        shape: CustomHelperFunction.getColor(text)!=null?CircleBorder():null,
        backgroundColor: CustomHelperFunction.getColor(text)!=null?Colors.green:null,
        labelPadding: CustomHelperFunction.getColor(text)!=null?EdgeInsets.all(0):null,
        padding: EdgeInsets.all(0),
      ),
    );
  }
}