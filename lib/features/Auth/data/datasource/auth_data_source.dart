import 'dart:io';
import 'package:dio/dio.dart';
import 'package:nepstayapp/core/api_const.dart';
import 'package:nepstayapp/core/utils/dio_http.dart';
import 'package:nepstayapp/core/error/exception_error.dart';
import 'package:nepstayapp/features/Auth/data/model/auth_model/user_model.dart';
import 'package:nepstayapp/features/Auth/domain/service/user_hive_service.dart';

abstract class AuthDataSource {
  Future<AuthenticationResponse> login(
      AuthenticationRequest authenticationRequest);
  Future<Map<String, dynamic>> signUpUser(UserModel userM);
  Future<bool> verifyOtp(String email, String verificationCode);
  Future<bool> verifyEmail(String email);
  Future<bool> changePasswordDataSource(String email, String newPassword);
}

class AuthDataSourceImpl implements AuthDataSource {
  final DioHttp dioHttp;
  final UserHiveService userHiveService;

  AuthDataSourceImpl({required this.userHiveService, required this.dioHttp});
  @override
  //
  // Login data source
  Future<AuthenticationResponse> login(
      AuthenticationRequest authenticationRequest) async {
    try {
      final Response response = await dioHttp.post(
        url: Api.baseUrl + Api.loginApi,
        data: authenticationRequest.toJson(),
      );

      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.created) {
        return AuthenticationResponse.fromJson(response.data);
      } else {
        throw ServerException(
          response.statusMessage ?? 'Unknown error',
          response.statusCode,
        );
      }
    } catch (e) {
      rethrow;
    }
  }

//
// Signup data source
  @override
  Future<Map<String, dynamic>> signUpUser(UserModel userMode) async {
    final Response response = await dioHttp.post(
        url: Api.baseUrl + Api.signUpUserApi, data: userMode.toJson());
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.data;
    } else {
      throw ServerException(response.statusMessage, response.statusCode);
    }
  }

  //
  //Verify Otp data source
  @override
  Future<bool> verifyOtp(String email, String verificationCode) async {
    try {
      final Response response = await dioHttp.post(
        url: Api.baseUrl + Api.verifyEmailApi,
        data: {
          'email': email,
          'verificationCode': verificationCode,
        },
      );

      if (response.statusCode == 200) {
        final responseData = response.data;
        if (responseData is Map<String, dynamic> &&
            responseData["StatusCode"] == 200) {
          return true;
        }
      }
      throw Exception(
          'Failed to verify OTP. Server returned: ${response.statusCode}');
    } catch (e) {
      throw Exception('Failed to verify OTP: ${e.toString()}');
    }
  }

//
// Verify Email
  @override
  Future<bool> verifyEmail(String email) async {
    try {
      final Response response = await dioHttp.post(
        url: "${Api.baseUrl}${Api.sendOtpinEmailApi}$email",
      );
      if (response.statusCode == 200) {
        final responseData = response.data;
        if (responseData is Map<String, dynamic> &&
            responseData["StatusCode"] == 200) {
          return true;
        }
      }
      throw Exception(
          'Failed to verify OTP. Server returned: ${response.statusCode}');
    } catch (e) {
      throw Exception('Failed to verify OTP: ${e.toString()}');
    }
  }

//
// Change password
  @override
  Future<bool> changePasswordDataSource(
      String email, String newPassword) async {
    try {
      final Response response = await dioHttp.patch(
          url: "${Api.baseUrl}${Api.changePasswordApi}$email",
          data: {"password": newPassword, "repeatPassword": newPassword});
      if (response.statusCode == 200) {
        final responseData = response.data;
        if (responseData is Map<String, dynamic> &&
            responseData["StatusCode"] == 200) {
          return true;
        }
      }
      throw Exception("Failed to change Password:${response.statusCode}");
    } catch (e) {
      throw Exception('Failed to change password ${e.toString()}');
    }
  }

  //
  // Change Password
}
