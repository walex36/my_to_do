import 'package:lib_core/lib_core.dart';
import 'package:mocktail/mocktail.dart';
import 'package:task/src/data/datasources/datasources.dart';

class MockILocalDatabaseRepository extends Mock implements ILocalDatabaseRepository {}

class MockILoggerRepository extends Mock implements ILoggerRepository {}

class MockIUuidRepository extends Mock implements IUuidRepository {}

class MockILocalDatasource extends Mock implements ILocalDatasource {}
