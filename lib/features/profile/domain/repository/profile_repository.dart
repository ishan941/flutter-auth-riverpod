import 'package:nepstayapp/features/profile/data/model/kyc/kyc_model.dart';
import 'package:nepstayapp/features/profile/data/model/user_details.dart';

abstract class ProfileRepository {
  Future<UserDetails> getUserDetails();
  Future<bool> updateUserDetails(UserDetails userDeatils);
  Future<bool> verifyKycRepo(KycModel kyc);
}
