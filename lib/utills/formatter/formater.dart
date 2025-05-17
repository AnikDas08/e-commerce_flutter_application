import 'dart:math';
import 'package:intl/intl.dart';

class CustomFormatter {
  /// 🇧🇩 Formats date to 'dd-MMM-yyyy' (e.g., '05-জানু-2023') in Bangla
  static String formatDate(DateTime? date, {String format = 'dd-MMM-yyyy', String locale = 'bn_BD'}) {
    date ??= DateTime.now();
    return DateFormat(format, locale).format(date);
  }

  /// 🇧🇩 Formats currency as BDT (৳)
  static String formatCurrency(double amount, {String locale = 'bn_BD', String symbol = '৳'}) {
    return NumberFormat.currency(locale: locale, symbol: symbol).format(amount);
  }

  /// 🇧🇩 Formats Bangladeshi phone number: 01XXX-XXXXXX or +8801XXX-XXXXXX
  static String formatPhoneNumber(String phoneNumber) {
    String digits = phoneNumber.replaceAll(RegExp(r'[^\d]'), '');

    if (digits.startsWith('880') && digits.length == 13) {
      // +8801XXX-XXXXXX
      return '+880${digits.substring(3, 5)}-${digits.substring(5, 9)}-${digits.substring(9)}';
    } else if (digits.length == 11 && digits.startsWith('01')) {
      // 01XXX-XXXXXX
      return '${digits.substring(0, 5)}-${digits.substring(5)}';
    }
    return phoneNumber;
  }

  /// Formats large numbers (e.g., ১,০০০, ১K, ১M) in Bengali compact format
  static String compactNumber(double number, {String locale = 'bn_BD'}) {
    return NumberFormat.compact(locale: locale).format(number);
  }

  /// 🇧🇩 Formats percentage (e.g., ২৫.৫%)
  static String formatPercentage(double percentage, {String locale = 'bn_BD'}) {
    return NumberFormat.percentPattern(locale).format(percentage / 100);
  }

  /// 🇧🇩 Formats time (e.g., ৩:৪৫ PM)
  static String formatTime(DateTime time, {String format = 'h:mm a', String locale = 'bn_BD'}) {
    return DateFormat(format, locale).format(time);
  }

  /// 🇧🇩 Formats file size (e.g., ১.২ MB)
  static String formatFileSize(int bytes, {String locale = 'bn_BD'}) {
    if (bytes <= 0) return '০ B';
    const suffixes = ['B', 'KB', 'MB', 'GB', 'TB'];
    int i = (log(bytes) / log(1024)).floor();
    return '${NumberFormat('#,##0.##', locale).format(bytes / pow(1024, i))} ${suffixes[i]}';
  }

  /// 🇧🇩 Formats social media numbers (e.g., ১.২K, ৩.৫M)
  static String formatSocialNumber(int number, {String locale = 'bn_BD'}) {
    if (number >= 1000000) {
      return '${NumberFormat('#.#', locale).format(number / 1000000)}M';
    } else if (number >= 1000) {
      return '${NumberFormat('#.#', locale).format(number / 1000)}K';
    }
    return NumberFormat.decimalPattern(locale).format(number);
  }
}
