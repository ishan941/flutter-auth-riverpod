import 'package:nepstayapp/features/Auth/data/model/auth_model/user_model.dart';
import 'package:nepstayapp/features/Auth/domain/repository/auth_repository.dart';
//
// Login Use Case

class LoginUseCase {
  final AuthRepository authRepository;

  LoginUseCase({required this.authRepository});

  Future<AuthenticationResponse> execute(AuthenticationRequest authentication) {
    return authRepository.login(authentication);
  }
}

//
// Sign up
class SignUpUserUseCase {
  final AuthRepository authRepository;
  SignUpUserUseCase({required this.authRepository});
  Future<Map<String, dynamic>> execute(UserModel userModel) {
    return authRepository.signUpUser(userModel);
  }
}

//
// Verify email
class VerifyEmailUseCase {
  final AuthRepository authRepository;

  VerifyEmailUseCase({required this.authRepository});

  Future<bool> execute(String email, String verificationCode) async {
    return await authRepository.verifyOtp(email, verificationCode);
  }
}

//
// Send otp to email
class SendOtpTpEmailUseCase {
  final AuthRepository authRepository;

  SendOtpTpEmailUseCase({required this.authRepository});

  Future<bool> execute(String email) async {
    return await authRepository.sendOtpToEmailRepo(email);
  }

  Future<bool> changePassword(String email, String newPassword) async {
    return await authRepository.changePasswordRepo(email, newPassword);
  }
}

// //
// // chnage password
// class ChangePasswordUseCase {
//   final AuthRepository authRepository;
//   ChangePasswordUseCase({required this.authRepository});

//   Future<bool> changePassword(String email) async {
//     return await authRepository.changePasswordRepo(email);
//   }
// }
