import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required int contactNumber,
    String? gender,
    String? city,
    String? street,
    String? district,
    @Default(false) bool isVerified,
    String? verificationCode,
    DateTime? verificationCodeExpiresAt,
    @Default(false) bool isEmailVerified,
    Role? role,
    String? roleName,
    ImageModel? image,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class Role with _$Role {
  const factory Role({
    required String roleName,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}

@freezed
class ImageModel with _$ImageModel {
  const factory ImageModel({
    required int id,
    required String url,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);
}

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = UserInitial;
  const factory UserState.loading() = UserLoading;
  const factory UserState.loaded(UserModel user) = UserLoaded;
  const factory UserState.error(String message) = UserError;
}
