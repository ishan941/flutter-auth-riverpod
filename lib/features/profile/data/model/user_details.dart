import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nepstayapp/features/Auth/data/model/auth_model/user_model.dart';

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
    String? fcmToken,
    String? verificationCode,
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
class UserDetailsState with _$UserDetailsState {
  const factory UserDetailsState.initial(
      {String? imageUrl,
      PlatformFile? image,
      File? file,
      XFile? licenseImage,
      XFile? vechileImage,
      XFile? citizenshipFront,
      XFile? citizenshipBack,
      List<ImageModel>? imagesKyc}) = UserDetailsInitial;
  const factory UserDetailsState.loading(
      {String? imageUrl,
      PlatformFile? image,
      File? file,
      XFile? licenseImage,
      XFile? vechileImage,
      XFile? citizenshipFront,
      XFile? citizenshipBack,
      List<ImageModel>? imagesKyc}) = UserDetailsLoading;
  const factory UserDetailsState.loaded(
      {UserDetails? user,
      bool? isSuccess,
      XFile? licenseImage,
      XFile? vechileImage,
      XFile? citizenshipFront,
      XFile? citizenshipBack,
      String? imageUrl,
      File? file,
      List<ImageModel>? imagesKyc,
      PlatformFile? image}) = UserDetailsLoaded;
  const factory UserDetailsState.error(
      {String? message,
      File? file,
      XFile? licenseImage,
      XFile? vechileImage,
      XFile? citizenshipFront,
      XFile? citizenshipBack,
      String? imageUrl,
      PlatformFile? image,
      List<ImageModel>? imagesKyc}) = UserDetailsError;
  const factory UserDetailsState.success(
      {bool? isSuccess,
      String? imageUrl,
      File? file,
      XFile? licenseImage,
      XFile? vechileImage,
      XFile? citizenshipFront,
      XFile? citizenshipBack,
      PlatformFile? image,
      List<ImageModel>? imagesKyc}) = UserDetailsSuccess;
}
