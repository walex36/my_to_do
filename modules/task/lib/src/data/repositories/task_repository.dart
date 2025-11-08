import 'package:lib_core/lib_core.dart';
import 'package:lib_dependencies/lib_dependencies.dart';
import 'package:task/src/data/datasources/i_local_datasource.dart';
import 'package:task/src/data/models/task_model.dart';
import 'package:task/src/domain/entities/task_entity.dart';
import 'package:task/src/domain/enums/state_task_enum.dart';
import 'package:task/src/domain/errors/task_failure_error.dart';
import 'package:task/src/domain/repositories/i_task_repository.dart';

class TaskRepository implements ITaskRepository {
  final ILocalDatasource _localDatasource;
  final ILoggerRepository _logger;
  final IUuidRepository _uuidRepository;

  TaskRepository({
    required ILocalDatasource localDatasource,
    required ILoggerRepository logger,
    required IUuidRepository uuidRepository,
  }) : _localDatasource = localDatasource,
       _logger = logger,
       _uuidRepository = uuidRepository;

  @override
  Future<ResultDart<void, TaskFailure>> changeStateTask({required String hash, required StateTask state}) async {
    try {
      await _localDatasource.changeStateTask(hash: hash, state: state);
      return Success(true);
    } on LocalDatabaseException {
      return Failure(TaskFailureNotUpdate());
    } catch (e, s) {
      _logger.error(message: e.toString(), stackTrace: s);
      return Failure(TaskFailureUnknown());
    }
  }

  @override
  Future<ResultDart<void, TaskFailure>> createTask({required String description}) async {
    try {
      final dateTime = TaskDateTime.now();
      final hash = _uuidRepository.generateV5(name: dateTime.millisecondsSinceEpoch.toString());
      final taskModel = TaskModel(hash: hash, description: description, state: StateTask.todo, createdAt: dateTime);
      await _localDatasource.setTask(task: taskModel);
      return Success(true);
    } on LocalDatabaseException {
      return Failure(TaskFailureNotCreate());
    } catch (e, s) {
      _logger.error(message: e.toString(), stackTrace: s);
      return Failure(TaskFailureUnknown());
    }
  }

  @override
  Future<ResultDart<void, TaskFailure>> deleteTask({required Task task}) async {
    try {
      await _localDatasource.deleteTask(hash: task.hash);
      return Success(true);
    } on LocalDatabaseException {
      return Failure(TaskFailureNotDelete());
    } catch (e, s) {
      _logger.error(message: e.toString(), stackTrace: s);
      return Failure(TaskFailureUnknown());
    }
  }

  @override
  Future<ResultDart<PaginatedResponse<Task>, TaskFailure>> getTasks({
    String? hash,
    required int rowsPerPage,
    required int page,
  }) async {
    try {
      final tasksModel = await _localDatasource.getTasks(hash: hash, rowsPerPage: rowsPerPage, page: page);
      final result = PaginatedResponse(
        data: tasksModel.data.map((e) => e.toEntity()).toList(),
        total: tasksModel.total,
      );
      return Success(result);
    } on LocalDatabaseException {
      return Failure(TaskFailureNotFound());
    } catch (e, s) {
      _logger.error(message: e.toString(), stackTrace: s);
      return Failure(TaskFailureUnknown());
    }
  }

  @override
  Future<ResultDart<void, TaskFailure>> updateTask({required Task task}) async {
    try {
      await _localDatasource.setTask(task: TaskModel.fromEntity(task));
      return Success(true);
    } on LocalDatabaseException {
      return Failure(TaskFailureNotUpdate());
    } catch (e, s) {
      _logger.error(message: e.toString(), stackTrace: s);
      return Failure(TaskFailureUnknown());
    }
  }
}
