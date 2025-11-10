import 'package:lib_core/lib_core.dart';
import 'package:mocktail/mocktail.dart';
import 'package:task/src/data/datasources/datasources.dart';
import 'package:task/src/domain/repositories/i_task_repository.dart';

class MockILocalDatabaseRepository extends Mock implements ILocalDatabaseRepository {}

class MockILoggerRepository extends Mock implements ILoggerRepository {}

class MockIUuidRepository extends Mock implements IUuidRepository {}

class MockITaskLocalDatasource extends Mock implements ITaskLocalDatasource {}

class MockITaskRepository extends Mock implements ITaskRepository {}
