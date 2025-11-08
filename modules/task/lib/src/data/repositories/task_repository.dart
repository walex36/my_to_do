import 'package:lib_core/lib_core.dart';
import 'package:lib_dependencies/lib_dependencies.dart';
import 'package:task/src/data/datasources/i_local_datasource.dart';
import 'package:task/src/domain/entities/task_entity.dart';
import 'package:task/src/domain/enums/state_task_enum.dart';
import 'package:task/src/domain/errors/task_failure_error.dart';
import 'package:task/src/domain/repositories/i_task_repository.dart';

class TaskRepository implements ITaskRepository {
  final ILocalDatasource _localDatasource;

  TaskRepository({required ILocalDatasource localDatasource}) : _localDatasource = localDatasource;

  @override
  Future<ResultDart<void, TaskFailure>> changeStateTask({required String hash, required StateTask state}) async {
    try {
      await _localDatasource.changeStateTask(hash: hash, state: state);
      return Success(true);
    } catch (e) {
      return Failure(TaskFailureNotUpdate());
    }
  }

  @override
  Future<ResultDart<void, TaskFailure>> createTask({required Task task}) {
    // TODO: implement createTask
    throw UnimplementedError();
  }

  @override
  Future<ResultDart<void, TaskFailure>> deleteTask({required Task task}) {
    // TODO: implement deleteTask
    throw UnimplementedError();
  }

  @override
  Future<ResultDart<PaginatedResponse<Task>, TaskFailure>> getTasks({
    String? hash,
    required int rowsPerPage,
    required int page,
  }) {
    // TODO: implement getTasks
    throw UnimplementedError();
  }

  @override
  Future<ResultDart<void, TaskFailure>> updateTask({required Task task}) {
    // TODO: implement updateTask
    throw UnimplementedError();
  }
}
