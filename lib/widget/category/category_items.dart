import 'package:flutter/material.dart';
import 'package:flutterecommerce/model/CatagoryClass.dart';

class CategoryItem extends StatelessWidget {
  final CatagoryModel category;
  final VoidCallback onTap;

  const CategoryItem({
    super.key,
    required this.category,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(category.imagePath!),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[300],
            ),
          ),
          SizedBox(height: 5),
          Text(
            category.name!,
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}