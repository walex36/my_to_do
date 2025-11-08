import 'dart:convert';
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

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      hash: map['hash'] as String,
      description: map['description'] as String,
      state: StateTask.values.byName(map['state'] as String),
      createdAt: DateTime.parse(map['createdAt'] as String),
    );
  }

  String toJson() => json.encode(toMap());

  factory TaskModel.fromJson(String source) => TaskModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TaskModel(hash: $hash, description: $description, state: $state, createdAt: $createdAt)';
  }
}
