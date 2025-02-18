import 'package:dartz/dartz.dart';
import 'package:nepstayapp/core/error/failure.dart';
import 'package:nepstayapp/core/usecase/usecase.dart';
import 'package:nepstayapp/features/Home/data/model/property_model.dart';
import 'package:nepstayapp/features/Home/domain/repository/property_repository.dart';

class GetPropertyDetailUseCase extends UseCase<PropertyDetailModel, String?> {
  final PropertyRepository propertyRepository;
  GetPropertyDetailUseCase({required this.propertyRepository});

  @override
  Future<Either<Failure, PropertyDetailModel>> call(String? uid) async {
    return await propertyRepository.getPropertyDetails(uid: uid);
  }
}
