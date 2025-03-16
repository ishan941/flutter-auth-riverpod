import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/features/profile/data/model/kyc/kyc_model.dart';
import 'package:nepstayapp/features/profile/data/model/user_details.dart';
import 'package:nepstayapp/features/profile/domain/usecase/get_use_case/get_profile_usecase.dart';
import 'package:nepstayapp/features/profile/domain/usecase/post_use_case/post_update_use_case.dart';
import 'package:nepstayapp/features/profile/domain/usecase/post_use_case/verify_use_case.dart';
import 'package:nepstayapp/injection_container.dart';

class ProfileNotifier extends StateNotifier<UserDetailsState> {
  final GetProfileUsecase getProfileUsecase;
  final PostUpdateUseCase postUpdateUseCase;
  final VerifyUseCase verifyUseCase;
  ProfileNotifier(
      {required this.getProfileUsecase,
      required this.postUpdateUseCase,
      required this.verifyUseCase})
      : super(const UserDetailsState.initial());

  Future<void> getUserDetails(int userId) async {
    try {
      state = const UserDetailsState.loading();
      final data = await getProfileUsecase.call();

      if (data == null) {
        state = const UserDetailsState.error("No user data found");
      } else {
        state = UserDetailsState.loaded(user: data);
      }
    } catch (e) {
      state = const UserDetailsState.error("Something went wrong");
    }
  }

  Future<void> updateUserDetails(UserDetails user) async {
    try {
      state = const UserDetailsState.loading();
      final isSuccess = await postUpdateUseCase.call(user);

      if (isSuccess) {
        state = UserDetailsState.loaded(user: user, isSuccess: true);
      } else {
        state = UserDetailsState.loaded(user: user, isSuccess: false);
      }
    } catch (e) {
      state = const UserDetailsState.error("Something went wrong");
    }
  }

  Future<void> submitKycVefification(KycModel kyc) async {
    try {
      state = const UserDetailsState.loading();
      final isSuccess = await verifyUseCase.call(kyc);

      if (isSuccess) {
        state = UserDetailsState.success(isSuccess: false);
      } else {
        state = UserDetailsState.success(isSuccess: false);
      }
    } catch (e) {
      state = const UserDetailsState.error("Something went wrong");
    }
  }
}

final profileProvider =
    StateNotifierProvider<ProfileNotifier, UserDetailsState>((ref) {
  final getProfileUsecase = sl<GetProfileUsecase>();
  return ProfileNotifier(
      getProfileUsecase: getProfileUsecase,
      postUpdateUseCase: sl(),
      verifyUseCase: sl());
});
