import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/core/utils/shared_preference.dart';
import 'package:nepstayapp/features/Auth/data/model/auth_model/user_model.dart';
import 'package:nepstayapp/features/Auth/data/model/auth_state/auth_state.dart';
import 'package:nepstayapp/features/Auth/domain/service/user_hive_service.dart';
import 'package:nepstayapp/features/Auth/domain/usecase/login_use_case.dart';
import 'package:nepstayapp/injection_container.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final LoginUseCase loginUseCase;
  final SignUpUserUseCase signUpUserUseCase;
  final SharedPref sharedPref;

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController contactNumberController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController streetController = TextEditingController();
  final TextEditingController districtController = TextEditingController();
  final TextEditingController roleController =
      TextEditingController(text: "USER");
  bool rememberMe = false;

  void setGender(String? gender) {
    genderController.text = gender.toString();
  }

  AuthNotifier({
    required this.signUpUserUseCase,
    required this.loginUseCase,
    required this.sharedPref,
  }) : super(const AuthState.idle());

  String _mapErrorToMessage(String error) {
    if (error.contains('401')) {
      return 'Invalid credentials. Please try again.';
    } else if (error.contains('Network')) {
      return 'Network error. Check your connection.';
    }
    return 'An unexpected error occurred.';
  }

  // Future<void> login(String email, String password) async {
  //   state = const AuthState.loading();

  //   try {
  //     state = AuthState.loading(rememberMe: state.rememberMe);
  //     final userData = await loginUseCase.execute(email, password);
  //     final user = userData['user'] as UserModel?;
  //     final accessToken = userData['accessToken'] as String;
  //     final refreshToken = userData['refreshToken'] as String;

  //     if (user != null) {
  //       final authModel = AuthModel(
  //         access: accessToken,
  //         refresh: refreshToken,
  //         user: user,
  //       );
  //       state = AuthState.authenticated(authModel);
  //     } else {
  //       state = const AuthState.error("User data is null");
  //     }
  //   } catch (e) {
  //     state = AuthState.error(e.toString());
  //   }
  // }

  // Future<void> login(String email, String password) async {
  //   state = const AuthState.loading();
  //   try {
  //     final result = await authDataSource.login(email, password);
  //     final user = result['user'] as UserModel?;
  //     final accessToken = result['accessToken'] as String;
  //     final refreshToken = result['refreshToken'] as String;

  //     if (user != null) {
  //       final authModel = AuthModel(
  //         access: accessToken,
  //         refresh: refreshToken,
  //         user: user,
  //       );
  //       state = AuthState.authenticated(authModel);
  //     } else {
  //       state = const AuthState.error("User data is null");a
  //     }
  //   } catch (e) {
  //     state = AuthState.error(e.toString());
  //   }
  // }

  Future<void> signUpUser() async {
    try {
      state = const AuthState.loading();

      final userModel = UserModel(
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        email: emailController.text,
        password: passwordController.text,
        contactNumber: int.tryParse(contactNumberController.text) ??
            0, // Ensuring integer conversion
        gender: genderController.text,
        city: cityController.text,
        street: streetController.text,
        district: districtController.text,
        role: Role(roleName: roleController.text),
      );

      final userData = await signUpUserUseCase.execute(userModel);
      final user = UserModel.fromJson(userData);

      state = AuthState.authenticated(user);
    } catch (error) {
      state = AuthState.error(error.toString());
    }
  }

  Future<void> fetchUser() async {
    final userHiveService = UserHiveService();
    final user = await userHiveService.getUserFromHive();
    if (user != null) {
      print('User: ${user.username}, Email: ${user.email}');
    } else {
      print('No user data found in Hive.');
    }
  }

  Future<void> logout() async {
    state = AuthState.loading(rememberMe: state.rememberMe);

    final userHiveService = UserHiveService();
    await sharedPref.clearPreferenceData();
    await userHiveService.clearUserData();
    state = AuthState.unauthenticated(rememberMe: state.rememberMe);
    print('User data cleared from Hive.');
  }

  // void toggleRememberMe(bool value) async {
  //   await sharedPref.saveDataToPreference('remember_me', value);
  //   state = state.when(

  //     idle: (_) => AuthState.idle(rememberMe: value),
  //     loading: (_) => AuthState.loading(rememberMe: value),
  //     authenticated: (user, _) =>
  //         AuthState.authenticated(user, rememberMe: value),
  //     unauthenticated: (_) => AuthState.unauthenticated(rememberMe: value),
  //     error: (message, _) => AuthState.error(message, rememberMe: value),
  //   );
  // }
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
    loginUseCase: LoginUseCase(authRepository: sl()),
    signUpUserUseCase: SignUpUserUseCase(authRepository: sl()),
    sharedPref: sl(),
  ),
);
