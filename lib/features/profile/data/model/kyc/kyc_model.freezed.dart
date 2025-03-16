// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KycModel _$KycModelFromJson(Map<String, dynamic> json) {
  return _KycModel.fromJson(json);
}

/// @nodoc
mixin _$KycModel {
  String get kycId => throw _privateConstructorUsedError;
  List<ImageModel> get images => throw _privateConstructorUsedError;
  String get vehicleType => throw _privateConstructorUsedError;
  String get vehicleNumber => throw _privateConstructorUsedError;
  UserModel get userModel => throw _privateConstructorUsedError;
  bool get isKycVerified => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KycModelCopyWith<KycModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycModelCopyWith<$Res> {
  factory $KycModelCopyWith(KycModel value, $Res Function(KycModel) then) =
      _$KycModelCopyWithImpl<$Res, KycModel>;
  @useResult
  $Res call(
      {String kycId,
      List<ImageModel> images,
      String vehicleType,
      String vehicleNumber,
      UserModel userModel,
      bool isKycVerified,
      String status});

  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class _$KycModelCopyWithImpl<$Res, $Val extends KycModel>
    implements $KycModelCopyWith<$Res> {
  _$KycModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kycId = null,
    Object? images = null,
    Object? vehicleType = null,
    Object? vehicleNumber = null,
    Object? userModel = null,
    Object? isKycVerified = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      kycId: null == kycId
          ? _value.kycId
          : kycId // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      vehicleType: null == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleNumber: null == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
      isKycVerified: null == isKycVerified
          ? _value.isKycVerified
          : isKycVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get userModel {
    return $UserModelCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KycModelImplCopyWith<$Res>
    implements $KycModelCopyWith<$Res> {
  factory _$$KycModelImplCopyWith(
          _$KycModelImpl value, $Res Function(_$KycModelImpl) then) =
      __$$KycModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String kycId,
      List<ImageModel> images,
      String vehicleType,
      String vehicleNumber,
      UserModel userModel,
      bool isKycVerified,
      String status});

  @override
  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$$KycModelImplCopyWithImpl<$Res>
    extends _$KycModelCopyWithImpl<$Res, _$KycModelImpl>
    implements _$$KycModelImplCopyWith<$Res> {
  __$$KycModelImplCopyWithImpl(
      _$KycModelImpl _value, $Res Function(_$KycModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kycId = null,
    Object? images = null,
    Object? vehicleType = null,
    Object? vehicleNumber = null,
    Object? userModel = null,
    Object? isKycVerified = null,
    Object? status = null,
  }) {
    return _then(_$KycModelImpl(
      kycId: null == kycId
          ? _value.kycId
          : kycId // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      vehicleType: null == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleNumber: null == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
      isKycVerified: null == isKycVerified
          ? _value.isKycVerified
          : isKycVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KycModelImpl implements _KycModel {
  _$KycModelImpl(
      {required this.kycId,
      final List<ImageModel> images = const [],
      required this.vehicleType,
      required this.vehicleNumber,
      required this.userModel,
      this.isKycVerified = false,
      this.status = "pending"})
      : _images = images;

  factory _$KycModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KycModelImplFromJson(json);

  @override
  final String kycId;
  final List<ImageModel> _images;
  @override
  @JsonKey()
  List<ImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String vehicleType;
  @override
  final String vehicleNumber;
  @override
  final UserModel userModel;
  @override
  @JsonKey()
  final bool isKycVerified;
  @override
  @JsonKey()
  final String status;

  @override
  String toString() {
    return 'KycModel(kycId: $kycId, images: $images, vehicleType: $vehicleType, vehicleNumber: $vehicleNumber, userModel: $userModel, isKycVerified: $isKycVerified, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycModelImpl &&
            (identical(other.kycId, kycId) || other.kycId == kycId) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                other.vehicleNumber == vehicleNumber) &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel) &&
            (identical(other.isKycVerified, isKycVerified) ||
                other.isKycVerified == isKycVerified) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      kycId,
      const DeepCollectionEquality().hash(_images),
      vehicleType,
      vehicleNumber,
      userModel,
      isKycVerified,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KycModelImplCopyWith<_$KycModelImpl> get copyWith =>
      __$$KycModelImplCopyWithImpl<_$KycModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KycModelImplToJson(
      this,
    );
  }
}

abstract class _KycModel implements KycModel {
  factory _KycModel(
      {required final String kycId,
      final List<ImageModel> images,
      required final String vehicleType,
      required final String vehicleNumber,
      required final UserModel userModel,
      final bool isKycVerified,
      final String status}) = _$KycModelImpl;

  factory _KycModel.fromJson(Map<String, dynamic> json) =
      _$KycModelImpl.fromJson;

  @override
  String get kycId;
  @override
  List<ImageModel> get images;
  @override
  String get vehicleType;
  @override
  String get vehicleNumber;
  @override
  UserModel get userModel;
  @override
  bool get isKycVerified;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$KycModelImplCopyWith<_$KycModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
