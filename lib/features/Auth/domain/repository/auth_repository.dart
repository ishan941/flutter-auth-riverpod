import 'package:nepstayapp/features/Auth/data/model/auth_model/user_model.dart';

abstract class AuthRepository {
  Future<AuthenticationResponse> login(
      AuthenticationRequest authenticationRequest);
  Future<Map<String, dynamic>> signUpUser(UserModel userModel);
  Future<bool> verifyOtp(String email, String verificationCode);
}
