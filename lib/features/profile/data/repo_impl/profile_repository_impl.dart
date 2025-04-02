import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:nepstayapp/core/error/failure.dart';
import 'package:nepstayapp/core/networkinfo/network_info.dart';
import 'package:nepstayapp/core/token_service/repository/base_repository.dart';
import 'package:nepstayapp/core/token_service/services/token_service.dart';
import 'package:nepstayapp/core/utils/string_util.dart';
import 'package:nepstayapp/features/Auth/data/model/auth_model/user_model.dart';
import 'package:nepstayapp/features/profile/data/datasource_impl/profile_datasource.dart';
import 'package:nepstayapp/features/profile/data/model/kyc/kyc_model.dart';
import 'package:nepstayapp/features/profile/data/model/profile_model.dart';
import 'package:nepstayapp/features/profile/data/model/user_details.dart';
import 'package:nepstayapp/features/profile/domain/repository/profile_repository.dart';

class ProfileRepositoryImpl extends BaseRepository
    implements ProfileRepository {
  final ProfileDatasource profileDatasource;
  final NetworkInfo networkInfo;
  final TokenService tService;

  ProfileRepositoryImpl({
    required this.networkInfo,
    required this.profileDatasource,
    required this.tService,
  }) : super(tokenService: tService);

  @override
  Future<UserDetails> getUserDetails() async {
    if (!await networkInfo.isConnected) {
      throw Exception("No internet connection");
    }
    try {
      return await profileDatasource.getUserDetails(accessToken, userId);
    } catch (e) {
      throw Exception("Failed to fetch user details: $e");
    }
  }

  @override
  Future<bool> updateUserDetails(UserDetails userDeatils) async {
    if (!await networkInfo.isConnected) {
      throw Exception("No internet connection");
    }
    try {
      return await profileDatasource.updateUserDetails(
          accessToken, userId, userDeatils);
    } catch (e) {
      throw Exception("Failed to fetch user details: $e");
    }
  }

  @override
  Future<bool> verifyKycRepo(PostKYCModel kyc) async {
    if (!await networkInfo.isConnected) {
      throw Exception("No internet Connection");
    }
    try {
      return await profileDatasource.verifyKyc(kyc: kyc, token: accessToken);
    } catch (e) {
      throw Exception("Failed to submit: $e");
    }
  }

  @override
  Future<Either<Failure, ImageModel>> uploadProfileImage(
      {UploadImageModel? image}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await profileDatasource.uploadImage(image!, accessToken);
        return Right(response);
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
      return const Left(NetworkFailure(noInternetConnectionStr, 0));
    }
  }
}
