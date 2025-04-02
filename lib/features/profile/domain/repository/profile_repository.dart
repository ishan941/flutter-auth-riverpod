import 'package:dartz/dartz.dart';
import 'package:nepstayapp/core/error/failure.dart';
import 'package:nepstayapp/features/Auth/data/model/auth_model/user_model.dart';
import 'package:nepstayapp/features/profile/data/model/kyc/kyc_model.dart';
import 'package:nepstayapp/features/profile/data/model/profile_model.dart';
import 'package:nepstayapp/features/profile/data/model/user_details.dart';

abstract class ProfileRepository {
  Future<UserDetails> getUserDetails();
  Future<bool> updateUserDetails(UserDetails userDeatils);
  Future<bool> verifyKycRepo(PostKYCModel kyc);
  Future<Either<Failure, ImageModel>> uploadProfileImage(
      {UploadImageModel image});
}
