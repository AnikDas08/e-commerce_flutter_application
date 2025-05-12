import 'package:flutter/material.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:get/get.dart';

import '../../../utills/constants/custome_color.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.action,
    this.loadingIcon,
    this.leadingOnProgress,
    this.showBackArrow = false,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? loadingIcon;
  final List<Widget>? action;
  final VoidCallback? leadingOnProgress;

  @override
  Widget build(BuildContext context) {
    final dark=CustomHelperFunction.isDarkMode(context);
    return AppBar(
      automaticallyImplyLeading: false,
      title: title,
      leading: showBackArrow
          ? IconButton(onPressed: () => Get.back(), icon: Icon(Icons.arrow_back,color: dark?CustomColor.white:CustomColor.dark,))
          : loadingIcon!=null?IconButton(onPressed: leadingOnProgress, icon: const Icon(Icons.arrow_back)):null,
      actions: action,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}