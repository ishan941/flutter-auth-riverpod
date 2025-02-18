// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyResponseImpl _$$PropertyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyResponseImpl(
      properties: (json['data'] as List<dynamic>)
          .map((e) => Property.fromJson(e as Map<String, dynamic>))
          .toList(),
      favoriteIds: (json['favorites'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$PropertyResponseImplToJson(
        _$PropertyResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.properties,
      'favorites': instance.favoriteIds,
    };

_$PropertyImpl _$$PropertyImplFromJson(Map<String, dynamic> json) =>
    _$PropertyImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      pricePerNight: (json['price_per_night'] as num).toInt(),
      imageUrl: json['image_url'] as String?,
      bedrooms: (json['bedrooms'] as num?)?.toInt(),
      bathrooms: (json['bathrooms'] as num?)?.toInt(),
      guests: (json['guests'] as num?)?.toInt(),
      landlord: json['landlord'] as String?,
    );

Map<String, dynamic> _$$PropertyImplToJson(_$PropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price_per_night': instance.pricePerNight,
      'image_url': instance.imageUrl,
      'bedrooms': instance.bedrooms,
      'bathrooms': instance.bathrooms,
      'guests': instance.guests,
      'landlord': instance.landlord,
    };

_$PropertyDetailModelImpl _$$PropertyDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyDetailModelImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      pricePerNight: (json['pricePerNight'] as num?)?.toInt(),
      imageUrl: json['imageUrl'] as String?,
      bedrooms: (json['bedrooms'] as num?)?.toInt(),
      bathrooms: (json['bathrooms'] as num?)?.toInt(),
      guests: (json['guests'] as num?)?.toInt(),
      landlord: json['landlord'] == null
          ? null
          : Landlord.fromJson(json['landlord'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PropertyDetailModelImplToJson(
        _$PropertyDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'pricePerNight': instance.pricePerNight,
      'imageUrl': instance.imageUrl,
      'bedrooms': instance.bedrooms,
      'bathrooms': instance.bathrooms,
      'guests': instance.guests,
      'landlord': instance.landlord,
    };

_$LandlordImpl _$$LandlordImplFromJson(Map<String, dynamic> json) =>
    _$LandlordImpl(
      id: json['id'] as String,
      name: json['name'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
    );

Map<String, dynamic> _$$LandlordImplToJson(_$LandlordImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
    };
