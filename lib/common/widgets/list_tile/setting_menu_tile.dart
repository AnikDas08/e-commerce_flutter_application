import 'package:flutter/material.dart';

import '../../../utills/constants/custome_color.dart';

class CustomSettingMenuTile extends StatelessWidget {
  const CustomSettingMenuTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.trailing, this.onTap, required this.dark
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return
      ListTile(
        leading: Icon(icon, size: 28, color: CustomColor.primarycolor),
        title: Text(title, style: Theme.of(context).textTheme.titleMedium?.apply(color: dark?Colors.white:Colors.black)),
        subtitle: Text(subtitle, style: Theme.of(context).textTheme.labelMedium?.apply(color: dark?Colors.white.withOpacity(0.5):Colors.black.withOpacity(0.5))),
        trailing: trailing,
        onTap: onTap,
    );
  }
}