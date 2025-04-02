// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      contactNumber: (json['contactNumber'] as num?)?.toInt(),
      gender: json['gender'] as String?,
      city: json['city'] as String?,
      street: json['street'] as String?,
      district: json['district'] as String?,
      isVerified: json['isVerified'] as bool? ?? false,
      verificationCode: json['verificationCode'] as String?,
      verificationCodeExpiresAt: json['verificationCodeExpiresAt'] == null
          ? null
          : DateTime.parse(json['verificationCodeExpiresAt'] as String),
      isEmailVerified: json['isEmailVerified'] as bool? ?? false,
      role: json['role'] as String?,
      roleName: json['roleName'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'contactNumber': instance.contactNumber,
      'gender': instance.gender,
      'city': instance.city,
      'street': instance.street,
      'district': instance.district,
      'isVerified': instance.isVerified,
      'verificationCode': instance.verificationCode,
      'verificationCodeExpiresAt':
          instance.verificationCodeExpiresAt?.toIso8601String(),
      'isEmailVerified': instance.isEmailVerified,
      'role': instance.role,
      'roleName': instance.roleName,
      'images': instance.images,
    };

_$RoleImpl _$$RoleImplFromJson(Map<String, dynamic> json) => _$RoleImpl(
      roleName: json['roleName'] as String?,
    );

Map<String, dynamic> _$$RoleImplToJson(_$RoleImpl instance) =>
    <String, dynamic>{
      'roleName': instance.roleName,
    };

_$ImageModelImpl _$$ImageModelImplFromJson(Map<String, dynamic> json) =>
    _$ImageModelImpl(
      id: (json['id'] as num?)?.toInt(),
      imageUrl: json['imageUrl'] as String?,
      publicId: json['publicId'] as String?,
      imageType: json['imageType'] as String?,
    );

Map<String, dynamic> _$$ImageModelImplToJson(_$ImageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'publicId': instance.publicId,
      'imageType': instance.imageType,
    };

_$AuthenticationRequestImpl _$$AuthenticationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      fcmToken: json['fcmToken'] as String?,
    );

Map<String, dynamic> _$$AuthenticationRequestImplToJson(
        _$AuthenticationRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'fcmToken': instance.fcmToken,
    };
