class CustomPlatformException implements Exception {
  final String code;

  CustomPlatformException(this.code);

  String get message {
    switch (code) {
      case 'channel-error':
        return 'Platform channel error occurred.';
      case 'missing-plugin':
        return 'Missing plugin. Make sure the platform is configured correctly.';
      case 'not-implemented':
        return 'This feature is not available on this platform.';
      case 'permission-denied':
        return 'You do not have permission to access this feature.';
      default:
        return 'A platform error occurred. Please try again.';
    }
  }

  @override
  String toString() => message;
}
