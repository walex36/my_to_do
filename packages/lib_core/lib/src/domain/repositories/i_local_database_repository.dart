abstract class ILocalDatabaseRepository {
  Future<String?> getString({required String key});
  Future<int?> getInt({required String key});
  Future<List<String>> getListString({required String key});
  Future<void> setString({required String key, required String value});
  Future<void> setInt({required String key, required int value});
  Future<void> setStringInList({required String key, required String value});
  Future<void> removeStringInList({required String key, required String value});
  Future<void> remove({required String key});
}
