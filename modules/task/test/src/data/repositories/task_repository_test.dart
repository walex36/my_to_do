import 'package:flutter_test/flutter_test.dart';
import 'package:lib_core/lib_core.dart';
import 'package:lib_dependencies/lib_dependencies.dart';
import 'package:mocktail/mocktail.dart';
import 'package:task/src/data/datasources/datasources.dart';
import 'package:task/src/data/repositories/task_repository.dart';
import 'package:task/src/domain/entities/entities.dart';
import 'package:task/src/domain/enums/enums.dart';
import 'package:task/src/domain/errors/task_failure_error.dart';

import '../../../mocks/classe_mock.dart';
import '../../../mocks/task_mock.dart';

void main() {
  late TaskRepository taskRepository;

  late ITaskLocalDatasource localDatasource;
  late ILoggerRepository logger;
  late IUuidRepository uuidRepository;

  setUpAll(() {
    localDatasource = MockITaskLocalDatasource();
    logger = MockILoggerRepository();
    uuidRepository = MockIUuidRepository();
    taskRepository = TaskRepository(localDatasource: localDatasource, logger: logger, uuidRepository: uuidRepository);
    TaskDateTime.customTime = DateTime.now();
  });

  group('TaskRepository', () {
    group('changeStateTask', () {
      test('Should success to change state task', () async {
        /// arrange
        when(
          () => localDatasource.changeStateTask(
            hash: any(named: 'hash'),
            state: StateTask.done,
          ),
        ).thenAnswer((_) async {});

        /// act
        final result = await taskRepository.changeStateTask(hash: 'hash', state: StateTask.done);

        /// assert
        expect(result, Success(true));
      });

      test('Should failure to change state task', () async {
        /// arrange
        when(
          () => localDatasource.changeStateTask(
            hash: any(named: 'hash'),
            state: StateTask.done,
          ),
        ).thenThrow(LocalDatabaseException());

        /// act
        final response = await taskRepository.changeStateTask(hash: 'hash', state: StateTask.done);

        final result = response.fold((l) => null, (r) => r);

        /// assert
        expect(result, isA<TaskFailureNotUpdate>());
      });
    });

    group('createTask', () {
      test('Should success to create task', () async {
        /// arrange
        when(() => uuidRepository.generateV5(name: any(named: 'name'))).thenReturn('hash');
        when(() => localDatasource.setTask(task: taskModelMock)).thenAnswer((_) async {});

        /// act
        final result = await taskRepository.createTask(description: 'description');

        /// assert
        expect(result, Success(true));
      });

      test('Should failure to create task', () async {
        /// arrange
        when(() => uuidRepository.generateV5(name: any(named: 'name'))).thenReturn('hash');
        when(() => localDatasource.setTask(task: taskModelMock)).thenThrow(LocalDatabaseException());

        /// act
        final response = await taskRepository.createTask(description: 'description');

        final result = response.fold((l) => null, (r) => r);

        /// assert
        expect(result, isA<TaskFailureNotCreate>());
      });
    });

    group('deleteTask', () {
      test('Should success to delete task', () async {
        /// arrange
        when(() => localDatasource.deleteTask(hash: any(named: 'hash'))).thenAnswer((_) async {});

        /// act
        final result = await taskRepository.deleteTask(hash: taskModelMock.hash);

        /// assert
        expect(result, Success(true));
      });

      test('Should failure to delete task', () async {
        /// arrange
        when(() => localDatasource.deleteTask(hash: any(named: 'hash'))).thenThrow(LocalDatabaseException());

        /// act
        final response = await taskRepository.deleteTask(hash: taskModelMock.hash);

        final result = response.fold((l) => null, (r) => r);

        /// assert
        expect(result, isA<TaskFailureNotDelete>());
      });
    });

    group('getTasks', () {
      test('Should success to get tasks with hash', () async {
        /// arrange
        when(
          () => localDatasource.getTasks(
            hash: any(named: 'hash'),
            state: any(named: 'state'),
            rowsPerPage: any(named: 'rowsPerPage'),
            page: any(named: 'page'),
          ),
        ).thenAnswer((_) async => PaginatedResponse(data: [listTaskModelMock.first], total: listTaskModelMock.length));

        /// act
        final response = await taskRepository.getTasks(hash: 'hash', rowsPerPage: 10, page: 1);
        final result = response.fold((l) => l, (r) => null);

        /// assert
        expect(result, isA<PaginatedResponse<Task>>());
        expect(result!.data, [listTaskModelMock.first.toEntity()]);
        expect(result.total, listTaskModelMock.length);
      });

      test('Should failure to get tasks with hash', () async {
        /// arrange
        when(
          () => localDatasource.getTasks(
            hash: any(named: 'hash'),
            state: any(named: 'state'),
            rowsPerPage: any(named: 'rowsPerPage'),
            page: any(named: 'page'),
          ),
        ).thenThrow(LocalDatabaseException());

        /// act
        final response = await taskRepository.getTasks(hash: 'hash', rowsPerPage: 10, page: 1);

        final result = response.fold((l) => null, (r) => r);

        /// assert
        expect(result, isA<TaskFailureNotFound>());
      });

      test('Should success to get tasks without hash', () async {
        /// arrange
        when(
          () => localDatasource.getTasks(
            hash: any(named: 'hash'),
            state: any(named: 'state'),
            rowsPerPage: any(named: 'rowsPerPage'),
            page: any(named: 'page'),
          ),
        ).thenAnswer((_) async => PaginatedResponse(data: listTaskModelMock, total: listTaskModelMock.length));

        /// act
        final response = await taskRepository.getTasks(hash: null, rowsPerPage: 10, page: 1);
        final result = response.fold((l) => l, (r) => null);

        /// assert
        expect(result, isA<PaginatedResponse<Task>>());
        expect(result!.data, listTaskModelMock.map((e) => e.toEntity()).toList());
        expect(result.total, listTaskModelMock.length);
      });

      test('Should failure to get tasks by state', () async {
        /// arrange
        final tasksDone = listTaskModelMock.where((element) => element.state == StateTask.done).toList();
        when(
          () => localDatasource.getTasks(
            hash: any(named: 'hash'),
            state: StateTask.done,
            rowsPerPage: any(named: 'rowsPerPage'),
            page: any(named: 'page'),
          ),
        ).thenAnswer((_) async => PaginatedResponse(data: tasksDone, total: tasksDone.length));

        /// act
        final response = await taskRepository.getTasks(hash: null, state: StateTask.done, rowsPerPage: 10, page: 1);

        final result = response.fold((l) => l, (r) => null);

        /// assert
        expect(result, isA<PaginatedResponse<Task>>());
        expect(result!.data, tasksDone.map((e) => e.toEntity()).toList());
        expect(result.total, tasksDone.length);
      });
    });

    group('updateTask', () {
      test('Should success to update task', () async {
        /// arrange
        when(() => localDatasource.setTask(task: taskModelMock)).thenAnswer((_) async {});

        /// act
        final result = await taskRepository.updateTask(task: taskModelMock);

        /// assert
        expect(result, Success(true));
      });

      test('Should failure to update task', () async {
        /// arrange
        when(() => localDatasource.setTask(task: taskModelMock)).thenThrow(LocalDatabaseException());

        /// act
        final response = await taskRepository.updateTask(task: taskModelMock);

        final result = response.fold((l) => null, (r) => r);

        /// assert
        expect(result, isA<TaskFailureNotUpdate>());
      });
    });
  });
}
