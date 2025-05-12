import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomProfileMenu extends StatelessWidget {
  const CustomProfileMenu({
    super.key,
    required this.dark,
    this.icon=Iconsax.arrow_right_34,
    required this.onPressed,
    required this.title,
    required this.value,
  });

  final bool dark;
  final IconData icon;
  final VoidCallback? onPressed;
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.apply(color: dark ? Colors.white38 : Colors.black26),
                  overflow: TextOverflow.ellipsis,
                )),
            Expanded(
                flex: 5,
                child: Text(
                  value,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.apply(color: dark ? Colors.white : Colors.black),
                  overflow: TextOverflow.ellipsis,
                )),
            Expanded(
                child: Icon(
              icon,
              size: 18,
            )),
          ],
        ),
      ),
    );
  }
}
