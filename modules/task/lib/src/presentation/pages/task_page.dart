import 'package:flutter/material.dart';
import 'package:lib_ds/lib_ds.dart';
import 'package:task/src/presentation/controller/task_controller/task_bloc.dart';

class TaskPage extends StatefulWidget {
  final TaskBloc taskBloc;
  const TaskPage({super.key, required this.taskBloc});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TodoAppBar(title: 'Task'),
      body: Container(),
    );
  }
}
