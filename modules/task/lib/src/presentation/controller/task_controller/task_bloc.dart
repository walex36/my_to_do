import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lib_core/lib_core.dart';
import 'package:lib_dependencies/lib_dependencies.dart';
import 'package:task/src/domain/entities/entities.dart';
import 'package:task/src/domain/enums/enums.dart';
import 'package:task/src/domain/repositories/i_task_repository.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final ITaskRepository _taskRepository;

  TaskBloc({required ITaskRepository taskRepository}) : _taskRepository = taskRepository, super(TaskLoadingState()) {
    on<TaskInitEvent>(_onTaskInitEvent);
    on<TaskLoadMoreEvent>(_onTaskLoadMoreEvent);
    on<TaskChangeStateEvent>(_onTaskChangeStateEvent);
    on<TaskCreateEvent>(_onTaskCreateEvent);
    on<TaskDeleteEvent>(_onTaskDeleteEvent);
  }

  Future<void> _onTaskInitEvent(TaskInitEvent event, Emitter<TaskState> emit) async {
    final result = await _taskRepository.getTasks(state: event.state, rowsPerPage: 20, page: 0);

    result.fold(
      (tasks) => emit(
        TaskLoadedState(
          tasks: tasks.data,
          page: 0,
          moreData: tasks.total > tasks.data.length,
          stateTaskSelected: event.state,
        ),
      ),
      (failure) => emit(TaskErrorState(failure: failure)),
    );
  }

  Future<void> _onTaskLoadMoreEvent(TaskLoadMoreEvent event, Emitter<TaskState> emit) async {
    final stateCurrent = state as TaskLoadedState;
    final page = stateCurrent.page + 1;

    final result = await _taskRepository.getTasks(state: event.state, rowsPerPage: 20, page: page);

    result.fold(
      (tasks) => emit(
        TaskLoadedState(
          tasks: tasks.data,
          page: page,
          moreData: tasks.total > tasks.data.length,
          stateTaskSelected: stateCurrent.stateTaskSelected,
        ),
      ),
      (failure) => emit(TaskErrorState(failure: failure)),
    );
  }

  Future<void> _onTaskChangeStateEvent(TaskChangeStateEvent event, Emitter<TaskState> emit) async {
    final stateCurrent = state as TaskLoadedState;
    final result = await _taskRepository.changeStateTask(hash: event.hash, state: event.state);

    result.fold((tasks) {
      List<Task> listTaskCurrent = [];
      if (stateCurrent.stateTaskSelected == null) {
        final taskCurrent = stateCurrent.tasks
            .firstWhere((element) => element.hash == event.hash)
            .copyWith(state: event.state);
        listTaskCurrent = _updateListTask(stateCurrent.tasks, taskCurrent);
      } else {
        listTaskCurrent = stateCurrent.tasks.where((e) => e.hash != event.hash).toList();
      }
      emit(
        TaskLoadedState(
          tasks: listTaskCurrent,
          page: stateCurrent.page,
          moreData: stateCurrent.moreData,
          stateTaskSelected: stateCurrent.stateTaskSelected,
        ),
      );
    }, (failure) => emit(TaskErrorState(failure: failure)));
  }

  Future<void> _onTaskDeleteEvent(TaskDeleteEvent event, Emitter<TaskState> emit) async {
    final stateCurrent = state as TaskLoadedState;

    final result = await _taskRepository.deleteTask(hash: event.hash);

    result.fold((tasks) {
      final tasksNew = stateCurrent.tasks.where((e) => e.hash != event.hash).toList();

      emit(
        TaskLoadedState(
          tasks: tasksNew,
          page: stateCurrent.page,
          moreData: stateCurrent.moreData,
          stateTaskSelected: stateCurrent.stateTaskSelected,
        ),
      );
    }, (failure) => emit(TaskErrorState(failure: failure)));
  }

  Future<void> _onTaskCreateEvent(TaskCreateEvent event, Emitter<TaskState> emit) async {
    final stateCurrent = state as TaskLoadedState;
    final result = await _taskRepository.createTask(description: event.description);

    result.fold((task) {
      final listTaskCurrent = stateCurrent.tasks;
      if (!stateCurrent.moreData) listTaskCurrent.add(task);

      emit(
        TaskLoadedState(
          tasks: listTaskCurrent,
          page: stateCurrent.page,
          moreData: stateCurrent.moreData,
          stateTaskSelected: stateCurrent.stateTaskSelected,
        ),
      );
    }, (failure) => emit(TaskErrorState(failure: failure)));
  }
}

List<Task> _updateListTask(List<Task> tasks, Task taskNew) {
  final tasksNew = tasks.map((e) => e.hash == taskNew.hash ? taskNew : e).toList();
  return tasksNew;
}
