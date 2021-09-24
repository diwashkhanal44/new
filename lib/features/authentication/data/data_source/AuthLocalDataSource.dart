import 'package:shared_preferences/shared_preferences.dart';
import 'package:you/features/authentication/data/models/UserProfile.dart';

class AuthLocalDataSource {
  final SharedPreferences _sharedPreferences;

  AuthLocalDataSource({required SharedPreferences sharedPreferences})
      : _sharedPreferences = sharedPreferences;

  UserProfile? getLocalProfileData() {
    final profileData = _sharedPreferences.getString(_profileSaveKey);
    if (profileData != null) return userProfileFromJson(profileData);
  }

  Future<void> setLocalProfileData(UserProfile userProfile) async {
    await _sharedPreferences.setString(
        _profileSaveKey, userProfileToJson(userProfile));
  }
}

const String _profileSaveKey = "PROFILE";
