import 'package:flutter/material.dart';
import 'package:lib_dependencies/l10n/files/app_localizations.dart';
import 'package:lib_dependencies/lib_dependencies.dart';
import 'package:lib_ds/lib_ds.dart';
import 'package:task/src/domain/entities/entities.dart';
import 'package:task/src/domain/enums/enums.dart';
import 'package:task/src/presentation/controller/task_controller/task_bloc.dart';
import 'package:task/src/presentation/widgets/segmented_state_task_widget.dart';
import 'package:task/src/presentation/widgets/task_tile_widget.dart';

class TaskLoadedWidget extends StatefulWidget {
  final TaskBloc taskBloc;
  const TaskLoadedWidget({super.key, required this.taskBloc});

  @override
  State<TaskLoadedWidget> createState() => _TaskLoadedWidgetState();
}

class _TaskLoadedWidgetState extends State<TaskLoadedWidget> {
  final _textController = TextEditingController();
  final _scrollController = ScrollController();

  final _keyAnimatedList = GlobalKey<AnimatedListState>();

  final _listTask = <Task>[];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final localizations = AppLocalizations.of(context)!;
    final mediaQuery = MediaQuery.of(context);
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
      body: BlocConsumer(
        bloc: widget.taskBloc,
        listener: (context, state) {
          if (state.runtimeType == TaskLoadedState) {
            state as TaskLoadedState;
            for (var i = _listTask.length; i > 0; i--) {
              final index = i - 1;
              final task = _listTask[index];
              if (_listTask.where((element) => element.hash == task.hash).isEmpty) continue;
              _listTask.removeAt(index);
              _keyAnimatedList.currentState?.removeItem(index, (context, animation) => const SizedBox());
            }

            for (final task in state.tasks) {
              if (_listTask.where((element) => element.hash == task.hash).isNotEmpty) continue;
              _listTask.add(task);
              _keyAnimatedList.currentState?.insertItem(_listTask.length - 1);
            }
          }

          if (state.runtimeType == TaskAddState) {
            state as TaskAddState;
            for (var task in state.newTask) {
              _listTask.add(task);
              final index = _listTask.indexOf(task);
              _keyAnimatedList.currentState?.insertItem(index);
            }
          }

          if (state.runtimeType == TaskDeleteState) {
            state as TaskDeleteState;
            final index = _listTask.indexWhere((element) => element.hash == state.hash);
            _listTask.removeAt(index);
            _keyAnimatedList.currentState?.removeItem(index, (context, animation) => const SizedBox());
          }

          if (state.runtimeType == TaskChangingStateEvent) {
            state as TaskChangingStateEvent;
            final index = _listTask.indexWhere((element) => element.hash == state.taskUpdated.hash);
            if (state.stateTaskSelected == null || state.stateTaskSelected == state.taskUpdated.state) {
              _keyAnimatedList.currentState?.setState(() {
                _listTask[index] = state.taskUpdated;
              });
            } else {
              _listTask.removeAt(index);
              _keyAnimatedList.currentState?.removeItem(index, (context, animation) => const SizedBox());
            }
          }
        },
        builder: (context, state) {
          return LazyLoadScrollView(
            onEndOfPage: () {
              widget.taskBloc.add(TaskLoadMoreEvent());
            },
            stopRequesting: !(state as TaskLoadedState).moreData,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: SegmentedStateTaskWidget(
                    selected: state.stateTaskSelected?.name,
                    onSelectionChanged: (value) {
                      widget.taskBloc.add(TaskInitEvent(state: value));
                    },
                  ),
                ),

                _listTask.isEmpty
                    ? Padding(
                        padding: EdgeInsets.only(top: mediaQuery.size.height * 0.35),
                        child: Center(
                          child: Text(
                            localizations.task_listEmpytDesc,
                            style: theme.textTheme.titleLarge?.copyWith(color: AppColors.text.withValues(alpha: 0.5)),
                          ),
                        ),
                      )
                    : AnimatedList(
                        key: _keyAnimatedList,
                        controller: _scrollController,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        initialItemCount: _listTask.length,
                        itemBuilder: (context, index, animation) {
                          final task = _listTask[index];
                          return TaskTileWidget(
                            theme: theme,
                            localizations: localizations,
                            task: _listTask[index],
                            onDelete: (_) => widget.taskBloc.add(TaskDeleteEvent(hash: _listTask[index].hash)),
                            onChangeState: (newState) =>
                                widget.taskBloc.add(TaskChangeStateEvent(hash: task.hash, state: newState)),
                            animation: animation,
                          );
                        },
                      ),
              ],
            ),
          );
        },
      ),
    );
  }
}
