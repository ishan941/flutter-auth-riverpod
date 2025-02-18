import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_model.freezed.dart';
part 'property_model.g.dart';

@freezed
class PropertyResponse with _$PropertyResponse {
  const factory PropertyResponse({
    @JsonKey(name: 'data') required List<Property> properties,
    @JsonKey(name: 'favorites') List<String>? favoriteIds,
  }) = _PropertyResponse;

  factory PropertyResponse.fromJson(Map<String, dynamic> json) =>
      _$PropertyResponseFromJson(json);
}

@freezed
class Property with _$Property {
  const factory Property({
    required String id,
    required String title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'price_per_night') required int pricePerNight,
    @JsonKey(name: 'image_url') String? imageUrl,
    int? bedrooms,
    int? bathrooms,
    int? guests,
    String? landlord,
  }) = _Property;

  factory Property.fromJson(Map<String, dynamic> json) =>
      _$PropertyFromJson(json);
}

//
// Property details
@freezed
class PropertyDetailModel with _$PropertyDetailModel {
  const factory PropertyDetailModel({
    required String id,
    required String title,
    required String description,
    @JsonKey(name: 'price_per_night') required int pricePerNight,
    @JsonKey(name: 'image_url') String? imageUrl,
    required int bedrooms,
    required int bathrooms,
    required int guests,
    required Landlord landlord,
  }) = _PropertyDetailModel;

  factory PropertyDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyDetailModelFromJson(json);
}

@freezed
class Landlord with _$Landlord {
  const factory Landlord({
    required String id,
    required String name,
    @JsonKey(name: 'avatar_url') required String avatarUrl,
  }) = _Landlord;

  factory Landlord.fromJson(Map<String, dynamic> json) =>
      _$LandlordFromJson(json);
}

//
// Property state
@freezed
class PropertyState with _$PropertyState {
  const factory PropertyState.loading() = _Loading;

  const factory PropertyState.success({
    PropertyResponse? response,
  }) = _Success;

  const factory PropertyState.error({
    required String message,
  }) = _Error;
  factory PropertyState.initial() => const PropertyState.loading();
}
//
//Property Detail state

@freezed
class PropertyDetailsState with _$PropertyDetailsState {
  const factory PropertyDetailsState.loading() = _LoadingDetail;

  const factory PropertyDetailsState.success({
    required PropertyDetailModel propertyDetail,
  }) = _SuccessDetail;

  const factory PropertyDetailsState.error({
    required String message,
  }) = _ErrorDetail;

  factory PropertyDetailsState.initial() =>
      const PropertyDetailsState.loading();
}
