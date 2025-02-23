// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PropertyResponse _$PropertyResponseFromJson(Map<String, dynamic> json) {
  return _PropertyResponse.fromJson(json);
}

/// @nodoc
mixin _$PropertyResponse {
  @JsonKey(name: 'data')
  List<Property> get properties => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorites')
  List<String>? get favoriteIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyResponseCopyWith<PropertyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyResponseCopyWith<$Res> {
  factory $PropertyResponseCopyWith(
          PropertyResponse value, $Res Function(PropertyResponse) then) =
      _$PropertyResponseCopyWithImpl<$Res, PropertyResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<Property> properties,
      @JsonKey(name: 'favorites') List<String>? favoriteIds});
}

/// @nodoc
class _$PropertyResponseCopyWithImpl<$Res, $Val extends PropertyResponse>
    implements $PropertyResponseCopyWith<$Res> {
  _$PropertyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? properties = null,
    Object? favoriteIds = freezed,
  }) {
    return _then(_value.copyWith(
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as List<Property>,
      favoriteIds: freezed == favoriteIds
          ? _value.favoriteIds
          : favoriteIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyResponseImplCopyWith<$Res>
    implements $PropertyResponseCopyWith<$Res> {
  factory _$$PropertyResponseImplCopyWith(_$PropertyResponseImpl value,
          $Res Function(_$PropertyResponseImpl) then) =
      __$$PropertyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<Property> properties,
      @JsonKey(name: 'favorites') List<String>? favoriteIds});
}

/// @nodoc
class __$$PropertyResponseImplCopyWithImpl<$Res>
    extends _$PropertyResponseCopyWithImpl<$Res, _$PropertyResponseImpl>
    implements _$$PropertyResponseImplCopyWith<$Res> {
  __$$PropertyResponseImplCopyWithImpl(_$PropertyResponseImpl _value,
      $Res Function(_$PropertyResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? properties = null,
    Object? favoriteIds = freezed,
  }) {
    return _then(_$PropertyResponseImpl(
      properties: null == properties
          ? _value._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as List<Property>,
      favoriteIds: freezed == favoriteIds
          ? _value._favoriteIds
          : favoriteIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyResponseImpl implements _PropertyResponse {
  const _$PropertyResponseImpl(
      {@JsonKey(name: 'data') required final List<Property> properties,
      @JsonKey(name: 'favorites') final List<String>? favoriteIds})
      : _properties = properties,
        _favoriteIds = favoriteIds;

  factory _$PropertyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyResponseImplFromJson(json);

  final List<Property> _properties;
  @override
  @JsonKey(name: 'data')
  List<Property> get properties {
    if (_properties is EqualUnmodifiableListView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_properties);
  }

  final List<String>? _favoriteIds;
  @override
  @JsonKey(name: 'favorites')
  List<String>? get favoriteIds {
    final value = _favoriteIds;
    if (value == null) return null;
    if (_favoriteIds is EqualUnmodifiableListView) return _favoriteIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PropertyResponse(properties: $properties, favoriteIds: $favoriteIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties) &&
            const DeepCollectionEquality()
                .equals(other._favoriteIds, _favoriteIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_properties),
      const DeepCollectionEquality().hash(_favoriteIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyResponseImplCopyWith<_$PropertyResponseImpl> get copyWith =>
      __$$PropertyResponseImplCopyWithImpl<_$PropertyResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyResponseImplToJson(
      this,
    );
  }
}

abstract class _PropertyResponse implements PropertyResponse {
  const factory _PropertyResponse(
          {@JsonKey(name: 'data') required final List<Property> properties,
          @JsonKey(name: 'favorites') final List<String>? favoriteIds}) =
      _$PropertyResponseImpl;

  factory _PropertyResponse.fromJson(Map<String, dynamic> json) =
      _$PropertyResponseImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<Property> get properties;
  @override
  @JsonKey(name: 'favorites')
  List<String>? get favoriteIds;
  @override
  @JsonKey(ignore: true)
  _$$PropertyResponseImplCopyWith<_$PropertyResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Property _$PropertyFromJson(Map<String, dynamic> json) {
  return _Property.fromJson(json);
}

/// @nodoc
mixin _$Property {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_per_night')
  int get pricePerNight => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  int? get bedrooms => throw _privateConstructorUsedError;
  int? get bathrooms => throw _privateConstructorUsedError;
  int? get guests => throw _privateConstructorUsedError;
  String? get landlord => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyCopyWith<Property> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyCopyWith<$Res> {
  factory $PropertyCopyWith(Property value, $Res Function(Property) then) =
      _$PropertyCopyWithImpl<$Res, Property>;
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'price_per_night') int pricePerNight,
      @JsonKey(name: 'image_url') String? imageUrl,
      int? bedrooms,
      int? bathrooms,
      int? guests,
      String? landlord});
}

/// @nodoc
class _$PropertyCopyWithImpl<$Res, $Val extends Property>
    implements $PropertyCopyWith<$Res> {
  _$PropertyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? pricePerNight = null,
    Object? imageUrl = freezed,
    Object? bedrooms = freezed,
    Object? bathrooms = freezed,
    Object? guests = freezed,
    Object? landlord = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pricePerNight: null == pricePerNight
          ? _value.pricePerNight
          : pricePerNight // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bedrooms: freezed == bedrooms
          ? _value.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      bathrooms: freezed == bathrooms
          ? _value.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      guests: freezed == guests
          ? _value.guests
          : guests // ignore: cast_nullable_to_non_nullable
              as int?,
      landlord: freezed == landlord
          ? _value.landlord
          : landlord // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyImplCopyWith<$Res>
    implements $PropertyCopyWith<$Res> {
  factory _$$PropertyImplCopyWith(
          _$PropertyImpl value, $Res Function(_$PropertyImpl) then) =
      __$$PropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'price_per_night') int pricePerNight,
      @JsonKey(name: 'image_url') String? imageUrl,
      int? bedrooms,
      int? bathrooms,
      int? guests,
      String? landlord});
}

/// @nodoc
class __$$PropertyImplCopyWithImpl<$Res>
    extends _$PropertyCopyWithImpl<$Res, _$PropertyImpl>
    implements _$$PropertyImplCopyWith<$Res> {
  __$$PropertyImplCopyWithImpl(
      _$PropertyImpl _value, $Res Function(_$PropertyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? pricePerNight = null,
    Object? imageUrl = freezed,
    Object? bedrooms = freezed,
    Object? bathrooms = freezed,
    Object? guests = freezed,
    Object? landlord = freezed,
  }) {
    return _then(_$PropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pricePerNight: null == pricePerNight
          ? _value.pricePerNight
          : pricePerNight // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bedrooms: freezed == bedrooms
          ? _value.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      bathrooms: freezed == bathrooms
          ? _value.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      guests: freezed == guests
          ? _value.guests
          : guests // ignore: cast_nullable_to_non_nullable
              as int?,
      landlord: freezed == landlord
          ? _value.landlord
          : landlord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyImpl implements _Property {
  const _$PropertyImpl(
      {required this.id,
      required this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'price_per_night') required this.pricePerNight,
      @JsonKey(name: 'image_url') this.imageUrl,
      this.bedrooms,
      this.bathrooms,
      this.guests,
      this.landlord});

  factory _$PropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'price_per_night')
  final int pricePerNight;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  final int? bedrooms;
  @override
  final int? bathrooms;
  @override
  final int? guests;
  @override
  final String? landlord;

  @override
  String toString() {
    return 'Property(id: $id, title: $title, description: $description, pricePerNight: $pricePerNight, imageUrl: $imageUrl, bedrooms: $bedrooms, bathrooms: $bathrooms, guests: $guests, landlord: $landlord)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pricePerNight, pricePerNight) ||
                other.pricePerNight == pricePerNight) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.bedrooms, bedrooms) ||
                other.bedrooms == bedrooms) &&
            (identical(other.bathrooms, bathrooms) ||
                other.bathrooms == bathrooms) &&
            (identical(other.guests, guests) || other.guests == guests) &&
            (identical(other.landlord, landlord) ||
                other.landlord == landlord));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      pricePerNight, imageUrl, bedrooms, bathrooms, guests, landlord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyImplCopyWith<_$PropertyImpl> get copyWith =>
      __$$PropertyImplCopyWithImpl<_$PropertyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyImplToJson(
      this,
    );
  }
}

abstract class _Property implements Property {
  const factory _Property(
      {required final String id,
      required final String title,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'price_per_night') required final int pricePerNight,
      @JsonKey(name: 'image_url') final String? imageUrl,
      final int? bedrooms,
      final int? bathrooms,
      final int? guests,
      final String? landlord}) = _$PropertyImpl;

  factory _Property.fromJson(Map<String, dynamic> json) =
      _$PropertyImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'price_per_night')
  int get pricePerNight;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  int? get bedrooms;
  @override
  int? get bathrooms;
  @override
  int? get guests;
  @override
  String? get landlord;
  @override
  @JsonKey(ignore: true)
  _$$PropertyImplCopyWith<_$PropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PropertyDetailModel _$PropertyDetailModelFromJson(Map<String, dynamic> json) {
  return _PropertyDetailModel.fromJson(json);
}

/// @nodoc
mixin _$PropertyDetailModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_per_night')
  int get pricePerNight => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  int get bedrooms => throw _privateConstructorUsedError;
  int get bathrooms => throw _privateConstructorUsedError;
  int get guests => throw _privateConstructorUsedError;
  Landlord get landlord => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyDetailModelCopyWith<PropertyDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyDetailModelCopyWith<$Res> {
  factory $PropertyDetailModelCopyWith(
          PropertyDetailModel value, $Res Function(PropertyDetailModel) then) =
      _$PropertyDetailModelCopyWithImpl<$Res, PropertyDetailModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      @JsonKey(name: 'price_per_night') int pricePerNight,
      @JsonKey(name: 'image_url') String? imageUrl,
      int bedrooms,
      int bathrooms,
      int guests,
      Landlord landlord});

  $LandlordCopyWith<$Res> get landlord;
}

/// @nodoc
class _$PropertyDetailModelCopyWithImpl<$Res, $Val extends PropertyDetailModel>
    implements $PropertyDetailModelCopyWith<$Res> {
  _$PropertyDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? pricePerNight = null,
    Object? imageUrl = freezed,
    Object? bedrooms = null,
    Object? bathrooms = null,
    Object? guests = null,
    Object? landlord = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pricePerNight: null == pricePerNight
          ? _value.pricePerNight
          : pricePerNight // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bedrooms: null == bedrooms
          ? _value.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int,
      bathrooms: null == bathrooms
          ? _value.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int,
      guests: null == guests
          ? _value.guests
          : guests // ignore: cast_nullable_to_non_nullable
              as int,
      landlord: null == landlord
          ? _value.landlord
          : landlord // ignore: cast_nullable_to_non_nullable
              as Landlord,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LandlordCopyWith<$Res> get landlord {
    return $LandlordCopyWith<$Res>(_value.landlord, (value) {
      return _then(_value.copyWith(landlord: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PropertyDetailModelImplCopyWith<$Res>
    implements $PropertyDetailModelCopyWith<$Res> {
  factory _$$PropertyDetailModelImplCopyWith(_$PropertyDetailModelImpl value,
          $Res Function(_$PropertyDetailModelImpl) then) =
      __$$PropertyDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      @JsonKey(name: 'price_per_night') int pricePerNight,
      @JsonKey(name: 'image_url') String? imageUrl,
      int bedrooms,
      int bathrooms,
      int guests,
      Landlord landlord});

  @override
  $LandlordCopyWith<$Res> get landlord;
}

/// @nodoc
class __$$PropertyDetailModelImplCopyWithImpl<$Res>
    extends _$PropertyDetailModelCopyWithImpl<$Res, _$PropertyDetailModelImpl>
    implements _$$PropertyDetailModelImplCopyWith<$Res> {
  __$$PropertyDetailModelImplCopyWithImpl(_$PropertyDetailModelImpl _value,
      $Res Function(_$PropertyDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? pricePerNight = null,
    Object? imageUrl = freezed,
    Object? bedrooms = null,
    Object? bathrooms = null,
    Object? guests = null,
    Object? landlord = null,
  }) {
    return _then(_$PropertyDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pricePerNight: null == pricePerNight
          ? _value.pricePerNight
          : pricePerNight // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bedrooms: null == bedrooms
          ? _value.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int,
      bathrooms: null == bathrooms
          ? _value.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int,
      guests: null == guests
          ? _value.guests
          : guests // ignore: cast_nullable_to_non_nullable
              as int,
      landlord: null == landlord
          ? _value.landlord
          : landlord // ignore: cast_nullable_to_non_nullable
              as Landlord,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyDetailModelImpl implements _PropertyDetailModel {
  const _$PropertyDetailModelImpl(
      {required this.id,
      required this.title,
      required this.description,
      @JsonKey(name: 'price_per_night') required this.pricePerNight,
      @JsonKey(name: 'image_url') this.imageUrl,
      required this.bedrooms,
      required this.bathrooms,
      required this.guests,
      required this.landlord});

  factory _$PropertyDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyDetailModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(name: 'price_per_night')
  final int pricePerNight;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  final int bedrooms;
  @override
  final int bathrooms;
  @override
  final int guests;
  @override
  final Landlord landlord;

  @override
  String toString() {
    return 'PropertyDetailModel(id: $id, title: $title, description: $description, pricePerNight: $pricePerNight, imageUrl: $imageUrl, bedrooms: $bedrooms, bathrooms: $bathrooms, guests: $guests, landlord: $landlord)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pricePerNight, pricePerNight) ||
                other.pricePerNight == pricePerNight) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.bedrooms, bedrooms) ||
                other.bedrooms == bedrooms) &&
            (identical(other.bathrooms, bathrooms) ||
                other.bathrooms == bathrooms) &&
            (identical(other.guests, guests) || other.guests == guests) &&
            (identical(other.landlord, landlord) ||
                other.landlord == landlord));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      pricePerNight, imageUrl, bedrooms, bathrooms, guests, landlord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyDetailModelImplCopyWith<_$PropertyDetailModelImpl> get copyWith =>
      __$$PropertyDetailModelImplCopyWithImpl<_$PropertyDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyDetailModelImplToJson(
      this,
    );
  }
}

abstract class _PropertyDetailModel implements PropertyDetailModel {
  const factory _PropertyDetailModel(
      {required final String id,
      required final String title,
      required final String description,
      @JsonKey(name: 'price_per_night') required final int pricePerNight,
      @JsonKey(name: 'image_url') final String? imageUrl,
      required final int bedrooms,
      required final int bathrooms,
      required final int guests,
      required final Landlord landlord}) = _$PropertyDetailModelImpl;

  factory _PropertyDetailModel.fromJson(Map<String, dynamic> json) =
      _$PropertyDetailModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(name: 'price_per_night')
  int get pricePerNight;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  int get bedrooms;
  @override
  int get bathrooms;
  @override
  int get guests;
  @override
  Landlord get landlord;
  @override
  @JsonKey(ignore: true)
  _$$PropertyDetailModelImplCopyWith<_$PropertyDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Landlord _$LandlordFromJson(Map<String, dynamic> json) {
  return _Landlord.fromJson(json);
}

/// @nodoc
mixin _$Landlord {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LandlordCopyWith<Landlord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandlordCopyWith<$Res> {
  factory $LandlordCopyWith(Landlord value, $Res Function(Landlord) then) =
      _$LandlordCopyWithImpl<$Res, Landlord>;
  @useResult
  $Res call(
      {String id, String name, @JsonKey(name: 'avatar_url') String avatarUrl});
}

/// @nodoc
class _$LandlordCopyWithImpl<$Res, $Val extends Landlord>
    implements $LandlordCopyWith<$Res> {
  _$LandlordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LandlordImplCopyWith<$Res>
    implements $LandlordCopyWith<$Res> {
  factory _$$LandlordImplCopyWith(
          _$LandlordImpl value, $Res Function(_$LandlordImpl) then) =
      __$$LandlordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, @JsonKey(name: 'avatar_url') String avatarUrl});
}

/// @nodoc
class __$$LandlordImplCopyWithImpl<$Res>
    extends _$LandlordCopyWithImpl<$Res, _$LandlordImpl>
    implements _$$LandlordImplCopyWith<$Res> {
  __$$LandlordImplCopyWithImpl(
      _$LandlordImpl _value, $Res Function(_$LandlordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrl = null,
  }) {
    return _then(_$LandlordImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LandlordImpl implements _Landlord {
  const _$LandlordImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'avatar_url') required this.avatarUrl});

  factory _$LandlordImpl.fromJson(Map<String, dynamic> json) =>
      _$$LandlordImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;

  @override
  String toString() {
    return 'Landlord(id: $id, name: $name, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LandlordImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LandlordImplCopyWith<_$LandlordImpl> get copyWith =>
      __$$LandlordImplCopyWithImpl<_$LandlordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LandlordImplToJson(
      this,
    );
  }
}

abstract class _Landlord implements Landlord {
  const factory _Landlord(
          {required final String id,
          required final String name,
          @JsonKey(name: 'avatar_url') required final String avatarUrl}) =
      _$LandlordImpl;

  factory _Landlord.fromJson(Map<String, dynamic> json) =
      _$LandlordImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'avatar_url')
  String get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$LandlordImplCopyWith<_$LandlordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PropertyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PropertyResponse? response) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PropertyResponse? response)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PropertyResponse? response)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyStateCopyWith<$Res> {
  factory $PropertyStateCopyWith(
          PropertyState value, $Res Function(PropertyState) then) =
      _$PropertyStateCopyWithImpl<$Res, PropertyState>;
}

/// @nodoc
class _$PropertyStateCopyWithImpl<$Res, $Val extends PropertyState>
    implements $PropertyStateCopyWith<$Res> {
  _$PropertyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$PropertyStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'PropertyState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PropertyResponse? response) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PropertyResponse? response)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PropertyResponse? response)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PropertyState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PropertyResponse? response});

  $PropertyResponseCopyWith<$Res>? get response;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$PropertyStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$SuccessImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as PropertyResponse?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertyResponseCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $PropertyResponseCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({this.response});

  @override
  final PropertyResponse? response;

  @override
  String toString() {
    return 'PropertyState.success(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PropertyResponse? response) success,
    required TResult Function(String message) error,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PropertyResponse? response)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PropertyResponse? response)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements PropertyState {
  const factory _Success({final PropertyResponse? response}) = _$SuccessImpl;

  PropertyResponse? get response;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$PropertyStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'PropertyState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PropertyResponse? response) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PropertyResponse? response)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PropertyResponse? response)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PropertyState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PropertyDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PropertyDetailModel propertyDetail) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PropertyDetailModel propertyDetail)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PropertyDetailModel propertyDetail)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingDetail value) loading,
    required TResult Function(_SuccessDetail value) success,
    required TResult Function(_ErrorDetail value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingDetail value)? loading,
    TResult? Function(_SuccessDetail value)? success,
    TResult? Function(_ErrorDetail value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingDetail value)? loading,
    TResult Function(_SuccessDetail value)? success,
    TResult Function(_ErrorDetail value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyDetailsStateCopyWith<$Res> {
  factory $PropertyDetailsStateCopyWith(PropertyDetailsState value,
          $Res Function(PropertyDetailsState) then) =
      _$PropertyDetailsStateCopyWithImpl<$Res, PropertyDetailsState>;
}

/// @nodoc
class _$PropertyDetailsStateCopyWithImpl<$Res,
        $Val extends PropertyDetailsState>
    implements $PropertyDetailsStateCopyWith<$Res> {
  _$PropertyDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingDetailImplCopyWith<$Res> {
  factory _$$LoadingDetailImplCopyWith(
          _$LoadingDetailImpl value, $Res Function(_$LoadingDetailImpl) then) =
      __$$LoadingDetailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingDetailImplCopyWithImpl<$Res>
    extends _$PropertyDetailsStateCopyWithImpl<$Res, _$LoadingDetailImpl>
    implements _$$LoadingDetailImplCopyWith<$Res> {
  __$$LoadingDetailImplCopyWithImpl(
      _$LoadingDetailImpl _value, $Res Function(_$LoadingDetailImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingDetailImpl implements _LoadingDetail {
  const _$LoadingDetailImpl();

  @override
  String toString() {
    return 'PropertyDetailsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingDetailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PropertyDetailModel propertyDetail) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PropertyDetailModel propertyDetail)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PropertyDetailModel propertyDetail)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingDetail value) loading,
    required TResult Function(_SuccessDetail value) success,
    required TResult Function(_ErrorDetail value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingDetail value)? loading,
    TResult? Function(_SuccessDetail value)? success,
    TResult? Function(_ErrorDetail value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingDetail value)? loading,
    TResult Function(_SuccessDetail value)? success,
    TResult Function(_ErrorDetail value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingDetail implements PropertyDetailsState {
  const factory _LoadingDetail() = _$LoadingDetailImpl;
}

/// @nodoc
abstract class _$$SuccessDetailImplCopyWith<$Res> {
  factory _$$SuccessDetailImplCopyWith(
          _$SuccessDetailImpl value, $Res Function(_$SuccessDetailImpl) then) =
      __$$SuccessDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PropertyDetailModel propertyDetail});

  $PropertyDetailModelCopyWith<$Res> get propertyDetail;
}

/// @nodoc
class __$$SuccessDetailImplCopyWithImpl<$Res>
    extends _$PropertyDetailsStateCopyWithImpl<$Res, _$SuccessDetailImpl>
    implements _$$SuccessDetailImplCopyWith<$Res> {
  __$$SuccessDetailImplCopyWithImpl(
      _$SuccessDetailImpl _value, $Res Function(_$SuccessDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyDetail = null,
  }) {
    return _then(_$SuccessDetailImpl(
      propertyDetail: null == propertyDetail
          ? _value.propertyDetail
          : propertyDetail // ignore: cast_nullable_to_non_nullable
              as PropertyDetailModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertyDetailModelCopyWith<$Res> get propertyDetail {
    return $PropertyDetailModelCopyWith<$Res>(_value.propertyDetail, (value) {
      return _then(_value.copyWith(propertyDetail: value));
    });
  }
}

/// @nodoc

class _$SuccessDetailImpl implements _SuccessDetail {
  const _$SuccessDetailImpl({required this.propertyDetail});

  @override
  final PropertyDetailModel propertyDetail;

  @override
  String toString() {
    return 'PropertyDetailsState.success(propertyDetail: $propertyDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessDetailImpl &&
            (identical(other.propertyDetail, propertyDetail) ||
                other.propertyDetail == propertyDetail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, propertyDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessDetailImplCopyWith<_$SuccessDetailImpl> get copyWith =>
      __$$SuccessDetailImplCopyWithImpl<_$SuccessDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PropertyDetailModel propertyDetail) success,
    required TResult Function(String message) error,
  }) {
    return success(propertyDetail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PropertyDetailModel propertyDetail)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(propertyDetail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PropertyDetailModel propertyDetail)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(propertyDetail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingDetail value) loading,
    required TResult Function(_SuccessDetail value) success,
    required TResult Function(_ErrorDetail value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingDetail value)? loading,
    TResult? Function(_SuccessDetail value)? success,
    TResult? Function(_ErrorDetail value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingDetail value)? loading,
    TResult Function(_SuccessDetail value)? success,
    TResult Function(_ErrorDetail value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessDetail implements PropertyDetailsState {
  const factory _SuccessDetail(
          {required final PropertyDetailModel propertyDetail}) =
      _$SuccessDetailImpl;

  PropertyDetailModel get propertyDetail;
  @JsonKey(ignore: true)
  _$$SuccessDetailImplCopyWith<_$SuccessDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorDetailImplCopyWith<$Res> {
  factory _$$ErrorDetailImplCopyWith(
          _$ErrorDetailImpl value, $Res Function(_$ErrorDetailImpl) then) =
      __$$ErrorDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorDetailImplCopyWithImpl<$Res>
    extends _$PropertyDetailsStateCopyWithImpl<$Res, _$ErrorDetailImpl>
    implements _$$ErrorDetailImplCopyWith<$Res> {
  __$$ErrorDetailImplCopyWithImpl(
      _$ErrorDetailImpl _value, $Res Function(_$ErrorDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorDetailImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorDetailImpl implements _ErrorDetail {
  const _$ErrorDetailImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'PropertyDetailsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorDetailImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorDetailImplCopyWith<_$ErrorDetailImpl> get copyWith =>
      __$$ErrorDetailImplCopyWithImpl<_$ErrorDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PropertyDetailModel propertyDetail) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PropertyDetailModel propertyDetail)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PropertyDetailModel propertyDetail)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingDetail value) loading,
    required TResult Function(_SuccessDetail value) success,
    required TResult Function(_ErrorDetail value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingDetail value)? loading,
    TResult? Function(_SuccessDetail value)? success,
    TResult? Function(_ErrorDetail value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingDetail value)? loading,
    TResult Function(_SuccessDetail value)? success,
    TResult Function(_ErrorDetail value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorDetail implements PropertyDetailsState {
  const factory _ErrorDetail({required final String message}) =
      _$ErrorDetailImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorDetailImplCopyWith<_$ErrorDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
