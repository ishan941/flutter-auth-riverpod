import 'package:nepstayapp/features/Auth/data/model/auth_model/user_model.dart';
import 'package:nepstayapp/features/Auth/domain/repository/auth_repository.dart';

class LoginUseCase {
  final AuthRepository authRepository;

  LoginUseCase({required this.authRepository});

  // Future<Map<String, dynamic>> execute(String email, String password) {
  //   return authRepository.login(email, password);
  // }
}

class SignUpUserUseCase {
  final AuthRepository authRepository;
  SignUpUserUseCase({required this.authRepository});
  Future<Map<String, dynamic>> execute(UserModel userModel) {
    return authRepository.signUpUser(userModel);
  }
}
