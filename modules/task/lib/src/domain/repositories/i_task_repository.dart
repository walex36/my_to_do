import 'package:lib_core/lib_core.dart';
import 'package:lib_dependencies/lib_dependencies.dart';
import 'package:task/src/domain/entities/entities.dart';
import 'package:task/src/domain/enums/enums.dart';
import 'package:task/src/domain/errors/erros.dart';

abstract class ITaskRepository {
  Future<ResultDart<PaginatedResponse<Task>, TaskFailure>> getTasks({
    String? hash,
    StateTask? state,
    required int rowsPerPage,
    required int page,
  });
  Future<ResultDart<Task, TaskFailure>> createTask({required String description});
  Future<ResultDart<void, TaskFailure>> updateTask({required Task task});
  Future<ResultDart<void, TaskFailure>> deleteTask({required String hash});
  Future<ResultDart<void, TaskFailure>> changeStateTask({required String hash, required StateTask state});
}
