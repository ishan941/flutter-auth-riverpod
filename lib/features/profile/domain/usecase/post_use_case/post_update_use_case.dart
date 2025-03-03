import 'package:nepstayapp/features/profile/data/model/user_details.dart';
import 'package:nepstayapp/features/profile/domain/repository/profile_repository.dart';

class PostUpdateUseCase {
  final ProfileRepository profileRepository;

  PostUpdateUseCase({required this.profileRepository});
  Future<bool> call(UserDetails user) async {
    return await profileRepository.updateUserDetails(user);
  }
}
