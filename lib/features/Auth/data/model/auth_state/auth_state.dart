import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nepstayapp/features/Auth/data/model/auth_model/user_model.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    String? gender,
    @Default(false) bool rememberMe,
  }) = _AuthState;

  const factory AuthState.idle({
    String? gender,
    @Default(false) bool rememberMe,
  }) = Idle;

  const factory AuthState.loading({
    String? gender,
    @Default(false) bool rememberMe,
  }) = Loading;

  const factory AuthState.authenticated(
    UserModel user, {
    String? gender,
    @Default(false) bool rememberMe,
  }) = Authenticated;

  const factory AuthState.unauthenticated({
    String? gender,
    @Default(false) bool rememberMe,
  }) = Unauthenticated;

  const factory AuthState.error(
    String message, {
    String? gender,
    @Default(false) bool rememberMe,
  }) = Error;
}
