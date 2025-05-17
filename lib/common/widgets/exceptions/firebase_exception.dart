class CustomFirebaseException implements Exception {
  final String code;

  CustomFirebaseException(this.code);

  String get message {
    switch (code) {
      case 'permission-denied':
        return 'You do not have permission to perform this operation.';
      case 'unavailable':
        return 'Service is currently unavailable. Try again later.';
      case 'cancelled':
        return 'The operation was cancelled.';
      case 'deadline-exceeded':
        return 'The operation timed out.';
      default:
        return 'A Firebase error occurred. Please try again.';
    }
  }

  @override
  String toString() => message;
}
