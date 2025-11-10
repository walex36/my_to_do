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

final class TaskErrorState extends TaskState {
  final IFailure failure;

  TaskErrorState({required this.failure});

  @override
  List<Object?> get props => [failure];
}
