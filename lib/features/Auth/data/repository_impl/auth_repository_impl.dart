import 'package:nepstayapp/core/networkinfo/network_info.dart';
import 'package:nepstayapp/features/Auth/data/datasource/auth_data_source.dart';
import 'package:nepstayapp/features/Auth/data/model/auth_model/user_model.dart';
import 'package:nepstayapp/features/Auth/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource authDataSource;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl({
    required this.authDataSource,
    required this.networkInfo,
  });

  @override
  Future<Map<String, dynamic>> signUpUser(UserModel userMode) async {
    if (!await networkInfo.isConnected) {
      throw Exception('No Internet Connection');
    }
    try {
      return await authDataSource.signUpUser(userMode);
    } catch (e) {
      // Log the error and rethrow it or wrap it in a custom exception
      print("Error in sign-up: $e");
      throw Exception('Failed to sign up. Please try again later.');
    }
  }

  @override
  Future<bool> verifyOtp(String email, String verificationCode) async {
    try {
      final result = await authDataSource.verifyOtp(email, verificationCode);
      return result;
    } catch (error) {
      throw Exception('OTP verification failed');
    }
  }

  @override
  Future<AuthenticationResponse> login(
      AuthenticationRequest authenticationRequest) async {
    if (!await networkInfo.isConnected) {
      throw Exception('No Internet Connection');
    }
    try {
      return await authDataSource.login(authenticationRequest);
    } catch (e) {
      print("Error in login: $e");
      throw Exception('Failed to log in. Please try again later.');
    }
  }

  @override
  Future<bool> sendOtpToEmailRepo(String email) async {
    try {
      final result = await authDataSource.verifyEmail(email);
      return result;
    } catch (error) {
      throw Exception('OTP verification failed $error');
    }
  }
}
