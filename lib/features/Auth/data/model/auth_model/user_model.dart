import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    String? name,
    String? email,
    String? password,
    DateTime? createdAt,
    String? role,
    String? roleName,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class Role with _$Role {
  const factory Role({
    String? roleName,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}

@freezed
class ImageModel with _$ImageModel {
  const factory ImageModel({
    int? id,
    String? imageUrl,
    String? publicId,
    String? imageType,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);
}

@freezed
class AuthenticationRequest with _$AuthenticationRequest {
  const factory AuthenticationRequest({
    required String email,
    required String password,
    // String? fcmToken,
  }) = _AuthenticationRequest;

  factory AuthenticationRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationRequestFromJson(json);
}

@freezed
class AuthenticationResponse with _$AuthenticationResponse {
  const factory AuthenticationResponse({
    required String accessToken,
    required String refreshToken,
    required String role,
    required String userId,
    String? imageUrl,
  }) = _AuthenticationResponse;

  factory AuthenticationResponse.fromJson(Map<String, dynamic> json) {
    return _AuthenticationResponse(
        accessToken: json['AccessToken'] as String? ?? '',
        refreshToken: json['RefreshToken'] as String? ?? '',
        role: json['role'] as String? ?? '',
        imageUrl: json['imageUrl'] as String?,
        userId: json['userId'] as String);
  }
}

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = UserInitial;
  const factory UserState.loading() = UserLoading;
  const factory UserState.loaded(UserModel user) = UserLoaded;
  const factory UserState.error(String message) = UserError;
}
