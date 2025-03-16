import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:nepstayapp/core/api_const.dart';
import 'package:nepstayapp/core/error/dio_client.dart';
import 'package:nepstayapp/core/error/exception_error.dart';
import 'package:nepstayapp/core/utils/dio_http.dart';
import 'package:nepstayapp/features/Auth/presentation/pages/login_page.dart';
import 'package:nepstayapp/features/profile/data/model/kyc/kyc_model.dart';
import 'package:nepstayapp/features/profile/data/model/user_details.dart';

abstract class ProfileDatasource {
  Future<UserDetails> getUserDetails(String token, int id);
  Future<bool> updateUserDetails(
      String token, int userId, UserDetails userDetails);
  Future<bool> verifyKyc(KycModel kycModel);
}

class ProfileDataSouceImpl implements ProfileDatasource {
  final DioHttp dioHttp;
  ProfileDataSouceImpl({required this.dioHttp});

  @override
  Future<UserDetails> getUserDetails(String token, int id) async {
    try {
      Response response = await dioHttp.get(
        url: "${Api.baseUrl}${Api.getUserByIdApi}$id",
        token: token,
      );

      if (response.statusCode == 403 || response.statusCode == 401) {
        _handleTokenExpired();
        return Future.error("Unauthorized"); // Stop execution
      }

      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.created) {
        final userData = response.data['Data'];
        return UserDetails.fromJson(userData);
      } else {
        throw ServerException(
            response.statusMessage ?? 'Unknown error', response.statusCode);
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 403 || e.response?.statusCode == 401) {
        Future.delayed(Duration.zero, () {
          navigatorKey.currentState?.pushAndRemoveUntil(
            MaterialPageRoute(builder: (_) => const LoginPage()),
            (route) => false,
          );
        });
        return Future.error("Unauthorized"); // Stop execution
      }
      rethrow;
    }
  }

  @override
  Future<bool> updateUserDetails(
      String token, int userId, UserDetails userDetails) async {
    try {
      Response response = await dioHttp.patch(
          url: "${Api.baseUrl}${Api.updateUserDetails}$userId",
          token: token,
          data: userDetails.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final responseData = response.data;
        if (responseData is Map<String, dynamic> &&
            responseData["StatusCode"] == 200) {
          return true;
        } else {
          return responseData;
        }
      } else {
        throw ServerException(
            response.statusMessage ?? 'Unknown error', response.statusCode);
      }
    } catch (e) {
      throw Exception('Failed to verify OTP: ${e.toString()}');
    }
  }

  @override
  Future<bool> verifyKyc(KycModel kyc) async {
    try {
      Response response =
          await dioHttp.post(url: Api.baseUrl + Api.verifyKycApi);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final responseData = response.data;
        if (responseData is Map<String, dynamic> &&
            responseData["StatusCode"] == 200) {
          return true;
        } else {
          return responseData;
        }
      } else {
        throw ServerException(
            response.statusMessage ?? "Unknown error", response.statusCode);
      }
    } catch (e) {
      throw Exception("Failed to submit: ${e.toString()}");
    }
  }

  void _handleTokenExpired() {
    print("Token expired! Redirecting to login...");

    Future.delayed(Duration.zero, () {
      navigatorKey.currentState?.pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => const LoginPage()),
        (route) => false,
      );
    });
  }
}
