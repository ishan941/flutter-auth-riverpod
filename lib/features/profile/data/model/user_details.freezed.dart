// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDetails _$UserDetailsFromJson(Map<String, dynamic> json) {
  return _UserDetails.fromJson(json);
}

/// @nodoc
mixin _$UserDetails {
  int? get id => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get contactNumber => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  String? get fcmToken => throw _privateConstructorUsedError;
  String? get verificationCode => throw _privateConstructorUsedError;
  DateTime? get verificationCodeExpiresAt => throw _privateConstructorUsedError;
  bool get emailVerified => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;
  bool get accountNonExpired => throw _privateConstructorUsedError;
  bool get accountNonLocked => throw _privateConstructorUsedError;
  bool get credentialsNonExpired => throw _privateConstructorUsedError;
  bool get enabled => throw _privateConstructorUsedError;
  String? get roleName => throw _privateConstructorUsedError;
  List<ImageModel> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailsCopyWith<UserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsCopyWith<$Res> {
  factory $UserDetailsCopyWith(
          UserDetails value, $Res Function(UserDetails) then) =
      _$UserDetailsCopyWithImpl<$Res, UserDetails>;
  @useResult
  $Res call(
      {int? id,
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
      bool emailVerified,
      bool verified,
      bool accountNonExpired,
      bool accountNonLocked,
      bool credentialsNonExpired,
      bool enabled,
      String? roleName,
      List<ImageModel> images});
}

/// @nodoc
class _$UserDetailsCopyWithImpl<$Res, $Val extends UserDetails>
    implements $UserDetailsCopyWith<$Res> {
  _$UserDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? contactNumber = freezed,
    Object? gender = freezed,
    Object? city = freezed,
    Object? street = freezed,
    Object? district = freezed,
    Object? fcmToken = freezed,
    Object? verificationCode = freezed,
    Object? verificationCodeExpiresAt = freezed,
    Object? emailVerified = null,
    Object? verified = null,
    Object? accountNonExpired = null,
    Object? accountNonLocked = null,
    Object? credentialsNonExpired = null,
    Object? enabled = null,
    Object? roleName = freezed,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      contactNumber: freezed == contactNumber
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationCode: freezed == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationCodeExpiresAt: freezed == verificationCodeExpiresAt
          ? _value.verificationCodeExpiresAt
          : verificationCodeExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      accountNonExpired: null == accountNonExpired
          ? _value.accountNonExpired
          : accountNonExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      accountNonLocked: null == accountNonLocked
          ? _value.accountNonLocked
          : accountNonLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      credentialsNonExpired: null == credentialsNonExpired
          ? _value.credentialsNonExpired
          : credentialsNonExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      roleName: freezed == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailsImplCopyWith<$Res>
    implements $UserDetailsCopyWith<$Res> {
  factory _$$UserDetailsImplCopyWith(
          _$UserDetailsImpl value, $Res Function(_$UserDetailsImpl) then) =
      __$$UserDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      bool emailVerified,
      bool verified,
      bool accountNonExpired,
      bool accountNonLocked,
      bool credentialsNonExpired,
      bool enabled,
      String? roleName,
      List<ImageModel> images});
}

/// @nodoc
class __$$UserDetailsImplCopyWithImpl<$Res>
    extends _$UserDetailsCopyWithImpl<$Res, _$UserDetailsImpl>
    implements _$$UserDetailsImplCopyWith<$Res> {
  __$$UserDetailsImplCopyWithImpl(
      _$UserDetailsImpl _value, $Res Function(_$UserDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? contactNumber = freezed,
    Object? gender = freezed,
    Object? city = freezed,
    Object? street = freezed,
    Object? district = freezed,
    Object? fcmToken = freezed,
    Object? verificationCode = freezed,
    Object? verificationCodeExpiresAt = freezed,
    Object? emailVerified = null,
    Object? verified = null,
    Object? accountNonExpired = null,
    Object? accountNonLocked = null,
    Object? credentialsNonExpired = null,
    Object? enabled = null,
    Object? roleName = freezed,
    Object? images = null,
  }) {
    return _then(_$UserDetailsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      contactNumber: freezed == contactNumber
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationCode: freezed == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationCodeExpiresAt: freezed == verificationCodeExpiresAt
          ? _value.verificationCodeExpiresAt
          : verificationCodeExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      accountNonExpired: null == accountNonExpired
          ? _value.accountNonExpired
          : accountNonExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      accountNonLocked: null == accountNonLocked
          ? _value.accountNonLocked
          : accountNonLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      credentialsNonExpired: null == credentialsNonExpired
          ? _value.credentialsNonExpired
          : credentialsNonExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      roleName: freezed == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailsImpl implements _UserDetails {
  const _$UserDetailsImpl(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.password,
      this.contactNumber,
      this.gender,
      this.city,
      this.street,
      this.district,
      this.fcmToken,
      this.verificationCode,
      this.verificationCodeExpiresAt,
      this.emailVerified = false,
      this.verified = false,
      this.accountNonExpired = true,
      this.accountNonLocked = true,
      this.credentialsNonExpired = true,
      this.enabled = true,
      this.roleName,
      final List<ImageModel> images = const []})
      : _images = images;

  factory _$UserDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailsImplFromJson(json);

  @override
  final int? id;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? contactNumber;
  @override
  final String? gender;
  @override
  final String? city;
  @override
  final String? street;
  @override
  final String? district;
  @override
  final String? fcmToken;
  @override
  final String? verificationCode;
  @override
  final DateTime? verificationCodeExpiresAt;
  @override
  @JsonKey()
  final bool emailVerified;
  @override
  @JsonKey()
  final bool verified;
  @override
  @JsonKey()
  final bool accountNonExpired;
  @override
  @JsonKey()
  final bool accountNonLocked;
  @override
  @JsonKey()
  final bool credentialsNonExpired;
  @override
  @JsonKey()
  final bool enabled;
  @override
  final String? roleName;
  final List<ImageModel> _images;
  @override
  @JsonKey()
  List<ImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'UserDetails(id: $id, firstName: $firstName, lastName: $lastName, email: $email, password: $password, contactNumber: $contactNumber, gender: $gender, city: $city, street: $street, district: $district, fcmToken: $fcmToken, verificationCode: $verificationCode, verificationCodeExpiresAt: $verificationCodeExpiresAt, emailVerified: $emailVerified, verified: $verified, accountNonExpired: $accountNonExpired, accountNonLocked: $accountNonLocked, credentialsNonExpired: $credentialsNonExpired, enabled: $enabled, roleName: $roleName, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.contactNumber, contactNumber) ||
                other.contactNumber == contactNumber) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.verificationCode, verificationCode) ||
                other.verificationCode == verificationCode) &&
            (identical(other.verificationCodeExpiresAt,
                    verificationCodeExpiresAt) ||
                other.verificationCodeExpiresAt == verificationCodeExpiresAt) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.accountNonExpired, accountNonExpired) ||
                other.accountNonExpired == accountNonExpired) &&
            (identical(other.accountNonLocked, accountNonLocked) ||
                other.accountNonLocked == accountNonLocked) &&
            (identical(other.credentialsNonExpired, credentialsNonExpired) ||
                other.credentialsNonExpired == credentialsNonExpired) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.roleName, roleName) ||
                other.roleName == roleName) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        firstName,
        lastName,
        email,
        password,
        contactNumber,
        gender,
        city,
        street,
        district,
        fcmToken,
        verificationCode,
        verificationCodeExpiresAt,
        emailVerified,
        verified,
        accountNonExpired,
        accountNonLocked,
        credentialsNonExpired,
        enabled,
        roleName,
        const DeepCollectionEquality().hash(_images)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailsImplCopyWith<_$UserDetailsImpl> get copyWith =>
      __$$UserDetailsImplCopyWithImpl<_$UserDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailsImplToJson(
      this,
    );
  }
}

abstract class _UserDetails implements UserDetails {
  const factory _UserDetails(
      {final int? id,
      final String? firstName,
      final String? lastName,
      final String? email,
      final String? password,
      final String? contactNumber,
      final String? gender,
      final String? city,
      final String? street,
      final String? district,
      final String? fcmToken,
      final String? verificationCode,
      final DateTime? verificationCodeExpiresAt,
      final bool emailVerified,
      final bool verified,
      final bool accountNonExpired,
      final bool accountNonLocked,
      final bool credentialsNonExpired,
      final bool enabled,
      final String? roleName,
      final List<ImageModel> images}) = _$UserDetailsImpl;

  factory _UserDetails.fromJson(Map<String, dynamic> json) =
      _$UserDetailsImpl.fromJson;

  @override
  int? get id;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get contactNumber;
  @override
  String? get gender;
  @override
  String? get city;
  @override
  String? get street;
  @override
  String? get district;
  @override
  String? get fcmToken;
  @override
  String? get verificationCode;
  @override
  DateTime? get verificationCodeExpiresAt;
  @override
  bool get emailVerified;
  @override
  bool get verified;
  @override
  bool get accountNonExpired;
  @override
  bool get accountNonLocked;
  @override
  bool get credentialsNonExpired;
  @override
  bool get enabled;
  @override
  String? get roleName;
  @override
  List<ImageModel> get images;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailsImplCopyWith<_$UserDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) {
  return _ImageModel.fromJson(json);
}

/// @nodoc
mixin _$ImageModel {
  int? get id => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get publicId => throw _privateConstructorUsedError;
  String? get imageType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageModelCopyWith<ImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageModelCopyWith<$Res> {
  factory $ImageModelCopyWith(
          ImageModel value, $Res Function(ImageModel) then) =
      _$ImageModelCopyWithImpl<$Res, ImageModel>;
  @useResult
  $Res call({int? id, String? imageUrl, String? publicId, String? imageType});
}

/// @nodoc
class _$ImageModelCopyWithImpl<$Res, $Val extends ImageModel>
    implements $ImageModelCopyWith<$Res> {
  _$ImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? publicId = freezed,
    Object? imageType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      publicId: freezed == publicId
          ? _value.publicId
          : publicId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageType: freezed == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageModelImplCopyWith<$Res>
    implements $ImageModelCopyWith<$Res> {
  factory _$$ImageModelImplCopyWith(
          _$ImageModelImpl value, $Res Function(_$ImageModelImpl) then) =
      __$$ImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? imageUrl, String? publicId, String? imageType});
}

/// @nodoc
class __$$ImageModelImplCopyWithImpl<$Res>
    extends _$ImageModelCopyWithImpl<$Res, _$ImageModelImpl>
    implements _$$ImageModelImplCopyWith<$Res> {
  __$$ImageModelImplCopyWithImpl(
      _$ImageModelImpl _value, $Res Function(_$ImageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? publicId = freezed,
    Object? imageType = freezed,
  }) {
    return _then(_$ImageModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      publicId: freezed == publicId
          ? _value.publicId
          : publicId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageType: freezed == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageModelImpl implements _ImageModel {
  const _$ImageModelImpl(
      {this.id, this.imageUrl, this.publicId, this.imageType});

  factory _$ImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? imageUrl;
  @override
  final String? publicId;
  @override
  final String? imageType;

  @override
  String toString() {
    return 'ImageModel(id: $id, imageUrl: $imageUrl, publicId: $publicId, imageType: $imageType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.publicId, publicId) ||
                other.publicId == publicId) &&
            (identical(other.imageType, imageType) ||
                other.imageType == imageType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, imageUrl, publicId, imageType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageModelImplCopyWith<_$ImageModelImpl> get copyWith =>
      __$$ImageModelImplCopyWithImpl<_$ImageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageModelImplToJson(
      this,
    );
  }
}

abstract class _ImageModel implements ImageModel {
  const factory _ImageModel(
      {final int? id,
      final String? imageUrl,
      final String? publicId,
      final String? imageType}) = _$ImageModelImpl;

  factory _ImageModel.fromJson(Map<String, dynamic> json) =
      _$ImageModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get imageUrl;
  @override
  String? get publicId;
  @override
  String? get imageType;
  @override
  @JsonKey(ignore: true)
  _$$ImageModelImplCopyWith<_$ImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserDetailsState {
  String? get imageUrl => throw _privateConstructorUsedError;
  PlatformFile? get image => throw _privateConstructorUsedError;
  File? get file => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? imageUrl, PlatformFile? image, File? file)
        initial,
    required TResult Function(String? imageUrl, PlatformFile? image, File? file)
        loading,
    required TResult Function(UserDetails? user, bool? isSuccess,
            String? imageUrl, File? file, PlatformFile? image)
        loaded,
    required TResult Function(
            String? message, File? file, String? imageUrl, PlatformFile? image)
        error,
    required TResult Function(
            bool? isSuccess, String? imageUrl, File? file, PlatformFile? image)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? imageUrl, PlatformFile? image, File? file)?
        initial,
    TResult? Function(String? imageUrl, PlatformFile? image, File? file)?
        loading,
    TResult? Function(UserDetails? user, bool? isSuccess, String? imageUrl,
            File? file, PlatformFile? image)?
        loaded,
    TResult? Function(
            String? message, File? file, String? imageUrl, PlatformFile? image)?
        error,
    TResult? Function(
            bool? isSuccess, String? imageUrl, File? file, PlatformFile? image)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? imageUrl, PlatformFile? image, File? file)?
        initial,
    TResult Function(String? imageUrl, PlatformFile? image, File? file)?
        loading,
    TResult Function(UserDetails? user, bool? isSuccess, String? imageUrl,
            File? file, PlatformFile? image)?
        loaded,
    TResult Function(
            String? message, File? file, String? imageUrl, PlatformFile? image)?
        error,
    TResult Function(
            bool? isSuccess, String? imageUrl, File? file, PlatformFile? image)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDetailsInitial value) initial,
    required TResult Function(UserDetailsLoading value) loading,
    required TResult Function(UserDetailsLoaded value) loaded,
    required TResult Function(UserDetailsError value) error,
    required TResult Function(UserDetailsSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserDetailsInitial value)? initial,
    TResult? Function(UserDetailsLoading value)? loading,
    TResult? Function(UserDetailsLoaded value)? loaded,
    TResult? Function(UserDetailsError value)? error,
    TResult? Function(UserDetailsSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDetailsInitial value)? initial,
    TResult Function(UserDetailsLoading value)? loading,
    TResult Function(UserDetailsLoaded value)? loaded,
    TResult Function(UserDetailsError value)? error,
    TResult Function(UserDetailsSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailsStateCopyWith<UserDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsStateCopyWith<$Res> {
  factory $UserDetailsStateCopyWith(
          UserDetailsState value, $Res Function(UserDetailsState) then) =
      _$UserDetailsStateCopyWithImpl<$Res, UserDetailsState>;
  @useResult
  $Res call({String? imageUrl, PlatformFile? image, File? file});
}

/// @nodoc
class _$UserDetailsStateCopyWithImpl<$Res, $Val extends UserDetailsState>
    implements $UserDetailsStateCopyWith<$Res> {
  _$UserDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? image = freezed,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailsInitialImplCopyWith<$Res>
    implements $UserDetailsStateCopyWith<$Res> {
  factory _$$UserDetailsInitialImplCopyWith(_$UserDetailsInitialImpl value,
          $Res Function(_$UserDetailsInitialImpl) then) =
      __$$UserDetailsInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? imageUrl, PlatformFile? image, File? file});
}

/// @nodoc
class __$$UserDetailsInitialImplCopyWithImpl<$Res>
    extends _$UserDetailsStateCopyWithImpl<$Res, _$UserDetailsInitialImpl>
    implements _$$UserDetailsInitialImplCopyWith<$Res> {
  __$$UserDetailsInitialImplCopyWithImpl(_$UserDetailsInitialImpl _value,
      $Res Function(_$UserDetailsInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? image = freezed,
    Object? file = freezed,
  }) {
    return _then(_$UserDetailsInitialImpl(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$UserDetailsInitialImpl implements UserDetailsInitial {
  const _$UserDetailsInitialImpl({this.imageUrl, this.image, this.file});

  @override
  final String? imageUrl;
  @override
  final PlatformFile? image;
  @override
  final File? file;

  @override
  String toString() {
    return 'UserDetailsState.initial(imageUrl: $imageUrl, image: $image, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsInitialImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, image, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailsInitialImplCopyWith<_$UserDetailsInitialImpl> get copyWith =>
      __$$UserDetailsInitialImplCopyWithImpl<_$UserDetailsInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? imageUrl, PlatformFile? image, File? file)
        initial,
    required TResult Function(String? imageUrl, PlatformFile? image, File? file)
        loading,
    required TResult Function(UserDetails? user, bool? isSuccess,
            String? imageUrl, File? file, PlatformFile? image)
        loaded,
    required TResult Function(
            String? message, File? file, String? imageUrl, PlatformFile? image)
        error,
    required TResult Function(
            bool? isSuccess, String? imageUrl, File? file, PlatformFile? image)
        success,
  }) {
    return initial(imageUrl, image, file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? imageUrl, PlatformFile? image, File? file)?
        initial,
    TResult? Function(String? imageUrl, PlatformFile? image, File? file)?
        loading,
    TResult? Function(UserDetails? user, bool? isSuccess, String? imageUrl,
            File? file, PlatformFile? image)?
        loaded,
    TResult? Function(
            String? message, File? file, String? imageUrl, PlatformFile? image)?
        error,
    TResult? Function(
            bool? isSuccess, String? imageUrl, File? file, PlatformFile? image)?
        success,
  }) {
    return initial?.call(imageUrl, image, file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? imageUrl, PlatformFile? image, File? file)?
        initial,
    TResult Function(String? imageUrl, PlatformFile? image, File? file)?
        loading,
    TResult Function(UserDetails? user, bool? isSuccess, String? imageUrl,
            File? file, PlatformFile? image)?
        loaded,
    TResult Function(
            String? message, File? file, String? imageUrl, PlatformFile? image)?
        error,
    TResult Function(
            bool? isSuccess, String? imageUrl, File? file, PlatformFile? image)?
        success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(imageUrl, image, file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDetailsInitial value) initial,
    required TResult Function(UserDetailsLoading value) loading,
    required TResult Function(UserDetailsLoaded value) loaded,
    required TResult Function(UserDetailsError value) error,
    required TResult Function(UserDetailsSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserDetailsInitial value)? initial,
    TResult? Function(UserDetailsLoading value)? loading,
    TResult? Function(UserDetailsLoaded value)? loaded,
    TResult? Function(UserDetailsError value)? error,
    TResult? Function(UserDetailsSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDetailsInitial value)? initial,
    TResult Function(UserDetailsLoading value)? loading,
    TResult Function(UserDetailsLoaded value)? loaded,
    TResult Function(UserDetailsError value)? error,
    TResult Function(UserDetailsSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UserDetailsInitial implements UserDetailsState {
  const factory UserDetailsInitial(
      {final String? imageUrl,
      final PlatformFile? image,
      final File? file}) = _$UserDetailsInitialImpl;

  @override
  String? get imageUrl;
  @override
  PlatformFile? get image;
  @override
  File? get file;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailsInitialImplCopyWith<_$UserDetailsInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDetailsLoadingImplCopyWith<$Res>
    implements $UserDetailsStateCopyWith<$Res> {
  factory _$$UserDetailsLoadingImplCopyWith(_$UserDetailsLoadingImpl value,
          $Res Function(_$UserDetailsLoadingImpl) then) =
      __$$UserDetailsLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? imageUrl, PlatformFile? image, File? file});
}

/// @nodoc
class __$$UserDetailsLoadingImplCopyWithImpl<$Res>
    extends _$UserDetailsStateCopyWithImpl<$Res, _$UserDetailsLoadingImpl>
    implements _$$UserDetailsLoadingImplCopyWith<$Res> {
  __$$UserDetailsLoadingImplCopyWithImpl(_$UserDetailsLoadingImpl _value,
      $Res Function(_$UserDetailsLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? image = freezed,
    Object? file = freezed,
  }) {
    return _then(_$UserDetailsLoadingImpl(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$UserDetailsLoadingImpl implements UserDetailsLoading {
  const _$UserDetailsLoadingImpl({this.imageUrl, this.image, this.file});

  @override
  final String? imageUrl;
  @override
  final PlatformFile? image;
  @override
  final File? file;

  @override
  String toString() {
    return 'UserDetailsState.loading(imageUrl: $imageUrl, image: $image, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsLoadingImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, image, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailsLoadingImplCopyWith<_$UserDetailsLoadingImpl> get copyWith =>
      __$$UserDetailsLoadingImplCopyWithImpl<_$UserDetailsLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? imageUrl, PlatformFile? image, File? file)
        initial,
    required TResult Function(String? imageUrl, PlatformFile? image, File? file)
        loading,
    required TResult Function(UserDetails? user, bool? isSuccess,
            String? imageUrl, File? file, PlatformFile? image)
        loaded,
    required TResult Function(
            String? message, File? file, String? imageUrl, PlatformFile? image)
        error,
    required TResult Function(
            bool? isSuccess, String? imageUrl, File? file, PlatformFile? image)
        success,
  }) {
    return loading(imageUrl, image, file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? imageUrl, PlatformFile? image, File? file)?
        initial,
    TResult? Function(String? imageUrl, PlatformFile? image, File? file)?
        loading,
    TResult? Function(UserDetails? user, bool? isSuccess, String? imageUrl,
            File? file, PlatformFile? image)?
        loaded,
    TResult? Function(
            String? message, File? file, String? imageUrl, PlatformFile? image)?
        error,
    TResult? Function(
            bool? isSuccess, String? imageUrl, File? file, PlatformFile? image)?
        success,
  }) {
    return loading?.call(imageUrl, image, file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? imageUrl, PlatformFile? image, File? file)?
        initial,
    TResult Function(String? imageUrl, PlatformFile? image, File? file)?
        loading,
    TResult Function(UserDetails? user, bool? isSuccess, String? imageUrl,
            File? file, PlatformFile? image)?
        loaded,
    TResult Function(
            String? message, File? file, String? imageUrl, PlatformFile? image)?
        error,
    TResult Function(
            bool? isSuccess, String? imageUrl, File? file, PlatformFile? image)?
        success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(imageUrl, image, file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDetailsInitial value) initial,
    required TResult Function(UserDetailsLoading value) loading,
    required TResult Function(UserDetailsLoaded value) loaded,
    required TResult Function(UserDetailsError value) error,
    required TResult Function(UserDetailsSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserDetailsInitial value)? initial,
    TResult? Function(UserDetailsLoading value)? loading,
    TResult? Function(UserDetailsLoaded value)? loaded,
    TResult? Function(UserDetailsError value)? error,
    TResult? Function(UserDetailsSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDetailsInitial value)? initial,
    TResult Function(UserDetailsLoading value)? loading,
    TResult Function(UserDetailsLoaded value)? loaded,
    TResult Function(UserDetailsError value)? error,
    TResult Function(UserDetailsSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserDetailsLoading implements UserDetailsState {
  const factory UserDetailsLoading(
      {final String? imageUrl,
      final PlatformFile? image,
      final File? file}) = _$UserDetailsLoadingImpl;

  @override
  String? get imageUrl;
  @override
  PlatformFile? get image;
  @override
  File? get file;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailsLoadingImplCopyWith<_$UserDetailsLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDetailsLoadedImplCopyWith<$Res>
    implements $UserDetailsStateCopyWith<$Res> {
  factory _$$UserDetailsLoadedImplCopyWith(_$UserDetailsLoadedImpl value,
          $Res Function(_$UserDetailsLoadedImpl) then) =
      __$$UserDetailsLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserDetails? user,
      bool? isSuccess,
      String? imageUrl,
      File? file,
      PlatformFile? image});

  $UserDetailsCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UserDetailsLoadedImplCopyWithImpl<$Res>
    extends _$UserDetailsStateCopyWithImpl<$Res, _$UserDetailsLoadedImpl>
    implements _$$UserDetailsLoadedImplCopyWith<$Res> {
  __$$UserDetailsLoadedImplCopyWithImpl(_$UserDetailsLoadedImpl _value,
      $Res Function(_$UserDetailsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isSuccess = freezed,
    Object? imageUrl = freezed,
    Object? file = freezed,
    Object? image = freezed,
  }) {
    return _then(_$UserDetailsLoadedImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDetails?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDetailsCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDetailsCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserDetailsLoadedImpl implements UserDetailsLoaded {
  const _$UserDetailsLoadedImpl(
      {this.user, this.isSuccess, this.imageUrl, this.file, this.image});

  @override
  final UserDetails? user;
  @override
  final bool? isSuccess;
  @override
  final String? imageUrl;
  @override
  final File? file;
  @override
  final PlatformFile? image;

  @override
  String toString() {
    return 'UserDetailsState.loaded(user: $user, isSuccess: $isSuccess, imageUrl: $imageUrl, file: $file, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsLoadedImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, user, isSuccess, imageUrl, file, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailsLoadedImplCopyWith<_$UserDetailsLoadedImpl> get copyWith =>
      __$$UserDetailsLoadedImplCopyWithImpl<_$UserDetailsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? imageUrl, PlatformFile? image, File? file)
        initial,
    required TResult Function(String? imageUrl, PlatformFile? image, File? file)
        loading,
    required TResult Function(UserDetails? user, bool? isSuccess,
            String? imageUrl, File? file, PlatformFile? image)
        loaded,
    required TResult Function(
            String? message, File? file, String? imageUrl, PlatformFile? image)
        error,
    required TResult Function(
            bool? isSuccess, String? imageUrl, File? file, PlatformFile? image)
        success,
  }) {
    return loaded(user, isSuccess, imageUrl, file, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? imageUrl, PlatformFile? image, File? file)?
        initial,
    TResult? Function(String? imageUrl, PlatformFile? image, File? file)?
        loading,
    TResult? Function(UserDetails? user, bool? isSuccess, String? imageUrl,
            File? file, PlatformFile? image)?
        loaded,
    TResult? Function(
            String? message, File? file, String? imageUrl, PlatformFile? image)?
        error,
    TResult? Function(
            bool? isSuccess, String? imageUrl, File? file, PlatformFile? image)?
        success,
  }) {
    return loaded?.call(user, isSuccess, imageUrl, file, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? imageUrl, PlatformFile? image, File? file)?
        initial,
    TResult Function(String? imageUrl, PlatformFile? image, File? file)?
        loading,
    TResult Function(UserDetails? user, bool? isSuccess, String? imageUrl,
            File? file, PlatformFile? image)?
        loaded,
    TResult Function(
            String? message, File? file, String? imageUrl, PlatformFile? image)?
        error,
    TResult Function(
            bool? isSuccess, String? imageUrl, File? file, PlatformFile? image)?
        success,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user, isSuccess, imageUrl, file, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDetailsInitial value) initial,
    required TResult Function(UserDetailsLoading value) loading,
    required TResult Function(UserDetailsLoaded value) loaded,
    required TResult Function(UserDetailsError value) error,
    required TResult Function(UserDetailsSuccess value) success,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserDetailsInitial value)? initial,
    TResult? Function(UserDetailsLoading value)? loading,
    TResult? Function(UserDetailsLoaded value)? loaded,
    TResult? Function(UserDetailsError value)? error,
    TResult? Function(UserDetailsSuccess value)? success,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDetailsInitial value)? initial,
    TResult Function(UserDetailsLoading value)? loading,
    TResult Function(UserDetailsLoaded value)? loaded,
    TResult Function(UserDetailsError value)? error,
    TResult Function(UserDetailsSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class UserDetailsLoaded implements UserDetailsState {
  const factory UserDetailsLoaded(
      {final UserDetails? user,
      final bool? isSuccess,
      final String? imageUrl,
      final File? file,
      final PlatformFile? image}) = _$UserDetailsLoadedImpl;

  UserDetails? get user;
  bool? get isSuccess;
  @override
  String? get imageUrl;
  @override
  File? get file;
  @override
  PlatformFile? get image;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailsLoadedImplCopyWith<_$UserDetailsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDetailsErrorImplCopyWith<$Res>
    implements $UserDetailsStateCopyWith<$Res> {
  factory _$$UserDetailsErrorImplCopyWith(_$UserDetailsErrorImpl value,
          $Res Function(_$UserDetailsErrorImpl) then) =
      __$$UserDetailsErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message, File? file, String? imageUrl, PlatformFile? image});
}

/// @nodoc
class __$$UserDetailsErrorImplCopyWithImpl<$Res>
    extends _$UserDetailsStateCopyWithImpl<$Res, _$UserDetailsErrorImpl>
    implements _$$UserDetailsErrorImplCopyWith<$Res> {
  __$$UserDetailsErrorImplCopyWithImpl(_$UserDetailsErrorImpl _value,
      $Res Function(_$UserDetailsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? file = freezed,
    Object? imageUrl = freezed,
    Object? image = freezed,
  }) {
    return _then(_$UserDetailsErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
    ));
  }
}

/// @nodoc

class _$UserDetailsErrorImpl implements UserDetailsError {
  const _$UserDetailsErrorImpl(
      {this.message, this.file, this.imageUrl, this.image});

  @override
  final String? message;
  @override
  final File? file;
  @override
  final String? imageUrl;
  @override
  final PlatformFile? image;

  @override
  String toString() {
    return 'UserDetailsState.error(message: $message, file: $file, imageUrl: $imageUrl, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, file, imageUrl, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailsErrorImplCopyWith<_$UserDetailsErrorImpl> get copyWith =>
      __$$UserDetailsErrorImplCopyWithImpl<_$UserDetailsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? imageUrl, PlatformFile? image, File? file)
        initial,
    required TResult Function(String? imageUrl, PlatformFile? image, File? file)
        loading,
    required TResult Function(UserDetails? user, bool? isSuccess,
            String? imageUrl, File? file, PlatformFile? image)
        loaded,
    required TResult Function(
            String? message, File? file, String? imageUrl, PlatformFile? image)
        error,
    required TResult Function(
            bool? isSuccess, String? imageUrl, File? file, PlatformFile? image)
        success,
  }) {
    return error(message, file, imageUrl, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? imageUrl, PlatformFile? image, File? file)?
        initial,
    TResult? Function(String? imageUrl, PlatformFile? image, File? file)?
        loading,
    TResult? Function(UserDetails? user, bool? isSuccess, String? imageUrl,
            File? file, PlatformFile? image)?
        loaded,
    TResult? Function(
            String? message, File? file, String? imageUrl, PlatformFile? image)?
        error,
    TResult? Function(
            bool? isSuccess, String? imageUrl, File? file, PlatformFile? image)?
        success,
  }) {
    return error?.call(message, file, imageUrl, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? imageUrl, PlatformFile? image, File? file)?
        initial,
    TResult Function(String? imageUrl, PlatformFile? image, File? file)?
        loading,
    TResult Function(UserDetails? user, bool? isSuccess, String? imageUrl,
            File? file, PlatformFile? image)?
        loaded,
    TResult Function(
            String? message, File? file, String? imageUrl, PlatformFile? image)?
        error,
    TResult Function(
            bool? isSuccess, String? imageUrl, File? file, PlatformFile? image)?
        success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, file, imageUrl, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDetailsInitial value) initial,
    required TResult Function(UserDetailsLoading value) loading,
    required TResult Function(UserDetailsLoaded value) loaded,
    required TResult Function(UserDetailsError value) error,
    required TResult Function(UserDetailsSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserDetailsInitial value)? initial,
    TResult? Function(UserDetailsLoading value)? loading,
    TResult? Function(UserDetailsLoaded value)? loaded,
    TResult? Function(UserDetailsError value)? error,
    TResult? Function(UserDetailsSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDetailsInitial value)? initial,
    TResult Function(UserDetailsLoading value)? loading,
    TResult Function(UserDetailsLoaded value)? loaded,
    TResult Function(UserDetailsError value)? error,
    TResult Function(UserDetailsSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserDetailsError implements UserDetailsState {
  const factory UserDetailsError(
      {final String? message,
      final File? file,
      final String? imageUrl,
      final PlatformFile? image}) = _$UserDetailsErrorImpl;

  String? get message;
  @override
  File? get file;
  @override
  String? get imageUrl;
  @override
  PlatformFile? get image;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailsErrorImplCopyWith<_$UserDetailsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDetailsSuccessImplCopyWith<$Res>
    implements $UserDetailsStateCopyWith<$Res> {
  factory _$$UserDetailsSuccessImplCopyWith(_$UserDetailsSuccessImpl value,
          $Res Function(_$UserDetailsSuccessImpl) then) =
      __$$UserDetailsSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isSuccess, String? imageUrl, File? file, PlatformFile? image});
}

/// @nodoc
class __$$UserDetailsSuccessImplCopyWithImpl<$Res>
    extends _$UserDetailsStateCopyWithImpl<$Res, _$UserDetailsSuccessImpl>
    implements _$$UserDetailsSuccessImplCopyWith<$Res> {
  __$$UserDetailsSuccessImplCopyWithImpl(_$UserDetailsSuccessImpl _value,
      $Res Function(_$UserDetailsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = freezed,
    Object? imageUrl = freezed,
    Object? file = freezed,
    Object? image = freezed,
  }) {
    return _then(_$UserDetailsSuccessImpl(
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
    ));
  }
}

/// @nodoc

class _$UserDetailsSuccessImpl implements UserDetailsSuccess {
  const _$UserDetailsSuccessImpl(
      {this.isSuccess, this.imageUrl, this.file, this.image});

  @override
  final bool? isSuccess;
  @override
  final String? imageUrl;
  @override
  final File? file;
  @override
  final PlatformFile? image;

  @override
  String toString() {
    return 'UserDetailsState.success(isSuccess: $isSuccess, imageUrl: $imageUrl, file: $file, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsSuccessImpl &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isSuccess, imageUrl, file, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailsSuccessImplCopyWith<_$UserDetailsSuccessImpl> get copyWith =>
      __$$UserDetailsSuccessImplCopyWithImpl<_$UserDetailsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? imageUrl, PlatformFile? image, File? file)
        initial,
    required TResult Function(String? imageUrl, PlatformFile? image, File? file)
        loading,
    required TResult Function(UserDetails? user, bool? isSuccess,
            String? imageUrl, File? file, PlatformFile? image)
        loaded,
    required TResult Function(
            String? message, File? file, String? imageUrl, PlatformFile? image)
        error,
    required TResult Function(
            bool? isSuccess, String? imageUrl, File? file, PlatformFile? image)
        success,
  }) {
    return success(isSuccess, imageUrl, file, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? imageUrl, PlatformFile? image, File? file)?
        initial,
    TResult? Function(String? imageUrl, PlatformFile? image, File? file)?
        loading,
    TResult? Function(UserDetails? user, bool? isSuccess, String? imageUrl,
            File? file, PlatformFile? image)?
        loaded,
    TResult? Function(
            String? message, File? file, String? imageUrl, PlatformFile? image)?
        error,
    TResult? Function(
            bool? isSuccess, String? imageUrl, File? file, PlatformFile? image)?
        success,
  }) {
    return success?.call(isSuccess, imageUrl, file, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? imageUrl, PlatformFile? image, File? file)?
        initial,
    TResult Function(String? imageUrl, PlatformFile? image, File? file)?
        loading,
    TResult Function(UserDetails? user, bool? isSuccess, String? imageUrl,
            File? file, PlatformFile? image)?
        loaded,
    TResult Function(
            String? message, File? file, String? imageUrl, PlatformFile? image)?
        error,
    TResult Function(
            bool? isSuccess, String? imageUrl, File? file, PlatformFile? image)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(isSuccess, imageUrl, file, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDetailsInitial value) initial,
    required TResult Function(UserDetailsLoading value) loading,
    required TResult Function(UserDetailsLoaded value) loaded,
    required TResult Function(UserDetailsError value) error,
    required TResult Function(UserDetailsSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserDetailsInitial value)? initial,
    TResult? Function(UserDetailsLoading value)? loading,
    TResult? Function(UserDetailsLoaded value)? loaded,
    TResult? Function(UserDetailsError value)? error,
    TResult? Function(UserDetailsSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDetailsInitial value)? initial,
    TResult Function(UserDetailsLoading value)? loading,
    TResult Function(UserDetailsLoaded value)? loaded,
    TResult Function(UserDetailsError value)? error,
    TResult Function(UserDetailsSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UserDetailsSuccess implements UserDetailsState {
  const factory UserDetailsSuccess(
      {final bool? isSuccess,
      final String? imageUrl,
      final File? file,
      final PlatformFile? image}) = _$UserDetailsSuccessImpl;

  bool? get isSuccess;
  @override
  String? get imageUrl;
  @override
  File? get file;
  @override
  PlatformFile? get image;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailsSuccessImplCopyWith<_$UserDetailsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
