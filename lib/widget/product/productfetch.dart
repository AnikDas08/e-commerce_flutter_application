import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutterecommerce/model/Product.dart';
import 'package:flutterecommerce/widget/product/product_items.dart';

class Productfetch extends StatelessWidget {
  final DatabaseReference _productRef =
  FirebaseDatabase.instance.ref().child('products');

   Productfetch({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DatabaseEvent>(
      stream: _productRef.onValue,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return const Center(child: Text('❌ Error loading products'));
        }

        if (!snapshot.hasData || snapshot.data!.snapshot.value == null) {
          return const Center(child: Text('No products available'));
        }

        final Map<String, dynamic> data = Map<String, dynamic>.from(
          snapshot.data!.snapshot.value as Map,
        );

        final List<Product> products = data.entries.map((entry) {
          final productData = Map<String, dynamic>.from(entry.value);
          return Product.fromJson(productData);
        }).toList();

        return GridView.builder(
          shrinkWrap: true,
          itemCount: products.length,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return ProductItem(product: products[index]);
          },
        );
      },
    );
  }
}
