import 'package:nepstayapp/features/profile/data/model/user_details.dart';
import 'package:nepstayapp/features/profile/domain/repository/profile_repository.dart';

class GetProfileUsecase {
  final ProfileRepository profileRepository;

  GetProfileUsecase({required this.profileRepository});
  Future<UserDetails> call(int userId) async {
    return await profileRepository.getUserDetails(userId);
  }
}
