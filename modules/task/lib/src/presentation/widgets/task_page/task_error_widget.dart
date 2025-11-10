import 'package:flutter/material.dart';
import 'package:lib_core/lib_core.dart';
import 'package:lib_dependencies/l10n/files/app_localizations.dart';
import 'package:lib_ds/lib_ds.dart';
import 'package:task/src/domain/errors/erros.dart';

class TaskErrorWidget extends StatelessWidget {
  final IFailure failure;
  const TaskErrorWidget({super.key, required this.failure});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          getErrorText(localizations, failure),
          textAlign: TextAlign.center,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColors.text.withValues(alpha: 0.7),
          ),
        ),
      ),
    );
  }
}

String getErrorText(AppLocalizations localizations, IFailure failure) {
  switch (failure) {
    case TaskFailureNotFound _:
      return localizations.task_notFoundErrorDesc;
    case TaskFailureNotCreate _:
      return localizations.task_notCreateErrorDesc;
    case TaskFailureNotUpdate _:
      return localizations.task_notUpdateErrorDesc;
    case TaskFailureNotDelete _:
      return localizations.task_notDeleteErrorDesc;
    default:
      return localizations.task_unexpectedErrorDesc;
  }
}
