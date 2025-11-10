import 'package:lib_core/src/domain/repositories/i_local_database_repository.dart';
import 'package:lib_dependencies/lib_dependencies.dart';

class SharedPreferencesRepository implements ILocalDatabaseRepository {
  final SharedPreferencesAsync _shared = SharedPreferencesAsync();

  @override
  Future<String?> getString({required String key}) async {
    return await _shared.getString(key);
  }

  @override
  Future<void> setString({required String key, required String value}) async {
    return await _shared.setString(key, value);
  }

  @override
  Future<int?> getInt({required String key}) async {
    return await _shared.getInt(key);
  }

  @override
  Future<void> setInt({required String key, required int value}) async {
    return await _shared.setInt(key, value);
  }

  @override
  Future<List<String>> getListString({required String key}) async {
    return await _shared.getStringList(key) ?? [];
  }

  @override
  Future<void> setStringInList({required String key, required String value}) async {
    final list = await getListString(key: key);
    if (list.contains(value)) return;
    list.add(value);
    return await _shared.setStringList(key, list);
  }

  @override
  Future<void> removeStringInList({required String key, required String value}) async {
    final list = await getListString(key: key);
    if (list.isEmpty || !list.contains(value)) return;
    return _shared.setStringList(key, list.where((element) => element != value).toList());
  }

  @override
  Future<void> remove({required String key}) {
    return _shared.remove(key);
  }
}
