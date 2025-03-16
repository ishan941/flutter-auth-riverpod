// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kyc_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KycModelImpl _$$KycModelImplFromJson(Map<String, dynamic> json) =>
    _$KycModelImpl(
      kycId: json['kycId'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      vehicleType: json['vehicleType'] as String,
      vehicleNumber: json['vehicleNumber'] as String,
      userModel: UserModel.fromJson(json['userModel'] as Map<String, dynamic>),
      isKycVerified: json['isKycVerified'] as bool? ?? false,
      status: json['status'] as String? ?? "pending",
    );

Map<String, dynamic> _$$KycModelImplToJson(_$KycModelImpl instance) =>
    <String, dynamic>{
      'kycId': instance.kycId,
      'images': instance.images,
      'vehicleType': instance.vehicleType,
      'vehicleNumber': instance.vehicleNumber,
      'userModel': instance.userModel,
      'isKycVerified': instance.isKycVerified,
      'status': instance.status,
    };
