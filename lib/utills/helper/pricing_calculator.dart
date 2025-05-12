class CustomPricingCalculator {
  /// Calculate the total price including tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    double shippingCost = getShippingCost(location, productPrice);
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// Calculate shipping cost (formatted as string)
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location, productPrice);
    return shippingCost.toStringAsFixed(2);
  }

  /// Calculate tax amount (formatted as string)
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  /// Get tax rate for a specific location
  static double getTaxRateForLocation(String location) {
    // In a real app, you would look this up from a database or API
    return location == 'US' ? 0.08 :  // 8% tax in US
    location == 'UK' ? 0.20 :  // 20% VAT in UK
    location == 'CA' ? 0.13 :  // 13% HST in Canada
    0.10; // Default 10% tax
  }

  /// Get shipping cost based on location and order value
  static double getShippingCost(String location, double orderValue) {
    // Free shipping for orders over $100
    if (orderValue > 100) return 0;

    // Flat rate shipping based on location
    return location == 'US' ? 5.99 :
    location == 'UK' ? 9.99 :
    location == 'CA' ? 7.99 :
    12.99; // International default
  }

  /// Calculate discount amount
  static double calculateDiscount(double originalPrice, double discountPercentage) {
    return originalPrice * (discountPercentage / 100);
  }

  /// Calculate discounted price
  static double calculateDiscountedPrice(double originalPrice, double discountPercentage) {
    return originalPrice - calculateDiscount(originalPrice, discountPercentage);
  }

  /// Calculate price per unit (for products sold in bulk)
  static double calculatePricePerUnit(double totalPrice, int quantity) {
    return quantity > 0 ? totalPrice / quantity : 0;
  }

  /// Calculate savings percentage
  static double calculateSavingsPercentage(double originalPrice, double discountedPrice) {
    return ((originalPrice - discountedPrice) / originalPrice) * 100;
  }

  /// Format price with currency symbol
  static String formatPrice(double price, {String currencySymbol = '\$'}) {
    return '$currencySymbol${price.toStringAsFixed(2)}';
  }
}