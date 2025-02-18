import 'package:dartz/dartz.dart';
import 'package:nepstayapp/core/error/failure.dart';
import 'package:nepstayapp/features/Home/data/model/property_model.dart';

abstract class PropertyRepository {
  Future<Either<Failure, PropertyResponse>> getProperties();
  Future<Either<Failure, PropertyDetailModel>> getPropertyDetails(
      {String? uid});
}
