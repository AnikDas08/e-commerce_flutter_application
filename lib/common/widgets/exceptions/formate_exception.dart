class CustomFormatException implements Exception {
  const CustomFormatException();

  String get message => 'Invalid format. Please check your input.';

  @override
  String toString() => message;
}
