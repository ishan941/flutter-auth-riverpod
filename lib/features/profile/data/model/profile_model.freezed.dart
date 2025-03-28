// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UploadImageModel {
  PlatformFile? get image => throw _privateConstructorUsedError;
  String? get profileType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadImageModelCopyWith<UploadImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadImageModelCopyWith<$Res> {
  factory $UploadImageModelCopyWith(
          UploadImageModel value, $Res Function(UploadImageModel) then) =
      _$UploadImageModelCopyWithImpl<$Res, UploadImageModel>;
  @useResult
  $Res call({PlatformFile? image, String? profileType});
}

/// @nodoc
class _$UploadImageModelCopyWithImpl<$Res, $Val extends UploadImageModel>
    implements $UploadImageModelCopyWith<$Res> {
  _$UploadImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? profileType = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
      profileType: freezed == profileType
          ? _value.profileType
          : profileType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadImageModelImplCopyWith<$Res>
    implements $UploadImageModelCopyWith<$Res> {
  factory _$$UploadImageModelImplCopyWith(_$UploadImageModelImpl value,
          $Res Function(_$UploadImageModelImpl) then) =
      __$$UploadImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlatformFile? image, String? profileType});
}

/// @nodoc
class __$$UploadImageModelImplCopyWithImpl<$Res>
    extends _$UploadImageModelCopyWithImpl<$Res, _$UploadImageModelImpl>
    implements _$$UploadImageModelImplCopyWith<$Res> {
  __$$UploadImageModelImplCopyWithImpl(_$UploadImageModelImpl _value,
      $Res Function(_$UploadImageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? profileType = freezed,
  }) {
    return _then(_$UploadImageModelImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
      profileType: freezed == profileType
          ? _value.profileType
          : profileType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UploadImageModelImpl implements _UploadImageModel {
  const _$UploadImageModelImpl({this.image, this.profileType});

  @override
  final PlatformFile? image;
  @override
  final String? profileType;

  @override
  String toString() {
    return 'UploadImageModel(image: $image, profileType: $profileType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImageModelImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.profileType, profileType) ||
                other.profileType == profileType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, profileType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImageModelImplCopyWith<_$UploadImageModelImpl> get copyWith =>
      __$$UploadImageModelImplCopyWithImpl<_$UploadImageModelImpl>(
          this, _$identity);
}

abstract class _UploadImageModel implements UploadImageModel {
  const factory _UploadImageModel(
      {final PlatformFile? image,
      final String? profileType}) = _$UploadImageModelImpl;

  @override
  PlatformFile? get image;
  @override
  String? get profileType;
  @override
  @JsonKey(ignore: true)
  _$$UploadImageModelImplCopyWith<_$UploadImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
