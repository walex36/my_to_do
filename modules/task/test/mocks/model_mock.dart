import 'package:lib_core/lib_core.dart';
import 'package:task/src/data/models/models.dart';
import 'package:task/src/domain/enums/state_task_enum.dart';

TaskModel taskModelMock = TaskModel(
  hash: 'hash',
  description: 'description',
  state: StateTask.todo,
  createdAt: TaskDateTime.now(),
);

TaskModel taskModelMock2 = TaskModel(
  hash: 'hash2',
  description: 'description2',
  state: StateTask.done,
  createdAt: TaskDateTime.now(),
);

List<TaskModel> listTaskModelMock = [taskModelMock, taskModelMock2];
