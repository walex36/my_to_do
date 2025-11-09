import 'package:lib_core/lib_core.dart';
import 'package:lib_dependencies/lib_dependencies.dart';
import 'package:task/src/data/datasources/datasources.dart';
import 'package:task/src/data/repositories/task_repository.dart';
import 'package:task/src/domain/repositories/i_task_repository.dart';
import 'package:task/src/presentation/controller/task_controller/task_bloc.dart';
import 'package:task/src/presentation/pages/task_page.dart';

class TaskModule extends Module {
  @override
  void binds(Injector i) {
    // Blocs
    i.add(TaskBloc.new);

    // Repositories
    i.add<ITaskRepository>(TaskRepository.new);

    // DataSources
    i.add<ITaskLocalDatasource>(TaskLocalDatasource.new);
  }

  @override
  List<Module> get imports => [AppModule()];

  @override
  void routes(RouteManager r) {
    r.child('/', child: (_) => TaskPage(taskBloc: Modular.get()));
  }
}
