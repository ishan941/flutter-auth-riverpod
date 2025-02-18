import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:nepstayapp/core/error/failure.dart';
import 'package:nepstayapp/core/networkinfo/network_info.dart';
import 'package:nepstayapp/core/token_service/repository/base_repository.dart';
import 'package:nepstayapp/core/token_service/services/token_service.dart';
import 'package:nepstayapp/core/utils/string_util.dart';
import 'package:nepstayapp/features/Home/data/datasource/property_data_source.dart';
import 'package:nepstayapp/features/Home/data/model/property_model.dart';
import 'package:nepstayapp/features/Home/domain/repository/property_repository.dart';

class PropertyRepositoryImpl extends BaseRepository
    implements PropertyRepository {
  final PropertyDataSource propertyDataSource;
  final NetworkInfo networkInfo;
  final TokenService tService;
  PropertyRepositoryImpl(
      {required this.networkInfo,
      required this.propertyDataSource,
      required this.tService})
      : super(tokenService: tService);

  @override
  Future<Either<Failure, PropertyResponse>> getProperties() async {
    if (await networkInfo.isConnected) {
      try {
        final PropertyResponse propertyResponse =
            await propertyDataSource.fetchProperties();
        return Right(propertyResponse);
      } catch (e) {
        if (e is DioException) {
          return Left(ServerFailure(
              (e.response?.data == null) ? e.message : e.response?.data,
              e.response?.statusCode));
        } else {
          return const Left(ServerFailure(somethingWentWrongStr, 0));
        }
      }
    } else {
      return const Left(NetworkFailure(
          noInternetConnection, HttpStatus.networkAuthenticationRequired));
    }
  }

  @override
  Future<Either<Failure, PropertyDetailModel>> getPropertyDetails(
      {String? uid}) async {
    if (await networkInfo.isConnected) {
      try {
        final PropertyDetailModel propertyDetailModel =
            await propertyDataSource.fetchPropertiesDetails(uid);
        return Right(propertyDetailModel);
      } catch (e) {
        if (e is DioException) {
          return Left(ServerFailure(
              (e.response?.data == null) ? e.message : e.response?.data,
              e.response?.statusCode));
        } else {
          return const Left(ServerFailure(somethingWentWrongStr, 0));
        }
      }
    } else {
      return const Left(NetworkFailure(
          noInternetConnection, HttpStatus.networkAuthenticationRequired));
    }
  }
}
