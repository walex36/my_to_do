import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lib_core/lib_core.dart';
import 'package:lib_dependencies/lib_dependencies.dart';
import 'package:mocktail/mocktail.dart';
import 'package:task/src/domain/enums/state_task_enum.dart';
import 'package:task/src/domain/errors/erros.dart';
import 'package:task/src/domain/repositories/i_task_repository.dart';
import 'package:task/src/presentation/controller/task_controller/task_bloc.dart';

import '../../../../mocks/classe_mock.dart';
import '../../../../mocks/task_mock.dart';

void main() {
  late ITaskRepository taskRepository;

  setUp(() {
    taskRepository = MockITaskRepository();
  });
  group('TaskBloc', () {
    group('TaskInitEvent', () {
      blocTest(
        'emits TaskLoadingState',
        build: () => TaskBloc(taskRepository: taskRepository),
        setUp: () {
          when(
            () => taskRepository.getTasks(rowsPerPage: 20, page: 0),
          ).thenAnswer((_) => Future.value(Success(PaginatedResponse(data: [], total: 0))));
        },
        act: (bloc) => bloc.add(TaskInitEvent(state: null)),
        expect: () => [TaskLoadedState(tasks: [], page: 0, moreData: false, stateTaskSelected: null)],
      );

      blocTest(
        'emits TaskErrorState',
        build: () => TaskBloc(taskRepository: taskRepository),
        setUp: () {
          when(
            () => taskRepository.getTasks(rowsPerPage: 20, page: 0),
          ).thenAnswer((_) => Future.value(Failure(TaskFailure())));
        },
        act: (bloc) => bloc.add(TaskInitEvent(state: null)),
        expect: () => [TaskErrorState(failure: TaskFailure())],
      );
    });

    group('TaskLoadMoreEvent', () {
      blocTest(
        'emits TaskLoadedState',
        build: () => TaskBloc(taskRepository: taskRepository),
        seed: () => TaskLoadedState(tasks: [], page: 1, moreData: true, stateTaskSelected: null),
        setUp: () {
          when(
            () => taskRepository.getTasks(rowsPerPage: 20, page: 2),
          ).thenAnswer((_) => Future.value(Success(PaginatedResponse(data: [], total: 0))));
        },
        act: (bloc) => bloc.add(TaskLoadMoreEvent(state: null, page: 1)),
        expect: () => [TaskLoadedState(tasks: [], page: 2, moreData: false, stateTaskSelected: null)],
      );

      blocTest(
        'emits TaskErrorState',
        build: () => TaskBloc(taskRepository: taskRepository),
        seed: () => TaskLoadedState(tasks: [], page: 1, moreData: true, stateTaskSelected: null),
        setUp: () {
          when(
            () => taskRepository.getTasks(rowsPerPage: 20, page: 2),
          ).thenAnswer((_) => Future.value(Failure(TaskFailure())));
        },
        act: (bloc) => bloc.add(TaskLoadMoreEvent(state: null, page: 1)),
        expect: () => [TaskErrorState(failure: TaskFailure())],
      );
    });

    group('TaskChangeStateEvent', () {
      blocTest(
        'emits TaskLoadedState',
        build: () => TaskBloc(taskRepository: taskRepository),
        seed: () => TaskLoadedState(tasks: listTaskMock, page: 1, moreData: true, stateTaskSelected: null),
        setUp: () {
          when(
            () => taskRepository.changeStateTask(hash: listTaskMock.first.hash, state: StateTask.done),
          ).thenAnswer((_) => Future.value(Success(true)));
        },
        act: (bloc) => bloc.add(TaskChangeStateEvent(hash: listTaskMock.first.hash, state: StateTask.done)),
        expect: () => [
          TaskLoadedState(
            tasks: [
              listTaskMock.first.copyWith(state: StateTask.done),
              ...listTaskMock.sublist(1),
            ],
            page: 1,
            moreData: true,
            stateTaskSelected: null,
          ),
        ],
      );

      blocTest(
        'emits TaskErrorState',
        build: () => TaskBloc(taskRepository: taskRepository),
        seed: () => TaskLoadedState(tasks: listTaskMock, page: 1, moreData: true, stateTaskSelected: null),
        setUp: () {
          when(
            () => taskRepository.changeStateTask(hash: listTaskMock.first.hash, state: StateTask.done),
          ).thenAnswer((_) => Future.value(Failure(TaskFailure())));
        },
        act: (bloc) => bloc.add(TaskChangeStateEvent(hash: listTaskMock.first.hash, state: StateTask.done)),
        expect: () => [TaskErrorState(failure: TaskFailure())],
      );
    });

    group('TaskDeleteEvent', () {
      blocTest(
        'emits TaskLoadedState',
        build: () => TaskBloc(taskRepository: taskRepository),
        seed: () => TaskLoadedState(tasks: listTaskMock, page: 1, moreData: true, stateTaskSelected: null),
        setUp: () {
          when(
            () => taskRepository.deleteTask(hash: listTaskMock.first.hash),
          ).thenAnswer((_) => Future.value(Success(true)));
        },
        act: (bloc) => bloc.add(TaskDeleteEvent(hash: listTaskMock.first.hash)),
        expect: () => [
          TaskLoadedState(
            tasks: listTaskMock.where((e) => e.hash != listTaskMock.first.hash).toList(),
            page: 1,
            moreData: true,
            stateTaskSelected: null,
          ),
        ],
      );

      blocTest(
        'emits TaskErrorState',
        build: () => TaskBloc(taskRepository: taskRepository),
        seed: () => TaskLoadedState(tasks: listTaskMock, page: 1, moreData: true, stateTaskSelected: null),
        setUp: () {
          when(
            () => taskRepository.deleteTask(hash: listTaskMock.first.hash),
          ).thenAnswer((_) => Future.value(Failure(TaskFailure())));
        },
        act: (bloc) => bloc.add(TaskDeleteEvent(hash: listTaskMock.first.hash)),
        expect: () => [TaskErrorState(failure: TaskFailure())],
      );
    });
  });
}
