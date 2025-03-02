import 'dart:io';

import 'package:dio/dio.dart';
import 'package:nepstayapp/core/api_const.dart';
import 'package:nepstayapp/core/error/exception_error.dart';
import 'package:nepstayapp/core/utils/dio_http.dart';
import 'package:nepstayapp/features/profile/data/model/user_details.dart';

abstract class ProfileDatasource {
  Future<UserDetails> getUserDetails(String token, int id);
  Future<bool> updateUserDetails(
      String token, int userId, UserDetails userDetails);
}

class ProfileDataSouceImpl implements ProfileDatasource {
  final DioHttp dioHttp;
  ProfileDataSouceImpl({required this.dioHttp});
  @override
  Future<UserDetails> getUserDetails(String token, int id) async {
    try {
      Response response = await dioHttp.get(
          url: "${Api.baseUrl}${Api.getUserByIdApi}$id", token: token);

      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.created) {
        final userData = response.data['Data']; // Extract the correct part
        return UserDetails.fromJson(userData);
      } else {
        throw ServerException(
            response.statusMessage ?? 'Unknown error', response.statusCode);
      }
    } catch (e) {
      print('Error during fetch User: $e');

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
}
