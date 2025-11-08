import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lib_core/lib_core.dart';
import 'package:lib_dependencies/lib_dependencies.dart';
import 'package:mocktail/mocktail.dart';
import 'package:task/src/domain/enums/state_task_enum.dart';
import 'package:task/src/domain/errors/erros.dart';
import 'package:task/src/domain/repositories/i_task_repository.dart';
import 'package:task/src/presentation/controller/task_controller/task_bloc.dart';

import '../../../../mocks/classe_mock.dart';
import '../../../../mocks/model_mock.dart';

void main() {
  late ITaskRepository taskRepository;

  setUpAll(() {
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
        expect: () => [TaskLoadingState(), TaskLoadedState(tasks: [], page: 0, moreData: false)],
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
        expect: () => [TaskLoadingState(), TaskErrorState(failure: TaskFailure())],
      );
    });

    group('TaskLoadMoreEvent', () {
      blocTest(
        'emits TaskLoadedState',
        build: () => TaskBloc(taskRepository: taskRepository),
        seed: () => TaskLoadedState(tasks: [], page: 1, moreData: true),
        setUp: () {
          when(
            () => taskRepository.getTasks(rowsPerPage: 20, page: 2),
          ).thenAnswer((_) => Future.value(Success(PaginatedResponse(data: [], total: 0))));
        },
        act: (bloc) => bloc.add(TaskLoadMoreEvent(state: null, page: 1)),
        expect: () => [TaskLoadedState(tasks: [], page: 2, moreData: false)],
      );

      blocTest(
        'emits TaskErrorState',
        build: () => TaskBloc(taskRepository: taskRepository),
        seed: () => TaskLoadedState(tasks: [], page: 1, moreData: true),
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
        seed: () => TaskLoadedState(tasks: listTaskModelMock, page: 1, moreData: true),
        setUp: () {
          when(
            () => taskRepository.changeStateTask(hash: listTaskModelMock.first.hash, state: StateTask.done),
          ).thenAnswer((_) => Future.value(Success(true)));
        },
        act: (bloc) => bloc.add(TaskChangeStateEvent(hash: listTaskModelMock.first.hash, state: StateTask.done)),
        expect: () => [
          TaskLoadedState(
            tasks: [
              listTaskModelMock.first.copyWith(state: StateTask.done),
              ...listTaskModelMock.sublist(1),
            ],
            page: 1,
            moreData: true,
          ),
        ],
      );

      blocTest(
        'emits TaskErrorState',
        build: () => TaskBloc(taskRepository: taskRepository),
        seed: () => TaskLoadedState(tasks: listTaskModelMock, page: 1, moreData: true),
        setUp: () {
          when(
            () => taskRepository.changeStateTask(hash: listTaskModelMock.first.hash, state: StateTask.done),
          ).thenAnswer((_) => Future.value(Failure(TaskFailure())));
        },
        act: (bloc) => bloc.add(TaskChangeStateEvent(hash: listTaskModelMock.first.hash, state: StateTask.done)),
        expect: () => [TaskErrorState(failure: TaskFailure())],
      );
    });

    group('TaskUpdateEvent', () {
      blocTest(
        'emits TaskLoadedState',
        build: () => TaskBloc(taskRepository: taskRepository),
        seed: () => TaskLoadedState(tasks: listTaskModelMock, page: 1, moreData: true),
        setUp: () {
          when(
            () => taskRepository.updateTask(task: listTaskModelMock.first),
          ).thenAnswer((_) => Future.value(Success(true)));
        },
        act: (bloc) => bloc.add(TaskUpdateEvent(task: listTaskModelMock.first)),
        expect: () => [
          TaskLoadedState(tasks: [listTaskModelMock.first, ...listTaskModelMock.sublist(1)], page: 1, moreData: true),
        ],
      );
    });
  });
}
