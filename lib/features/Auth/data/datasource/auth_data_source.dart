import 'dart:io';

import 'package:dio/dio.dart';
import 'package:nepstayapp/core/api_const.dart';
import 'package:nepstayapp/core/utils/dio_http.dart';
import 'package:nepstayapp/core/error/exception_error.dart';
import 'package:nepstayapp/features/Auth/data/model/auth_model/user_model.dart';
import 'package:nepstayapp/features/Auth/domain/service/user_hive_service.dart';

abstract class AuthDataSource {
  // Future<Map<String, dynamic>> login(String email, String password);
  Future<Map<String, dynamic>> signUpUser(UserModel userM);
}

class AuthDataSourceImpl implements AuthDataSource {
  final DioHttp dioHttp;
  final UserHiveService userHiveService;

  AuthDataSourceImpl({required this.userHiveService, required this.dioHttp});
  // @override
  // Future<Map<String, dynamic>> login(String email, String password) async {
  //   try {
  //     final Response response = await dioHttp.post(
  //       url: Api.baseUrl + Api.loginApi,
  //       data: {'email': email, 'password': password},
  //     );

  //     if (response.statusCode == HttpStatus.ok ||
  //         response.statusCode == HttpStatus.created) {
  //       print("Response Data: ${response.data}");

  //       final authModel = UserModel.fromJson(response.data);
  //       final user = authModel.user;
  //       final accessToken = authModel.access;
  //       final refreshToken = authModel.refresh;

  //       return {
  //         'user': user,
  //         'accessToken': accessToken,
  //         'refreshToken': refreshToken,
  //       };
  //     } else {
  //       throw ServerException(
  //         response.statusMessage ?? 'Unknown error',
  //         response.statusCode,
  //       );
  //     }
  //   } catch (e) {
  //     print('Error during login: $e');
  //     rethrow;
  //   }
  // }

  @override
  Future<Map<String, dynamic>> signUpUser(UserModel userMode) async {
    final Response response =
        await dioHttp.post(url: Api.baseUrl + Api.signUpUserApi, data: {
      "firstName": "Ishan",
      "lastName": "Shrestha",
      "email": "ishanshrestha941@gmail.com",
      "password": "sh1aasasaak2ti1lama",
      "role": "USER",
      "contactNumber": 98123411455,
      "gender": "Male",
      "city": "Banepa",
      "street": "Nala",
      "district": "kavre"
    });
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.data;
    } else {
      throw ServerException(response.statusMessage, response.statusCode);
    }
  }
}
