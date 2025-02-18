import 'dart:io';

import 'package:dio/dio.dart';
import 'package:nepstayapp/core/api_const.dart';
import 'package:nepstayapp/core/error/exception_error.dart';
import 'package:nepstayapp/core/utils/dio_http.dart';
import 'package:nepstayapp/features/Home/data/model/property_model.dart';

abstract class PropertyDataSource {
  Future<PropertyResponse> fetchProperties();
  Future<PropertyDetailModel> fetchPropertiesDetails(String? uid);
}

class PropertyDataSourceImpl extends PropertyDataSource {
  final DioHttp dioHttp;
  PropertyDataSourceImpl({required this.dioHttp});

  @override
  Future<PropertyResponse> fetchProperties() async {
    final Response response =
        await dioHttp.get(url: Api.baseUrl + Api.getPropertiesApi);

    if (response.statusCode == HttpStatus.ok ||
        response.statusCode == HttpStatus.created) {
      final responseData = response.data;
      PropertyResponse propertyResponse =
          PropertyResponse.fromJson(responseData);
      return propertyResponse;
    } else {
      throw ServerException(response.statusMessage, response.statusCode);
    }
  }

  @override
  Future<PropertyDetailModel> fetchPropertiesDetails(String? uid) async {
    final Response response =
        await dioHttp.get(url: Api.baseUrl + Api.getPropertiesApi + '$uid');
    if (response.statusCode == HttpStatus.ok ||
        response.statusCode == HttpStatus.created) {
      final responseData = response.data;
      print("Raw JSON: ${responseData}");

      print("Price per night: ${responseData['price_per_night']}");
      print("Image URL: ${responseData['image_url']}");
      PropertyDetailModel propertyDetails =
          PropertyDetailModel.fromJson(responseData);
      print("Property Details: ${propertyDetails}");
      print("Price per night: ${propertyDetails.pricePerNight}");
      print("Image URL: ${propertyDetails.imageUrl}");
      return propertyDetails;
    } else {
      throw ServerException(response.statusMessage, response.statusCode);
    }
  }
}
