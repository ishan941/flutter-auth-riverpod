// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDetailsImpl _$$UserDetailsImplFromJson(Map<String, dynamic> json) =>
    _$UserDetailsImpl(
      id: (json['id'] as num?)?.toInt(),
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      contactNumber: json['contactNumber'] as String?,
      gender: json['gender'] as String?,
      city: json['city'] as String?,
      street: json['street'] as String?,
      district: json['district'] as String?,
      fcmToken: json['fcmToken'] as String?,
      verificationCode: json['verificationCode'] as String?,
      verificationCodeExpiresAt: json['verificationCodeExpiresAt'] == null
          ? null
          : DateTime.parse(json['verificationCodeExpiresAt'] as String),
      emailVerified: json['emailVerified'] as bool? ?? false,
      verified: json['verified'] as bool? ?? false,
      accountNonExpired: json['accountNonExpired'] as bool? ?? true,
      accountNonLocked: json['accountNonLocked'] as bool? ?? true,
      credentialsNonExpired: json['credentialsNonExpired'] as bool? ?? true,
      enabled: json['enabled'] as bool? ?? true,
      roleName: json['roleName'] as String?,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UserDetailsImplToJson(_$UserDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'contactNumber': instance.contactNumber,
      'gender': instance.gender,
      'city': instance.city,
      'street': instance.street,
      'district': instance.district,
      'fcmToken': instance.fcmToken,
      'verificationCode': instance.verificationCode,
      'verificationCodeExpiresAt':
          instance.verificationCodeExpiresAt?.toIso8601String(),
      'emailVerified': instance.emailVerified,
      'verified': instance.verified,
      'accountNonExpired': instance.accountNonExpired,
      'accountNonLocked': instance.accountNonLocked,
      'credentialsNonExpired': instance.credentialsNonExpired,
      'enabled': instance.enabled,
      'roleName': instance.roleName,
      'images': instance.images,
    };
