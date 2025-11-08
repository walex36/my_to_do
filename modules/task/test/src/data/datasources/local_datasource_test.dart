import 'package:flutter_test/flutter_test.dart';
import 'package:lib_core/lib_core.dart';
import 'package:mocktail/mocktail.dart';
import 'package:task/src/data/datasources/local_datasource.dart';

import '../../../mocks/classe_mock.dart';
import '../../../mocks/model_mock.dart';
import '../../../mocks/string_mock.dart';

void main() {
  late ILocalDatabaseRepository database;
  late ILoggerRepository logger;
  late LocalDatasource localDatasource;

  setUp(() {
    database = MockILocalDatabaseRepository();
    logger = MockILoggerRepository();
    localDatasource = LocalDatasource(database: database, logger: logger);
    TaskDateTime.customTime = DateTime.now();
  });
  group('LocalDatasource', () {
    group('setTask', () {
      test('Should success to set task', () async {
        /// arrange
        when(
          () => database.setString(
            key: any(named: 'key'),
            value: any(named: 'value'),
          ),
        ).thenAnswer((_) async {});
        when(
          () => database.setStringInList(
            key: any(named: 'key'),
            value: any(named: 'value'),
          ),
        ).thenAnswer((_) async {});

        /// act
        final result = localDatasource.setTask(task: taskModelMock);

        /// assert
        expect(result, isA<Future<void>>());
        verify(() => database.setString(key: taskModelMock.hash, value: taskStringMock)).called(1);
        verify(() => database.setStringInList(key: keyListTaskMock, value: taskModelMock.hash)).called(1);
        verify(
          () => database.setStringInList(
            key: keyListTaskStateMock(state: taskModelMock.state),
            value: taskModelMock.hash,
          ),
        ).called(1);
      });

      test('Should throw LocalDatabaseException', () async {
        /// arrange
        when(
          () => database.setString(
            key: any(named: 'key'),
            value: any(named: 'value'),
          ),
        ).thenThrow(LocalDatabaseException());
        when(
          () => database.setStringInList(
            key: any(named: 'key'),
            value: any(named: 'value'),
          ),
        ).thenThrow(LocalDatabaseException());

        /// act
        final result = localDatasource.setTask(task: taskModelMock);

        /// assert
        expect(result, throwsA(isA<LocalDatabaseException>()));
      });
    });
  });
}
