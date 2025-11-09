import 'package:flutter/material.dart';
import 'package:lib_core/lib_core.dart';
import 'package:lib_dependencies/l10n/files/app_localizations.dart';
import 'package:lib_dependencies/lib_dependencies.dart';
import 'package:lib_ds/lib_ds.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(AppModule.initialRoute);

    return MaterialApp.router(
      title: 'My To Do',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: Modular.routerConfig,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
