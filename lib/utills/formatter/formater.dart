import 'dart:math';

import 'package:intl/intl.dart';

class CustomFormatter {
  /// Formats date to 'dd-MMM-yyyy' (e.g., '05-Jan-2023')
  static String formatDate(DateTime? date, {String format = 'dd-MMM-yyyy'}) {
    date ??= DateTime.now();
    return DateFormat(format).format(date);
  }

  /// Formats currency with default US locale and $ symbol
  static String formatCurrency(double amount, {String locale = 'en_US', String symbol = '\$'}) {
    return NumberFormat.currency(locale: locale, symbol: symbol).format(amount);
  }

  /// Formats phone number (US format: (123) 456-7890)
  static String formatPhoneNumber(String phoneNumber) {
    // Remove all non-digit characters
    String digits = phoneNumber.replaceAll(RegExp(r'[^\d]'), '');

    // Format 10-digit US numbers: (123) 456-7890
    if (digits.length == 10) {
      return '(${digits.substring(0, 3)}) ${digits.substring(3, 6)}-${digits.substring(6)}';
    }
    // Format 11-digit numbers with country code: +1 (123) 456-7890
    else if (digits.length == 11) {
      return '+${digits.substring(0, 1)} (${digits.substring(1, 4)}) ${digits.substring(4, 7)}-${digits.substring(7)}';
    }
    // Return original if format doesn't match
    return phoneNumber;
  }

  /// Formats large numbers (e.g., 1,000, 1K, 1M)
  static String compactNumber(double number) {
    return NumberFormat.compact().format(number);
  }

  /// Formats percentage (e.g., 25.5%)
  static String formatPercentage(double percentage) {
    return NumberFormat.percentPattern().format(percentage / 100);
  }

  /// Formats time duration (e.g., 3:45 PM)
  static String formatTime(DateTime time, {String format = 'h:mm a'}) {
    return DateFormat(format).format(time);
  }

  /// Formats file size in human-readable format (e.g., 1.2 MB)
  static String formatFileSize(int bytes) {
    if (bytes <= 0) return '0 B';
    const suffixes = ['B', 'KB', 'MB', 'GB', 'TB'];
    int i = (log(bytes) / log(1024)).floor();
    return '${(bytes / pow(1024, i)).toStringAsFixed(2)} ${suffixes[i]}';
  }

  /// Formats social media numbers (e.g., 1.2K, 3.5M)
  static String formatSocialNumber(int number) {
    if (number >= 1000000) {
      return '${(number / 1000000).toStringAsFixed(1)}M';
    } else if (number >= 1000) {
      return '${(number / 1000).toStringAsFixed(1)}K';
    }
    return number.toString();
  }
}