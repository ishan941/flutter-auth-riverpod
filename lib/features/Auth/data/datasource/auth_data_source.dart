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
}

class AuthDataSourceImpl implements AuthDataSource {
  final DioHttp dioHttp;
  final UserHiveService userHiveService;

  AuthDataSourceImpl({required this.userHiveService, required this.dioHttp});
  @override
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
      print('Error during login: $e');
      rethrow;
    }
  }

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
        return response.data == true;
      } else {
        throw Exception(
            'Failed to verify OTP. Server returned: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to verify OTP: ${e.toString()}');
    }
  }
}
