import 'package:nepstayapp/core/utils/shared_preference.dart';

class TokenService {
  String _accessToken = '';
  int _userId = 0;
  final SharedPref sharedPref;

  String get accessToken => _accessToken;
  int get userId => _userId;

  TokenService({required this.sharedPref}) {
    _init();
  }

  Future<void> _init() async {
    _accessToken = sharedPref.readStringValFrmPreference(accessTokenKey);
    _userId = sharedPref.readIntValFrmPreference(userIdKey);
  }

  void updateAccessToken(String newAccessToken) {
    _accessToken = newAccessToken;
    sharedPref.saveDataToPreference(accessTokenKey, newAccessToken);
  }

  void updateUserId(int newUserId) {
    _userId = newUserId;
    sharedPref.saveDataToPreference(userIdKey, newUserId);
  }
}
