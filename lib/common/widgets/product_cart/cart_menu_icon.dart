import 'package:flutter/material.dart';

class CustomCartCounter extends StatelessWidget {
  const CustomCartCounter({
    super.key, this.iconColor, required this.onPressed,
  });

  final Color? iconColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        /// 🛍️ Shopping bag icon
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Icons.shopping_bag,
            color: iconColor,
          ),
        ),

        /// 🔢 Badge (Counter)
        Positioned(
          right: 4,
          /// Adjust as needed to stick to the icon
          top: 4,
          child: Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                "2",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}