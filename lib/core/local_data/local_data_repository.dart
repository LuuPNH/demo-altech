import 'package:encrypt_shared_preferences/provider.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/constants.dart';

@lazySingleton
class LocalDataRepository {
  LocalDataRepository({
    required SharedPreferences sharedPreferences,
    required EncryptedSharedPreferences encryptedSharedPreferences,
  }) : _sharedPreferences = sharedPreferences,
       _encryptedSharedPreferences = encryptedSharedPreferences;

  final SharedPreferences _sharedPreferences;
  final EncryptedSharedPreferences _encryptedSharedPreferences;

  static const _tokenKey = SharedPreferenceKeys.token;

  Future<void> clearAll() async {
    await _sharedPreferences.clear();
  }

  Future<void> saveToken(String? value) async {
    if (value == null) {
      await _encryptedSharedPreferences.remove(_tokenKey);
    } else {
      await _encryptedSharedPreferences.setString(_tokenKey, value);
    }
  }

  String get token => _encryptedSharedPreferences.getString(_tokenKey) ?? '';

}
