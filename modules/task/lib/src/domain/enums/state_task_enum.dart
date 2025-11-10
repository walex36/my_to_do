import 'package:lib_dependencies/l10n/files/app_localizations.dart';

enum StateTask {
  pending,
  done;

  bool get isDone => this == StateTask.done;
  bool get isPending => this == StateTask.pending;

  String nameLocalization(AppLocalizations localizations) {
    switch (this) {
      case StateTask.pending:
        return localizations.task_pendingSegmentLabel;
      case StateTask.done:
        return localizations.task_doneSegmentLabel;
    }
  }

  static StateTask fromString(String value) {
    switch (value) {
      case 'pending':
        return StateTask.pending;
      case 'done':
        return StateTask.done;
      default:
        return StateTask.pending;
    }
  }
}
