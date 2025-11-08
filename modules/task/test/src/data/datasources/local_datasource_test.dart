import 'package:flutter_test/flutter_test.dart';
import 'package:lib_core/lib_core.dart';
import 'package:mocktail/mocktail.dart';
import 'package:task/src/data/datasources/local_datasource.dart';
import 'package:task/src/data/models/models.dart';
import 'package:task/src/domain/enums/enums.dart';

import '../../../mocks/classe_mock.dart';
import '../../../mocks/task_mock.dart';
import '../../../mocks/string_mock.dart';

void main() {
  late ILocalDatabaseRepository database;
  late ILoggerRepository logger;
  late LocalDatasource localDatasource;

  setUpAll(() {
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

    group('getTasks', () {
      test('Should success to get tasks by hash', () async {
        /// arrange
        when(() => database.getString(key: any(named: 'key'))).thenAnswer((_) async => taskStringMock);

        /// act
        final result = await localDatasource.getTasks(hash: 'hash', rowsPerPage: 10, page: 1);

        /// assert
        expect(result, isA<PaginatedResponse<TaskModel>>());
        expect(result.data, isA<List<TaskModel>>());
        expect(result.total, 1);
        expect(result.data, [taskModelMock]);
      });

      test('Should throw LocalDatabaseException when get tasks by hash', () async {
        /// arrange
        when(() => database.getString(key: any(named: 'key'))).thenThrow(LocalDatabaseException());

        /// act
        final result = localDatasource.getTasks(hash: 'hash', rowsPerPage: 10, page: 1);

        /// assert
        expect(result, throwsA(isA<LocalDatabaseException>()));
      });

      test('Should success to get all tasks', () async {
        /// arrange
        when(() => database.getListString(key: any(named: 'key'))).thenAnswer((_) async => listHashStringMock);

        when(() => database.getString(key: taskModelMock.hash)).thenAnswer((_) async => taskStringMock);

        when(() => database.getString(key: taskModelMock2.hash)).thenAnswer((_) async => taskStringMock2);

        /// act
        final result = await localDatasource.getTasks(hash: null, rowsPerPage: 10, page: 1);

        /// assert
        expect(result, isA<PaginatedResponse<TaskModel>>());
        expect(result.data, isA<List<TaskModel>>());
        expect(result.total, 2);
        expect(result.data, listTaskModelMock);
      });

      test('Should throw LocalDatabaseException when get all tasks', () async {
        /// arrange
        when(() => database.getListString(key: any(named: 'key'))).thenThrow(LocalDatabaseException());

        /// act
        final result = localDatasource.getTasks(hash: null, rowsPerPage: 10, page: 1);

        /// assert
        expect(result, throwsA(isA<LocalDatabaseException>()));
      });
    });

    group('deleteTask', () {
      test('Should success to delete task', () async {
        /// arrange
        when(() => database.remove(key: any(named: 'key'))).thenAnswer((_) async {});
        when(
          () => database.removeStringInList(
            key: any(named: 'key'),
            value: any(named: 'value'),
          ),
        ).thenAnswer((_) async {});

        /// act
        final result = localDatasource.deleteTask(hash: 'hash');

        /// assert
        expect(result, isA<Future<void>>());
      });

      test('Should throw LocalDatabaseException', () async {
        /// arrange
        when(() => database.remove(key: any(named: 'key'))).thenThrow(LocalDatabaseException());
        when(
          () => database.removeStringInList(
            key: any(named: 'key'),
            value: any(named: 'value'),
          ),
        ).thenThrow(LocalDatabaseException());

        /// act
        final result = localDatasource.deleteTask(hash: 'hash');

        /// assert
        expect(result, throwsA(isA<LocalDatabaseException>()));
      });
    });

    group('changeStateTask', () {
      test('Should success to change state task', () async {
        /// arrange
        when(
          () => database.removeStringInList(
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
        final result = localDatasource.changeStateTask(hash: taskModelMock.hash, state: StateTask.done);

        /// assert
        expect(result, isA<Future<void>>());
      });

      test('Should throw LocalDatabaseException', () async {
        /// arrange
        when(
          () => database.removeStringInList(
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
        final result = localDatasource.changeStateTask(hash: taskModelMock.hash, state: StateTask.done);

        /// assert
        expect(result, throwsA(isA<LocalDatabaseException>()));
      });
    });
  });
}
