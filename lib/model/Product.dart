class Product {
  final String name;
  final String price;
  final String pimage;
  final String details;
  final String roll;

  Product({
    required this.name,
    required this.price,
    required this.pimage,
    required this.details,
    required this.roll,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'] ?? '',
      price: json['price'] ?? '',
      pimage: json['pimage'] ?? '',
      details: json['details'] ?? '',
      roll: json['roll'] ?? '',
    );
  }
}
