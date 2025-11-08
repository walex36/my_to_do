import 'package:lib_dependencies/lib_dependencies.dart';

import '../enums/state_task_enum.dart';

class Task extends Equatable {
  final String hash;
  final String description;
  final StateTask state;
  final DateTime createdAt;

  const Task({required this.hash, required this.description, required this.state, required this.createdAt});

  Task copyWith({String? hash, String? description, StateTask? state, DateTime? createdAt}) {
    return Task(
      hash: hash ?? this.hash,
      description: description ?? this.description,
      state: state ?? this.state,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  List<Object?> get props => [hash, description, state, createdAt];
}
