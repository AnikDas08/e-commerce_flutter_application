import 'package:flutter/material.dart';
import 'package:flutterecommerce/model/CatagoryClass.dart';

import 'category_items.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      CatagoryModel(name: "পাঞ্জাবি", imagePath: "assets/images/catagoryfoodimg.png"),
      CatagoryModel(name: "জামা", imagePath: "assets/images/catagoryjursyimag.png"),
      CatagoryModel(name: "শাড়ি", imagePath: "assets/images/catagoryelectronicsimg.png"),
      CatagoryModel(name: "Food", imagePath: "assets/images/catagoryfoodimg.png"),
      CatagoryModel(name: "পাঞ্জাবি", imagePath: "assets/images/catagoryfoodimg.png"),
      CatagoryModel(name: "জামা", imagePath: "assets/images/catagoryjursyimag.png"),
      CatagoryModel(name: "শাড়ি", imagePath: "assets/images/catagoryelectronicsimg.png"),
      CatagoryModel(name: "Food", imagePath: "assets/images/catagoryfoodimg.png"),
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          height: 150,
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Categories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.4,
                  children: categories.map((category) {
                    return CategoryItem(
                      category: category,
                      onTap: () {
                        print("Show new value");
                        // handle tap
                      },
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
