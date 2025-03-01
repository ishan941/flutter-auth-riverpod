import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nepstayapp/features/Auth/data/model/auth_model/user_model.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    String? gender,
    @Default(false) bool rememberMe,
    @Default(false) bool isSuccess,
    @Default(false) bool isPasswordChange,
  }) = _AuthState;

  const factory AuthState.idle({
    String? gender,
    @Default(false) bool rememberMe,
    @Default(false) bool isSuccess,
    @Default(false) bool isPasswordChange,
  }) = Idle;

  const factory AuthState.loading({
    String? gender,
    @Default(false) bool rememberMe,
    @Default(false) bool isSuccess,
    @Default(false) bool isPasswordChange,
  }) = Loading;

  const factory AuthState.authenticated({
    UserModel? user,
    AuthenticationResponse? authResponse,
    String? gender,
    @Default(false) bool rememberMe,
    @Default(false) bool isSuccess,
    @Default(false) bool isPasswordChange,
  }) = Authenticated;

  const factory AuthState.unauthenticated({
    String? gender,
    @Default(false) bool rememberMe,
    @Default(false) bool isSuccess,
    @Default(false) bool isPasswordChange,
  }) = Unauthenticated;

  const factory AuthState.error(
    String message, {
    String? gender,
    @Default(false) bool rememberMe,
    @Default(false) bool isSuccess,
    @Default(false) bool isPasswordChange,
  }) = Error;

  const factory AuthState.otpVerified({
    String? gender,
    @Default(false) bool rememberMe,
    @Default(false) bool isSuccess,
    @Default(false) bool isPasswordChange,
  }) = OtpVerified;

  const factory AuthState.changePassword({
    String? gender,
    @Default(false) bool rememberMe,
    @Default(false) bool isSuccess,
    @Default(false) bool isPasswordChange,
  }) = ChangePassword;
}
