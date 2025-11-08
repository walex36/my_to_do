import 'package:lib_core/lib_core.dart';
import 'package:task/src/data/models/models.dart';
import 'package:task/src/domain/enums/enums.dart';

abstract class ILocalDatasource {
  Future<void> setTask({required TaskModel task});
  Future<PaginatedResponse<TaskModel>> getTasks({String? hash, required int rowsPerPage, required int page});
  Future<void> deleteTask({required String hash});
  Future<void> changeStateTask({required String hash, required StateTask state});
}
