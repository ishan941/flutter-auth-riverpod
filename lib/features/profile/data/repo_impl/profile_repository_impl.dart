import 'package:nepstayapp/core/networkinfo/network_info.dart';
import 'package:nepstayapp/core/token_service/repository/base_repository.dart';
import 'package:nepstayapp/core/token_service/services/token_service.dart';
import 'package:nepstayapp/features/profile/data/datasource_impl/profile_datasource.dart';
import 'package:nepstayapp/features/profile/data/model/kyc/kyc_model.dart';
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
  Future<bool> verifyKycRepo(KycModel kyc) async {
    if (!await networkInfo.isConnected) {
      throw Exception("No internet Connection");
    }
    try {
      return await profileDatasource.verifyKyc(kyc);
    } catch (e) {
      throw Exception("Failed to submit: $e");
    }
  }
}
