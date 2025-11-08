import 'package:lib_core/src/domain/repositories/i_local_database_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesRepository extends ILocalDatabaseRepository {
  late final SharedPreferencesAsync _instance;

  @override
  void init() {
    _instance = SharedPreferencesAsync();
  }

  @override
  Future<String?> getString({required String key}) async {
    return await _instance.getString(key);
  }

  @override
  Future<void> setString({required String key, required String value}) async {
    return await _instance.setString(key, value);
  }

  @override
  Future<int?> getInt({required String key}) async {
    return await _instance.getInt(key);
  }

  @override
  Future<void> setInt({required String key, required int value}) async {
    return await _instance.setInt(key, value);
  }

  @override
  Future<List<String>> getListString({required String key}) async {
    return await _instance.getStringList(key) ?? [];
  }

  @override
  Future<void> setStringInList({required String key, required String value}) async {
    final list = await getListString(key: key);
    if (list.contains(value)) return;
    list.add(value);
    return await _instance.setStringList(key, list);
  }

  @override
  Future<void> removeStringInList({required String key, required String value}) async {
    final list = await getListString(key: key);
    if (list.isEmpty || !list.contains(value)) return;
    return _instance.setStringList(key, list.where((element) => element != value).toList());
  }

  @override
  Future<void> remove({required String key}) {
    return _instance.remove(key);
  }
}
