import 'package:flutter/material.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';

class CustomTab extends StatelessWidget implements PreferredSizeWidget {
  // If you want to add the background color to tabs you have to wrap them in Material widget.
  // To do that we need [PreferredSize] Widget and that's why created custom class. [PreferredSizeWidget]
  const CustomTab({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunction.isDarkMode(context);
    return Material(
      color: dark ? Colors.black : Colors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: Colors.blueGrey,
        labelColor: dark ? Colors.white : Colors.black,
        unselectedLabelColor: Colors.grey,
      ), // TabBar
    ); // Material
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}