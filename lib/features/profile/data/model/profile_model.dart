import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_model.freezed.dart';

@freezed
class UploadImageModel with _$UploadImageModel {
  const factory UploadImageModel({PlatformFile? image, String? profileType}) =
      _UploadImageModel;
}
