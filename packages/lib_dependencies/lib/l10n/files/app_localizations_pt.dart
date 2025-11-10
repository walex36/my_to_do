// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get task_nameTitle => 'Lista de tarefas';

  @override
  String get task_myTaskInitializingLabel => 'Minhas Tarefas inicializando';

  @override
  String get task_allSegmentLabel => 'Todos';

  @override
  String get task_pendingSegmentLabel => 'Pendente';

  @override
  String get task_doneSegmentLabel => 'Feito';

  @override
  String get task_descriptionOfTheTaskLabel => 'Descrição da tarefa';

  @override
  String get task_newTaskLabel => 'Nova Tarefa';

  @override
  String get lib_ds_saveLabel => 'Salvar';

  @override
  String get lib_ds_deleteLabel => 'Excluir';
}
