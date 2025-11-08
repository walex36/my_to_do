abstract class ILoggerRepository {
  void error({required String message, required StackTrace? stackTrace});
  void info({required String message, required StackTrace? stackTrace});
  void warning({required String message, required StackTrace? stackTrace});
  void fatal({required String message, required StackTrace? stackTrace});
}
