// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'api_response.freezed.dart';
// part 'api_response.g.dart';

// @freezed
// @JsonSerializable(
//     genericArgumentFactories: true) // Enable generic serialization
// class ApiResponse<T> with _$ApiResponse<T> {
//   const factory ApiResponse({
//     @JsonKey(name: 'message') String? message,
//     @JsonKey(name: 'StatusCode') required int statusCode,
//     @JsonKey(name: 'Data') T? data,
//     @JsonKey(name: 'ListData') List<T>? listData,
//     @JsonKey(name: 'AccessToken') String? accessToken,
//     @JsonKey(name: 'RefreshToken') String? refreshToken,
//     @JsonKey(name: 'role') String? role,
//     @JsonKey(name: 'imageUrl') String? imageUrl,
//     @JsonKey(name: 'OTP') String? otp,
//     @JsonKey(name: 'fcmToken') String? fcmToken,
//   }) = _ApiResponse<T>;

//   factory ApiResponse.fromJson(
//     Map<String, dynamic> json,
//     T Function(Object?) fromJsonT,
//   ) =>
//       _$ApiResponseFromJson(json, fromJsonT);
// }
