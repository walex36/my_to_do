import 'package:lib_dependencies/lib_dependencies.dart';
import 'package:splash/src/presentation/controller/splash_bloc.dart';
import 'package:splash/src/presentation/pages/splash_page.dart';

class SplashModule extends Module {
  @override
  void binds(Injector i) {
    i.add<SplashBloc>(SplashBloc.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: (_) => SplashPage(bloc: Modular.get()));
  }
}
