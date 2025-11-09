import 'package:flutter/material.dart';
import 'package:lib_ds/lib_ds.dart';
import 'package:task/src/domain/entities/entities.dart';
import 'package:task/src/domain/enums/state_task_enum.dart';

class TaskTileWidget extends StatelessWidget {
  final Task task;
  final void Function() onDelete;
  final void Function(StateTask) onChangeState;
  final void Function() onUpdate;
  const TaskTileWidget({
    super.key,
    required this.task,
    required this.onDelete,
    required this.onChangeState,
    required this.onUpdate,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: task.state == StateTask.done, onChanged: (value) => {}),
        const SizedBox(width: 16),
        Text(task.description),
      ],
    );
  }
}

class TaskTileShimmerWidget extends StatelessWidget {
  const TaskTileShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ShimmerContainer(width: 25, height: 25, radius: 5),
        const SizedBox(width: 16),
        const ShimmerContainer(width: 300, height: 25, radius: 5),
      ],
    );
  }
}
