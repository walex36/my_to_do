import 'package:flutter/material.dart';
import 'package:task/src/presentation/widgets/segmented_state_task_widget.dart';
import 'package:task/src/presentation/widgets/task_tile_widget.dart';

class TaskLoadingWidget extends StatelessWidget {
  const TaskLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
    ;
  }
}
