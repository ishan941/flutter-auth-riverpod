import 'package:dartz/dartz.dart';
import 'package:nepstayapp/core/error/failure.dart';
import 'package:nepstayapp/core/usecase/usecase.dart';
import 'package:nepstayapp/features/Home/data/model/property_model.dart';
import 'package:nepstayapp/features/Home/domain/repository/property_repository.dart';

class GetPropertyUseCase extends UseCase<PropertyResponse, NoParams> {
  final PropertyRepository propertyRepository;
  GetPropertyUseCase({required this.propertyRepository});

  @override
  Future<Either<Failure, PropertyResponse>> call(NoParams params) async {
    return await propertyRepository.getProperties();
  }
}
