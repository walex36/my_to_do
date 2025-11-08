import 'package:lib_core/src/database/i_local_database.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalDatabase extends ILocalDatabase {
  late final SharedPreferencesAsync _instance;

  @override
  void init() {
    _instance = SharedPreferencesAsync();
  }

  @override
  Future<int?> getInt(String key) async {
    return await _instance.getInt(key);
  }

  @override
  Future<String?> getString(String key) async {
    return await _instance.getString(key);
  }

  @override
  Future<void> setInt(String key, int value) async {
    await _instance.setInt(key, value);
  }

  @override
  Future<void> setString(String key, String value) async {
    await _instance.setString(key, value);
  }
}
