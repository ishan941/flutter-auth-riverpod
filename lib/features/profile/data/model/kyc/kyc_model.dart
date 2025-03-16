import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nepstayapp/features/Auth/data/model/auth_model/user_model.dart';

part 'kyc_model.freezed.dart';
part 'kyc_model.g.dart';

@freezed
class KycModel with _$KycModel {
  factory KycModel({
    required String kycId,
    @Default([]) List<ImageModel> images,
    required String vehicleType,
    required String vehicleNumber,
    required UserModel userModel,
    @Default(false) bool isKycVerified,
    @Default("pending") String status,
  }) = _KycModel;

  factory KycModel.fromJson(Map<String, dynamic> json) =>
      _$KycModelFromJson(json);
}
