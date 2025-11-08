import 'package:lib_core/lib_core.dart';
import 'package:task/src/data/datasources/i_local_datasource.dart';
import 'package:task/src/data/models/task_model.dart';
import 'package:task/src/domain/enums/enums.dart';

class LocalDatasource extends ILocalDatasource {
  final ILocalDatabaseRepository _database;
  final ILoggerRepository _logger;

  LocalDatasource({required ILocalDatabaseRepository database, required ILoggerRepository logger})
    : _database = database,
      _logger = logger;

  final keyListTask = 'list_task';
  String keyListTaskState({required StateTask state}) => 'list_task_state_${state.name}';

  @override
  Future<void> deleteTask({required String hash}) async {
    try {
      for (var state in StateTask.values) {
        await _database.removeStringInList(
          key: keyListTaskState(state: state),
          value: hash,
        );
      }
      await _database.removeStringInList(key: keyListTask, value: hash);
      return await _database.remove(key: hash);
    } catch (e, s) {
      _logger.error(message: e.toString(), stackTrace: s);
      throw LocalDatabaseException();
    }
  }

  @override
  Future<PaginatedResponse<TaskModel>> getTasks({String? hash, required int rowsPerPage, required int page}) async {
    try {
      if (hash != null) {
        final task = await _database.getString(key: hash);
        if (task != null) return PaginatedResponse(data: [TaskModel.fromJson(task)], total: 1);
      }

      final List<String> list = await _database.getListString(key: keyListTask);

      if (list.isEmpty) return PaginatedResponse(data: [], total: 0);

      final start = (page - 1) * rowsPerPage;
      final end = start + rowsPerPage;
      final listPage = list.sublist(start, end);

      final tasks = listPage.map((e) => TaskModel.fromJson(e)).toList();

      return PaginatedResponse(data: tasks, total: list.length);
    } catch (e, s) {
      _logger.error(message: e.toString(), stackTrace: s);
      throw LocalDatabaseException();
    }
  }

  @override
  Future<void> setTask({required TaskModel task}) async {
    try {
      print(task.toJson());
      await _database.setString(key: task.hash, value: task.toJson());
      await _database.setStringInList(key: keyListTask, value: task.hash);
      await _database.setStringInList(
        key: keyListTaskState(state: task.state),
        value: task.hash,
      );
      return;
    } catch (e, s) {
      _logger.error(message: e.toString(), stackTrace: s);
      throw LocalDatabaseException();
    }
  }

  @override
  Future<void> changeStateTask({required String hash, required StateTask state}) async {
    try {
      for (var currentState in StateTask.values) {
        await _database.removeStringInList(
          key: keyListTaskState(state: currentState),
          value: hash,
        );
      }

      return await _database.setStringInList(
        key: keyListTaskState(state: state),
        value: hash,
      );
    } catch (e, s) {
      _logger.error(message: e.toString(), stackTrace: s);
      throw LocalDatabaseException();
    }
  }
}
