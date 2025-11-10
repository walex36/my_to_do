// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get task_nameTitle => 'To-do list';

  @override
  String get task_myTaskInitializingLabel => 'Minhas Tarefas initializing';

  @override
  String get task_allSegmentLabel => 'All';

  @override
  String get task_pendingSegmentLabel => 'Pending';

  @override
  String get task_doneSegmentLabel => 'Done';

  @override
  String get task_descriptionOfTheTaskLabel => 'Description of the task';

  @override
  String get task_newTaskLabel => 'New Task';

  @override
  String get task_listEmpytDesc => 'No tasks';

  @override
  String get task_unexpectedErrorDesc =>
      'An unexpected error occurred, please restart the app';

  @override
  String get task_notFoundErrorDesc =>
      'Error finding task, please restart the app';

  @override
  String get task_notCreateErrorDesc =>
      'Error creating task, please restart the app';

  @override
  String get task_notUpdateErrorDesc =>
      'Error updating task, please restart the app';

  @override
  String get task_notDeleteErrorDesc =>
      'Error deleting task, please restart the app';

  @override
  String get lib_ds_saveLabel => 'Save';

  @override
  String get lib_ds_deleteLabel => 'Delete';
}
