import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/features/profile/data/model/user_details.dart';
import 'package:nepstayapp/features/profile/domain/usecase/get_use_case/get_profile_usecase.dart';
import 'package:nepstayapp/features/profile/domain/usecase/post_use_case/post_update_use_case.dart';
import 'package:nepstayapp/injection_container.dart';

class ProfileNotifier extends StateNotifier<UserDetailsState> {
  final GetProfileUsecase getProfileUsecase;
  final PostUpdateUseCase postUpdateUseCase;
  ProfileNotifier(
      {required this.getProfileUsecase, required this.postUpdateUseCase})
      : super(const UserDetailsState.initial());

  Future<void> getUserDetails(int userId) async {
    try {
      state = const UserDetailsState.loading();
      final data = await getProfileUsecase.call();

      // Debugging: Print data
      print("Fetched User Data: $data");

      if (data == null) {
        state = const UserDetailsState.error("No user data found");
      } else {
        state = UserDetailsState.loaded(user: data);
      }
    } catch (e) {
      print("Error fetching user details: $e");
      state = const UserDetailsState.error("Something went wrong");
    }
  }

  Future<void> updateUserDetails(UserDetails user) async {
    try {
      state = const UserDetailsState.loading();
      final isSuccess = await postUpdateUseCase.call(user); // Expecting bool

      // Debugging: Print data
      print("Update success: $isSuccess");

      if (isSuccess) {
        // If the update is successful, show loaded state with success flag
        state = UserDetailsState.loaded(user: user, isSuccess: true);
      } else {
        // If update fails, still transition to loaded state but set isSuccess to false
        state = UserDetailsState.loaded(user: user, isSuccess: false);
      }
    } catch (e) {
      print("Error updating user details: $e");
      state = const UserDetailsState.error("Something went wrong");
    }
  }
}

final profileProvider =
    StateNotifierProvider<ProfileNotifier, UserDetailsState>((ref) {
  final getProfileUsecase = sl<GetProfileUsecase>();
  return ProfileNotifier(
      getProfileUsecase: getProfileUsecase, postUpdateUseCase: sl());
});
