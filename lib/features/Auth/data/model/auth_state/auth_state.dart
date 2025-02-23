import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nepstayapp/features/Auth/data/model/auth_model/user_model.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    String? gender, // Add gender here
    @Default(false) bool rememberMe,
    @Default(false) bool isSuccess,
  }) = _AuthState;

  const factory AuthState.idle({
    String? gender, // Add gender here
    @Default(false) bool rememberMe,
    @Default(false) bool isSuccess,
  }) = Idle;

  const factory AuthState.loading({
    String? gender, // Add gender here
    @Default(false) bool rememberMe,
    @Default(false) bool isSuccess,
  }) = Loading;

  const factory AuthState.authenticated({
    UserModel? user,
    AuthenticationResponse? authResponse,
    String? gender, // Add gender here
    @Default(false) bool rememberMe,
    @Default(false) bool isSuccess,
  }) = Authenticated;

  const factory AuthState.unauthenticated({
    String? gender, // Add gender here
    @Default(false) bool rememberMe,
    @Default(false) bool isSuccess,
  }) = Unauthenticated;

  const factory AuthState.error(
    String message, {
    String? gender, // Add gender here
    @Default(false) bool rememberMe,
    @Default(false) bool isSuccess,
  }) = Error;

  const factory AuthState.otpVerified({
    String? gender, // Add gender here
    @Default(false) bool rememberMe,
    @Default(false) bool isSuccess,
  }) = OtpVerified;
}
