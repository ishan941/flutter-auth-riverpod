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
      role: json['role'] == null
          ? null
          : Role.fromJson(json['role'] as Map<String, dynamic>),
      roleName: json['roleName'] as String?,
      image: json['image'] == null
          ? null
          : ImageModel.fromJson(json['image'] as Map<String, dynamic>),
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
      'image': instance.image,
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
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$ImageModelImplToJson(_$ImageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };
