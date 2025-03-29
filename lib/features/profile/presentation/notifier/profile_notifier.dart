import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';
import 'package:nepstayapp/features/profile/data/model/kyc/kyc_model.dart';
import 'package:nepstayapp/features/profile/data/model/profile_model.dart';
import 'package:nepstayapp/features/profile/data/model/user_details.dart';
import 'package:nepstayapp/features/profile/domain/repository/profile_repository.dart';
import 'package:nepstayapp/features/profile/domain/usecase/get_use_case/get_profile_usecase.dart';
import 'package:nepstayapp/features/profile/domain/usecase/post_use_case/post_update_use_case.dart';
import 'package:nepstayapp/features/profile/domain/usecase/post_use_case/verify_use_case.dart';
import 'package:nepstayapp/injection_container.dart';

class ProfileNotifier extends StateNotifier<UserDetailsState> {
  final GetProfileUsecase getProfileUsecase;
  final PostUpdateUseCase postUpdateUseCase;
  final VerifyUseCase verifyUseCase;
  final ProfileRepository profileRepository;
  ProfileNotifier(
      {required this.getProfileUsecase,
      required this.postUpdateUseCase,
      required this.profileRepository,
      required this.verifyUseCase})
      : super(const UserDetailsState.initial());
  UserDetails? userDetails;
  Future<void> getUserDetails() async {
    try {
      state = const UserDetailsState.loading();
      final data = await getProfileUsecase.call();
      userDetails = data;
      state = UserDetailsState.loaded(user: userDetails);
    } catch (e) {
      state = const UserDetailsState.error(message: "Something went wrong");
    }
  }

  Future<void> updateUserDetails(UserDetails user) async {
    try {
      state = const UserDetailsState.loading();
      final isSuccess = await postUpdateUseCase.call(user);

      if (isSuccess) {
        await getUserDetails();
        state = UserDetailsState.loaded(user: user, isSuccess: true);
      } else {
        state = UserDetailsState.loaded(user: user, isSuccess: false);
      }
    } catch (e) {
      state = const UserDetailsState.error(message: "Something went wrong");
    }
  }

  Future<void> submitKycVefification(KycModel kyc) async {
    try {
      state = const UserDetailsState.loading();
      final isSuccess = await verifyUseCase.call(kyc);

      if (isSuccess) {
        state = const UserDetailsState.success(isSuccess: false);
      } else {
        state = const UserDetailsState.success(isSuccess: false);
      }
    } catch (e) {
      state = const UserDetailsState.error(message: "Something went wrong");
    }
  }

  Future<void> pickImageForUpload() async {
    try {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 1024,
        maxHeight: 1024,
        imageQuality: 85,
      );

      if (image != null) {
        final file = File(image.path);
        if (!await file.exists()) {
          throw Exception('Selected file does not exist');
        }

        state = state.copyWith(
          image: PlatformFile(
            name: image.name,
            path: image.path,
            size: await file.length(),
            bytes: await file.readAsBytes(),
          ),
        );
      }
      final response = await profileRepository.uploadProfileImage(
          image: UploadImageModel(image: state.image, profileType: "profile"));
      response.fold((failure) {
        state = UserDetailsState.error(message: failure.message.toString());
      }, (data) {
        getUserDetails();
        state = UserDetailsState.loaded(user: userDetails);
      });
    } catch (e) {
      throw Exception('Failed to pick image: ${e.toString()}');
    }
  }

  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      File file = File(image.path);
      String base64String = await convertFileToBase64(file);
      state = state.copyWith(imageUrl: base64String);
    } else {}
  }

  Future<String> convertFileToBase64(File file) async {
    List<int> fileBytes = await file.readAsBytes();
    String base64String = base64Encode(fileBytes);

    String? mimeType = lookupMimeType(file.path) ?? "application/octet-stream";

    return "data:$mimeType;base64,$base64String";
  }
}

final profileProvider =
    StateNotifierProvider<ProfileNotifier, UserDetailsState>((ref) {
  final getProfileUsecase = sl<GetProfileUsecase>();
  return ProfileNotifier(
      getProfileUsecase: getProfileUsecase,
      postUpdateUseCase: sl(),
      profileRepository: sl(),
      verifyUseCase: sl());
});
