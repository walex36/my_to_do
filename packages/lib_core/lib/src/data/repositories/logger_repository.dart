import 'package:lib_core/src/domain/repositories/i_logger_repository.dart';
import 'package:lib_core/src/extensions/task_date_time.dart';
import 'package:lib_dependencies/lib_dependencies.dart';

class LoggerRepository implements ILoggerRepository {
  final Logger _logger = Logger();

  @override
  void error({required String message, required StackTrace? stackTrace}) {
    _logger.e(message, stackTrace: stackTrace, time: TaskDateTime.now());
  }

  @override
  void fatal({required String message, required StackTrace? stackTrace}) {
    _logger.f(message, stackTrace: stackTrace, time: TaskDateTime.now());
  }

  @override
  void info({required String message, StackTrace? stackTrace}) {
    _logger.i(message, stackTrace: stackTrace, time: TaskDateTime.now());
  }

  @override
  void warning({required String message, StackTrace? stackTrace}) {
    _logger.w(message, stackTrace: stackTrace, time: TaskDateTime.now());
  }
}
