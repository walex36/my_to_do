import 'package:flutter/material.dart';
import 'package:lib_dependencies/l10n/files/app_localizations.dart';
import 'package:lib_ds/lib_ds.dart';
import 'package:task/src/domain/entities/entities.dart';
import 'package:task/src/presentation/controller/task_controller/task_bloc.dart';
import 'package:task/src/presentation/widgets/segmented_state_task_widget.dart';
import 'package:task/src/presentation/widgets/task_tile_widget.dart';

class TaskLoadedWidget extends StatefulWidget {
  final TaskBloc taskBloc;
  final List<Task> tasks;
  final int page;
  final bool moreData;
  const TaskLoadedWidget({
    super.key,
    required this.taskBloc,
    required this.tasks,
    required this.page,
    required this.moreData,
  });

  @override
  State<TaskLoadedWidget> createState() => _TaskLoadedWidgetState();
}

class _TaskLoadedWidgetState extends State<TaskLoadedWidget> {
  String? _segmentSelected;
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final localizations = AppLocalizations.of(context)!;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          await showAppModalWidget(
            context: context,
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: [
              Text(localizations.task_newTaskLabel, style: theme.textTheme.titleLarge),
              const SizedBox(height: 16),
              SmallTextField(
                theme: theme,
                controller: _textController,
                hintText: localizations.task_descriptionOfTheTaskLabel,
                maxLength: 100,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                child: Text(
                  localizations.lib_ds_saveLabel,
                  style: theme.textTheme.labelLarge?.copyWith(color: Colors.white),
                ),
                onPressed: () {
                  widget.taskBloc.add(TaskCreateEvent(description: _textController.text));
                  Navigator.pop(context);
                },
              ),
            ],
          );
          _textController.clear();
        },
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: SegmentedStateTaskWidget(
              selected: _segmentSelected,
              onSelectionChanged: (value) {
                setState(() {
                  _segmentSelected = value?.name;
                });
              },
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: widget.tasks.length,
            itemBuilder: (context, index) {
              final task = widget.tasks[index];
              return TaskTileWidget(
                task: widget.tasks[index],
                onDelete: () => widget.taskBloc.add(TaskDeleteEvent(hash: widget.tasks[index].hash)),
                onChangeState: (newState) =>
                    widget.taskBloc.add(TaskChangeStateEvent(hash: task.hash, state: newState)),
                onUpdate: () =>
                    widget.taskBloc.add(TaskUpdateDescriptionEvent(description: task.description, hash: task.hash)),
              );
            },
          ),
        ],
      ),
    );
  }
}
