import 'package:lib_core/lib_core.dart';
import 'package:task/src/data/models/models.dart';
import 'package:task/src/domain/enums/state_task_enum.dart';

TaskModel taskModelMock = TaskModel(
  hash: 'hash',
  description: 'description',
  state: StateTask.todo,
  createdAt: TaskDateTime.now(),
);
