import 'package:nepstayapp/features/Auth/data/model/auth_model/user_model.dart';
import 'package:nepstayapp/features/Auth/domain/repository/auth_repository.dart';

class LoginUseCase {
  final AuthRepository authRepository;

  LoginUseCase({required this.authRepository});

  Future<AuthenticationResponse> execute(AuthenticationRequest authentication) {
    return authRepository.login(authentication);
  }
}

class SignUpUserUseCase {
  final AuthRepository authRepository;
  SignUpUserUseCase({required this.authRepository});
  Future<Map<String, dynamic>> execute(UserModel userModel) {
    return authRepository.signUpUser(userModel);
  }
}

class VerifyEmailUseCase {
  final AuthRepository authRepository;

  VerifyEmailUseCase({required this.authRepository});

  Future<bool> execute(String email, String verificationCode) async {
    return await authRepository.verifyOtp(email, verificationCode);
  }
}

class SendOtpTpEmailUseCase {
  final AuthRepository authRepository;

  SendOtpTpEmailUseCase({required this.authRepository});

  Future<bool> execute(String email) async {
    return await authRepository.sendOtpToEmailRepo(email);
  }
}
