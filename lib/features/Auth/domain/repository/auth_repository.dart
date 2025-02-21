import 'package:nepstayapp/features/Auth/data/model/auth_model/user_model.dart';

abstract class AuthRepository {
  // Future<Map<String, dynamic>> login(String email, String password);
  Future<Map<String, dynamic>> signUpUser(UserModel userModel);
}
