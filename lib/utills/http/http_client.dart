import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

class CustomHttpHelper {
  static const String _baseUrl = 'https://your-api-base-url.com'; // Replace with your API base URL

  /// Helper method to make a GET request
  static Future<Map<String, dynamic>> get(String endpoint,
      {Map<String, String>? headers, Map<String, dynamic>? queryParams}) async {
    try {
      final uri = Uri.parse('$_baseUrl/$endpoint').replace(
        queryParameters: queryParams,
      );

      final response = await http.get(
        uri,
        headers: _buildHeaders(headers),
      );

      return _handleResponse(response);
    } catch (e) {
      throw _handleError(e);
    }
  }

  /// Helper method to make a POST request
  static Future<Map<String, dynamic>> post(String endpoint, dynamic data,
      {Map<String, String>? headers}) async {
    try {
      final response = await http.post(
        Uri.parse('$_baseUrl/$endpoint'),
        headers: _buildHeaders(headers),
        body: json.encode(data),
      );
      return _handleResponse(response);
    } catch (e) {
      throw _handleError(e);
    }
  }

  /// Helper method to make a PUT request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data,
      {Map<String, String>? headers}) async {
    try {
      final response = await http.put(
        Uri.parse('$_baseUrl/$endpoint'),
        headers: _buildHeaders(headers),
        body: json.encode(data),
      );
      return _handleResponse(response);
    } catch (e) {
      throw _handleError(e);
    }
  }

  /// Helper method to make a DELETE request
  static Future<Map<String, dynamic>> delete(String endpoint,
      {Map<String, String>? headers, dynamic data}) async {
    try {
      final response = await http.delete(
        Uri.parse('$_baseUrl/$endpoint'),
        headers: _buildHeaders(headers),
        body: data != null ? json.encode(data) : null,
      );
      return _handleResponse(response);
    } catch (e) {
      throw _handleError(e);
    }
  }

  /// Helper method to make a PATCH request
  static Future<Map<String, dynamic>> patch(String endpoint, dynamic data,
      {Map<String, String>? headers}) async {
    try {
      final response = await http.patch(
        Uri.parse('$_baseUrl/$endpoint'),
        headers: _buildHeaders(headers),
        body: json.encode(data),
      );
      return _handleResponse(response);
    } catch (e) {
      throw _handleError(e);
    }
  }

  /// Handle the HTTP response
  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw HttpException(
        'Request failed with status: ${response.statusCode}',
        statusCode: response.statusCode,
        response: response,
      );
    }
  }

  /// Build headers with default content type
  static Map<String, String> _buildHeaders(Map<String, String>? headers) {
    final defaultHeaders = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    return {...defaultHeaders, ...?headers};
  }

  /// Handle network errors
  static HttpException _handleError(dynamic error) {
    if (kDebugMode) {
      print('HTTP Error: $error');
    }
    if (error is http.ClientException) {
      return HttpException(error.message);
    } else if (error is FormatException) {
      return HttpException('Invalid data format');
    } else {
      return HttpException('Network error occurred');
    }
  }
}

/// Custom HTTP exception class
class HttpException implements Exception {
  final String message;
  final int? statusCode;
  final http.Response? response;

  HttpException(this.message, {this.statusCode, this.response});

  @override
  String toString() => message;
}