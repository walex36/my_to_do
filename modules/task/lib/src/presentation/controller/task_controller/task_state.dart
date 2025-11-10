part of 'task_bloc.dart';

@immutable
sealed class TaskState extends Equatable {}

final class TaskLoadingState extends TaskState {
  @override
  List<Object?> get props => [];
}

final class TaskLoadedState extends TaskState {
  final List<Task> tasks;
  final int page;
  final bool moreData;
  final StateTask? stateTaskSelected;
  TaskLoadedState({required this.tasks, required this.page, required this.moreData, required this.stateTaskSelected});

  @override
  List<Object?> get props => [tasks, page, moreData, stateTaskSelected];
}

final class TaskAddState extends TaskLoadedState {
  final List<Task> newTask;
  TaskAddState({
    required this.newTask,
    required super.tasks,
    required super.page,
    required super.moreData,
    required super.stateTaskSelected,
  });

  @override
  List<Object?> get props => [newTask, tasks, page, moreData, stateTaskSelected];
}

final class TaskDeleteState extends TaskLoadedState {
  final String hash;
  TaskDeleteState({
    required this.hash,
    required super.tasks,
    required super.page,
    required super.moreData,
    required super.stateTaskSelected,
  });

  @override
  List<Object?> get props => [hash, tasks, page, moreData, stateTaskSelected];
}

final class TaskChangingStateEvent extends TaskLoadedState {
  final Task taskUpdated;
  TaskChangingStateEvent({
    required this.taskUpdated,
    required super.tasks,
    required super.page,
    required super.moreData,
    required super.stateTaskSelected,
  });

  @override
  List<Object?> get props => [taskUpdated, tasks, page, moreData, stateTaskSelected];
}

final class TaskErrorState extends TaskState {
  final IFailure failure;

  TaskErrorState({required this.failure});

  @override
  List<Object?> get props => [failure];
}
