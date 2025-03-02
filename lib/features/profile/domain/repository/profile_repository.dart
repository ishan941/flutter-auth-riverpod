import 'package:nepstayapp/features/profile/data/model/user_details.dart';

abstract class ProfileRepository {
  Future<UserDetails> getUserDetails(int id);
  Future<bool> updateUserDetails(int userId, UserDetails userDeatils);
}
