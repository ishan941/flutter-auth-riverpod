import 'package:dio/dio.dart';
import 'package:nepstayapp/core/api_const.dart';
import 'package:nepstayapp/core/error/exception_error.dart';

class DioHttp {
  final Dio dio;

  DioHttp({required this.dio});

  delete({String? url, String? token}) async {
    if (token != null) {
      dio.options.headers["Authorization"] = "Bearer $token";
    }
    return dio.delete(url!);
  }

  patch({String? url, Map? data, String? token}) async {
    dio.options.headers['content-Type'] = 'application/json';
    if (token != null) {
      dio.options.headers["Authorization"] = "Bearer $token";
    }
    return dio.patch(url!, data: data);
  }

  get({String? url, String? token, Map? query}) async {
    dio.options.headers['content-Type'] = 'application/json';
    if (token != null) {
      dio.options.headers["Authorization"] = "Bearer $token";
    }
    if (query != null) {
      return dio
          .get(url!, queryParameters: query as Map<String, dynamic>?)
          .then((response) {
        // Log the response
        print('Response data: ${response.data}');
        return response;
      });
    }
    return dio.get(url!).then((response) {
      // Log the response
      print('Response data: ${response.data}');
      return response;
    });
  }

  post({
    String? url,
    Map? data,
    Map? query,
    String? token,
    FormData? formData,
  }) async {
    if (data?['file'] != null) {
      dio.options.headers['Accept'] = '*/*';
      dio.options.headers['content-Type'] = 'multipart/form-data';
    } else {
      dio.options.headers['content-Type'] = 'application/json';
    }
    if (token != null && token.isNotEmpty) {
      dio.options.headers["Authorization"] = "Bearer $token";
    }

    if (data != null && query != null) {
      return dio.post(url!,
          data: data, queryParameters: query as Map<String, dynamic>?);
    } else if (data != null) {
      return dio.post(url!, data: data);
    } else if (query != null) {
      return dio.post(url!, queryParameters: query as Map<String, dynamic>?);
    } else if (formData != null) {
      return dio.post(url!, data: formData);
    } else {
      return dio.post(url!, data: data);
    }
  }

  put({String? url, Map? data, String? token}) async {
    dio.options.headers['content-Type'] = 'application/json';
    dio.options.headers['Accept'] = 'application/json';
    if (token != null) {
      dio.options.headers["Authorization"] = "Bearer $token";
    }
    return dio.put(url!, data: data);
  }
}
