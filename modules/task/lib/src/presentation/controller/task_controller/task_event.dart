part of 'task_bloc.dart';

@immutable
sealed class TaskEvent {}

class TaskInitEvent extends TaskEvent {
  final StateTask? state;
  TaskInitEvent({required this.state});
}

class TaskLoadMoreEvent extends TaskEvent {
  final StateTask? state;
  final int page;
  TaskLoadMoreEvent({required this.state, required this.page});
}

class TaskChangeStateEvent extends TaskEvent {
  final String hash;
  final StateTask state;
  TaskChangeStateEvent({required this.hash, required this.state});
}

class TaskDeleteEvent extends TaskEvent {
  final String hash;
  TaskDeleteEvent({required this.hash});
}

class TaskCreateEvent extends TaskEvent {
  final String description;
  TaskCreateEvent({required this.description});
}
