import 'dart:convert';
import 'package:lib_core/lib_core.dart';
import 'package:task/src/domain/entities/task_entity.dart';
import 'package:task/src/domain/enums/state_task_enum.dart';

class TaskModel extends Task {
  const TaskModel({required super.hash, required super.description, required super.state, required super.createdAt});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hash': hash,
      'description': description,
      'state': state.name,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  @override
  TaskModel copyWith({String? hash, String? description, StateTask? state, DateTime? createdAt}) {
    return TaskModel(
      hash: hash ?? this.hash,
      description: description ?? this.description,
      state: state ?? this.state,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Task toEntity() {
    return Task(hash: hash, description: description, state: state, createdAt: createdAt);
  }

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      hash: map['hash'] as String,
      description: map['description'] ?? '',
      state: map['state'] == null ? StateTask.pending : StateTask.values.byName(map['state']),
      createdAt: DateTime.parse(map['createdAt'] ?? TaskDateTime.now().toIso8601String()),
    );
  }

  factory TaskModel.fromEntity(Task task) {
    return TaskModel(hash: task.hash, description: task.description, state: task.state, createdAt: task.createdAt);
  }

  String toJson() => json.encode(toMap());

  factory TaskModel.fromJson(String source) => TaskModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TaskModel(hash: $hash, description: $description, state: $state, createdAt: $createdAt)';
  }
}
