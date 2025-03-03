import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:nepstayapp/features/Auth/presentation/pages/login_page.dart';

class DioClient {
  final Dio dio = Dio();

  DioClient() {
    dio.interceptors.add(InterceptorsWrapper(
      onResponse: (response, handler) {
        return handler.next(response); // Continue with the response
      },
      onError: (DioException error, handler) {
        if (error.response?.statusCode == 403 ||
            error.response?.statusCode == 401) {
          _handleTokenExpired();
        }
        return handler.next(error); // Continue with the error
      },
    ));
  }

  void _handleTokenExpired() {
    // Navigate to the login screen
    navigatorKey.currentState?.pushAndRemoveUntil(
      MaterialPageRoute(builder: (_) => const LoginPage()),
      (route) => false,
    );
  }
}

// Create a global navigator key
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
