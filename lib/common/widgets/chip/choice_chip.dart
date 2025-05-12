import 'package:flutter/material.dart';

class CustomsChoiceChip extends StatelessWidget {
  const CustomsChoiceChip({
    super.key, required this.text, required this.selected, this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text("Green"),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected?Colors.white:null),
    );
  }
}