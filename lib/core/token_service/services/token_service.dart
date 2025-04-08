import 'package:nepstayapp/core/utils/shared_preference.dart';

class TokenService {
  String _accessToken = '';
  String _userId = '';
  final SharedPref sharedPref;

  String get accessToken => _accessToken;
  String get userId => _userId;

  TokenService({required this.sharedPref}) {
    _init();
  }

  Future<void> _init() async {
    _accessToken = sharedPref.readStringValFrmPreference(accessTokenKey);
    _userId = sharedPref.readStringValFrmPreference(userIdKey);
  }

  void updateAccessToken(String newAccessToken) {
    _accessToken = newAccessToken;
    sharedPref.saveDataToPreference(accessTokenKey, newAccessToken);
  }

  void updateUserId(String newUserId) {
    _userId = newUserId;
    sharedPref.saveDataToPreference(userIdKey, newUserId);
  }
}
