import 'package:flutter/material.dart';
import 'package:lib_dependencies/l10n/files/app_localizations.dart';
import 'package:lib_ds/lib_ds.dart';
import 'package:task/src/domain/entities/entities.dart';
import 'package:task/src/domain/enums/state_task_enum.dart';

class TaskTileWidget extends StatelessWidget {
  final ThemeData theme;
  final AppLocalizations localizations;
  final Task task;
  final void Function(void) onDelete;
  final void Function(StateTask) onChangeState;
  final Animation<double> animation;

  const TaskTileWidget({
    super.key,
    required this.theme,
    required this.localizations,
    required this.task,
    required this.onDelete,
    required this.onChangeState,
    required this.animation,
  });

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: animation.drive(
        Tween(
          begin: const Offset(1, 0), // começa fora da tela à direita
          end: Offset.zero,
        ).chain(CurveTween(curve: Curves.easeOut)),
      ),
      child: Dismissible(
        key: Key(task.hash),
        direction: DismissDirection.endToStart,
        background: Container(
          color: theme.colorScheme.error,
          alignment: Alignment.centerRight,
          child: Align(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.delete, color: theme.colorScheme.onSurface),
                const SizedBox(width: 16),
                Text(
                  localizations.lib_ds_deleteLabel,
                  style: theme.textTheme.labelLarge?.copyWith(color: theme.colorScheme.onSurface),
                ),
                const SizedBox(width: 16),
              ],
            ),
          ),
        ),
        onDismissed: onDelete,
        child: Row(
          children: [
            Checkbox(
              value: task.state.isDone,
              onChanged: (value) => onChangeState(task.state.isDone ? StateTask.pending : StateTask.done),
            ),
            const SizedBox(width: 16),
            Text(
              task.description,
              style:
                  task.state.isDone
                      ? theme.textTheme.labelLarge?.copyWith(
                        decoration: TextDecoration.lineThrough,
                        color: AppColors.text.withValues(alpha: 0.5),
                      )
                      : theme.textTheme.labelLarge,
            ),
          ],
        ),
      ),
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
