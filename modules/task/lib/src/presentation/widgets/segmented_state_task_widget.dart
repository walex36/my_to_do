import 'package:flutter/material.dart';
import 'package:lib_dependencies/l10n/files/app_localizations.dart';
import 'package:lib_ds/lib_ds.dart';
import 'package:task/src/domain/enums/enums.dart';

class SegmentedStateTaskWidget extends StatelessWidget {
  final String? selected;
  final Function(StateTask?) onSelectionChanged;
  const SegmentedStateTaskWidget({super.key, required this.selected, required this.onSelectionChanged});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final localizations = AppLocalizations.of(context)!;

    final String allTask = localizations.task_allSegmentLabel;
    final List<String> stateList = StateTask.values.map((e) => e.name).toList();
    final segmentList = [null, ...stateList];

    return SegmentedButton<String?>(
      selectedIcon: SizedBox.shrink(),
      segments: segmentList
          .map(
            (e) => ButtonSegment<String?>(
              label: Text(
                e == null ? allTask : StateTask.fromString(e).nameLocalization(localizations),
                style: textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w600),
              ),
              value: e,
            ),
          )
          .toList(),
      selected: Set.of(selected == null ? [null] : [selected!]),
      onSelectionChanged: (value) => onSelectionChanged(
        value.isEmpty || value.first == null ? null : StateTask.values.firstWhere((e) => e.name == value.first),
      ),
    );
  }
}

class SegmentedStateTaskShimmerWidget extends StatelessWidget {
  const SegmentedStateTaskShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ShimmerContainer(width: double.infinity, height: 40, radius: 20);
  }
}
