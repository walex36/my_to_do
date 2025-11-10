import 'package:flutter/material.dart';
import 'package:lib_dependencies/l10n/files/app_localizations.dart';
import 'package:lib_dependencies/lib_dependencies.dart';
import 'package:lib_ds/lib_ds.dart';
import 'package:task/src/domain/errors/task_failure_error.dart';
import 'package:task/src/presentation/controller/task_controller/task_bloc.dart';
import 'package:task/src/presentation/widgets/task_page/task_error_widget.dart';
import 'package:task/src/presentation/widgets/task_page/task_loaded_widget.dart';
import 'package:task/src/presentation/widgets/task_page/task_loading_widget.dart';

class TaskPage extends StatefulWidget {
  final TaskBloc taskBloc;
  const TaskPage({super.key, required this.taskBloc});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  void initState() {
    super.initState();
    widget.taskBloc.add(TaskInitEvent(state: null));
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppAppBar(title: localizations.task_nameTitle),
      body: BlocBuilder<TaskBloc, TaskState>(
        bloc: widget.taskBloc,
        buildWhen: (previous, current) {
          final list = [TaskLoadingState, TaskLoadedState, TaskErrorState];
          return list.contains(current.runtimeType);
        },
        builder: (context, state) {
          switch (state) {
            case TaskLoadingState():
              return TaskLoadingWidget();
            case TaskLoadedState():
              return TaskLoadedWidget(taskBloc: widget.taskBloc, initialTasks: state.tasks);
            case TaskErrorState():
              return TaskErrorWidget(failure: state.failure);
          }
        },
      ),
    );
  }
}
