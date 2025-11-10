import 'package:lib_dependencies/lib_dependencies.dart';
import 'package:lib_core/lib_core.dart';
import 'package:splash/splash.dart';
import 'package:task/task.dart';

class AppModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.addSingleton<ILoggerRepository>(LoggerRepository.new);
    i.addSingleton<IUuidRepository>(UuidRepository.new);
    i.addSingleton<ILocalDatabaseRepository>(SharedPreferencesRepository.new);
  }

  static String get initialRoute => RouterConst.splash;

  @override
  void routes(RouteManager r) {
    r.module(RouterConst.splash, module: SplashModule());
    r.module(RouterConst.task, module: TaskModule());
  }
}
