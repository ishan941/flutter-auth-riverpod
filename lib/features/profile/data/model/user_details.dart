import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_details.freezed.dart';
part 'user_details.g.dart';

@freezed
class UserDetails with _$UserDetails {
  const factory UserDetails({
    int? id,
    String? firstName,
    String? lastName,
    String? email,
    String? password,
    String? contactNumber,
    String? gender,
    String? city,
    String? street,
    String? district,
    @JsonKey(name: 'fcmtoken') String? fcmToken,
    String? verificationCode,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    DateTime? verificationCodeExpiresAt,
    @Default(false) bool emailVerified,
    @Default(false) bool verified,
    @Default(true) bool accountNonExpired,
    @Default(true) bool accountNonLocked,
    @Default(true) bool credentialsNonExpired,
    @Default(true) bool enabled,
    String? roleName,
    @Default([]) List<ImageModel> images,
  }) = _UserDetails;

  factory UserDetails.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsFromJson(json);
}

DateTime? _dateTimeFromJson(String? date) =>
    date == null ? null : DateTime.parse(date);

String? _dateTimeToJson(DateTime? date) => date?.toIso8601String();

@freezed
class ImageModel with _$ImageModel {
  const factory ImageModel({
    int? id,
    @JsonKey(name: 'imageUrl') String? url,
    String? publicId,
    String? imageType,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);
}

@freezed
class UserDetailsState with _$UserDetailsState {
  const factory UserDetailsState.initial() = UserDetailsInitial;
  const factory UserDetailsState.loading() = UserDetailsLoading;
  const factory UserDetailsState.loaded(
      {required UserDetails? user, bool? isSuccess}) = UserDetailsLoaded;
  const factory UserDetailsState.error(String message) = UserDetailsError;
}
