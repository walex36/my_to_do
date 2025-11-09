import 'package:flutter/material.dart';
import 'package:lib_dependencies/l10n/files/app_localizations.dart';
import 'package:lib_dependencies/lib_dependencies.dart';
import 'package:lib_ds/lib_ds.dart';
import 'package:task/src/domain/entities/task_entity.dart';
import 'package:task/src/domain/enums/enums.dart';
import 'package:task/src/presentation/controller/task_controller/task_bloc.dart';
import 'package:task/src/presentation/widgets/segmented_state_task_widget.dart';
import 'package:task/src/presentation/widgets/task_tile_widget.dart';

class TaskPage extends StatefulWidget {
  final TaskBloc taskBloc;
  const TaskPage({super.key, required this.taskBloc});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  String? _segmentSelected;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final localizations = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: TodoAppBar(title: localizations.task_nameTitle),
      body: BlocBuilder<TaskBloc, TaskState>(
        bloc: widget.taskBloc,
        builder: (context, state) {
          switch (state) {
            case TaskLoadingState():
              return ListView(
                children: [
                  Padding(padding: const EdgeInsets.all(20), child: SegmentedStateTaskShimmerWidget()),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    itemExtent: 35,
                    itemCount: 20,
                    itemBuilder: (context, index) => const TaskTileShimmerWidget(),
                  ),
                ],
              );
            case TaskLoadedState():
              return ListView(
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
                    itemCount: state.tasks.length,
                    itemBuilder: (context, index) {
                      final task = state.tasks[index];
                      return TaskTileWidget(
                        task: state.tasks[index],
                        onDelete: () => widget.taskBloc.add(TaskDeleteEvent(hash: state.tasks[index].hash)),
                        onChangeState: (newState) =>
                            widget.taskBloc.add(TaskChangeStateEvent(hash: task.hash, state: newState)),
                        onUpdate: () => widget.taskBloc.add(TaskUpdateEvent(task: task)),
                      );
                    },
                  ),
                ],
              );
            case TaskErrorState():
              return Center(child: Text(state.failure.toString()));
          }
        },
      ),
    );
  }
}
