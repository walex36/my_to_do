import 'package:flutter/material.dart';
import 'package:lib_core/lib_core.dart';
import 'package:lib_dependencies/l10n/files/app_localizations.dart';
import 'package:lib_dependencies/lib_dependencies.dart';
import 'package:splash/src/presentation/controller/splash_bloc.dart';

class SplashPage extends StatefulWidget {
  final SplashBloc bloc;
  const SplashPage({super.key, required this.bloc});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    widget.bloc.add(SplashStartedEvent());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final localizations = AppLocalizations.of(context)!;
    return Scaffold(
      body: BlocConsumer(
        bloc: widget.bloc,
        listener: (context, state) {
          if (state is SplashFinishedState) {
            Modular.to.pushReplacementNamed(RouterConst.task);
          }
        },
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(color: theme.colorScheme.onSurface),
                const SizedBox(height: 16),
                Text(
                  localizations.task_myTaskInitializingLabel,
                  style: theme.textTheme.headlineMedium?.copyWith(color: theme.colorScheme.onSurface),
                ),
              ],
            ),
          );
        },
      ),
      backgroundColor: theme.colorScheme.surface,
    );
  }
}
