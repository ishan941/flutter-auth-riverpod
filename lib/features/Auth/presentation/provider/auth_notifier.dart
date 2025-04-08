import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/core/error/exception_error.dart';
import 'package:nepstayapp/core/token_service/services/token_service.dart';
import 'package:nepstayapp/core/utils/shared_preference.dart';
import 'package:nepstayapp/features/Auth/data/model/auth_model/user_model.dart';
import 'package:nepstayapp/features/Auth/data/model/auth_state/auth_state.dart';
import 'package:nepstayapp/features/Auth/domain/service/user_hive_service.dart';
import 'package:nepstayapp/features/Auth/domain/usecase/login_use_case.dart';
import 'package:nepstayapp/injection_container.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final LoginUseCase loginUseCase;
  final SignUpUserUseCase signUpUserUseCase;
  final VerifyEmailUseCase verifyEmailUseCase;
  final SendOtpTpEmailUseCase sendOtpTpEmailUseCase;
  final SharedPref sharedPref;
  final TokenService service;
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController contactNumberController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController streetController = TextEditingController();
  final TextEditingController districtController = TextEditingController();
  final TextEditingController roleController =
      TextEditingController(text: "USER");
  bool rememberMe = false;
  void setGender(String? gender) {
    state = state.copyWith(gender: gender);
  }

  AuthNotifier({
    required this.service,
    required this.verifyEmailUseCase,
    required this.signUpUserUseCase,
    required this.loginUseCase,
    required this.sharedPref,
    required this.sendOtpTpEmailUseCase,
  }) : super(const AuthState.idle());

  //
// Signup user
  Future<void> signUpUser() async {
    try {
      state = const AuthState.loading();

      final userModel = UserModel(
          name: firstNameController.text,
          email: emailController.text,
          password: passwordController.text,
          role: "User",
          createdAt: DateTime.now());

      final userData = await signUpUserUseCase.execute(userModel);
      final user = UserModel.fromJson(userData);

      state = AuthState.authenticated(user: user, isSuccess: true);
    } catch (error) {
      String errorMessage = "An unexpected error occurred"; // Default message

      if (error is DioException) {
        if (error.response != null && error.response?.data is Map) {
          errorMessage = error.response?.data['message'] ?? errorMessage;
        } else {
          errorMessage = error.message ?? errorMessage;
        }
      } else if (error is ServerException) {
        errorMessage = error.message ?? errorMessage;
      }

      state = AuthState.error(errorMessage);
    }
  }

// login user
  Future<void> login() async {
    state = const AuthState.loading();
    // Get FCM Token
    String? fcmToken = await FirebaseMessaging.instance.getToken();
    AuthenticationRequest authenticationRequest = AuthenticationRequest(
      email: emailController.text,
      password: passwordController.text,
      // fcmToken: fcmToken ?? ""
    );

    try {
      final authResponse = await loginUseCase.execute(authenticationRequest);
      await sharedPref.saveDataToPreference(
          accessTokenKey, authResponse.accessToken);
      await sharedPref.saveDataToPreference(
          refreshTokenKey, authResponse.refreshToken);
      await sharedPref.saveDataToPreference(userIdKey, authResponse.userId);
      service.updateUserId(authResponse.userId);
      service.updateAccessToken(authResponse.accessToken);
      state = AuthState.loading(rememberMe: state.rememberMe);
      if (state.rememberMe) {
        await sharedPref.saveDataToPreference("email", emailController.text);
        await sharedPref.saveDataToPreference(
            "password", passwordController.text);
      }
      state = AuthState.authenticated(authResponse: authResponse);
      state = state.copyWith(isSuccess: true);
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

// verify email
  Future<void> verifyEmail(String email, String verificationCode) async {
    try {
      state = const AuthState.loading();

      final result = await verifyEmailUseCase.execute(email, verificationCode);
      if (result) {
        state = const AuthState.otpVerified(isSuccess: true);
      } else {
        state = const AuthState.error('OTP verification failed');
      }
    } catch (error) {
      throw Exception('OTP verification failed: ${error.toString()}');
    }
  }

// Send otp to email
  Future<void> sendOtpToEmail() async {
    try {
      state = const AuthState.loading();

      final result = await sendOtpTpEmailUseCase.execute(emailController.text);
      if (result) {
        state = const AuthState.otpVerified(isSuccess: true);
      } else {
        state = const AuthState.error('OTP verification failed');
      }
    } catch (error) {
      state = AuthState.error(error.toString());
    }
  }

// Change password
  Future<void> changePassword() async {
    try {
      state = const AuthState.loading();
      final result = await sendOtpTpEmailUseCase.changePassword(
          emailController.text, newPasswordController.text);
      if (result) {
        state = const AuthState.changePassword(isPasswordChange: true);
      } else {
        state = const AuthState.error('failed to change password');
      }
      // final result
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

// Log out
  Future<void> logout() async {
    state = AuthState.loading(rememberMe: state.rememberMe);

    final userHiveService = UserHiveService();
    await sharedPref.clearPreferenceData();
    await userHiveService.clearUserData();
    state = AuthState.unauthenticated(rememberMe: state.rememberMe);
  }

  void toggleRememberMe(bool value) async {
    await sharedPref.saveDataToPreference('remember_me', value);
    state = state.copyWith(rememberMe: value);
  }

  Future<void> fetchUser() async {
    final userHiveService = UserHiveService();
    final user = await userHiveService.getUserFromHive();
    if (user != null) {
    } else {}
  }

  Future<void> loadRememberMe() async {
    bool rememberMe = sharedPref.readBoolValFrmPreference('remember_me');
    if (rememberMe) {
      emailController.text = sharedPref.readStringValFrmPreference('email');
      passwordController.text =
          sharedPref.readStringValFrmPreference('password');
    }
    state = state.copyWith(rememberMe: rememberMe);
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
    loginUseCase: LoginUseCase(authRepository: sl()),
    signUpUserUseCase: SignUpUserUseCase(authRepository: sl()),
    sharedPref: sl(),
    verifyEmailUseCase: sl(),
    sendOtpTpEmailUseCase: sl(),
    service: sl(),
  ),
);
