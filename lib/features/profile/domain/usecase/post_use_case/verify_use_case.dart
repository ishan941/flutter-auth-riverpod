import 'package:nepstayapp/core/usecase/usecase.dart';
import 'package:nepstayapp/features/profile/data/model/kyc/kyc_model.dart';
import 'package:nepstayapp/features/profile/domain/repository/profile_repository.dart';

class VerifyUseCase extends UseCase<String, KycModel> {
  final ProfileRepository profilerepo;

  VerifyUseCase({required this.profilerepo});

  Future<bool> call(KycModel kyc) async {
    return await profilerepo.verifyKycRepo(kyc);
  }
}
