import 'package:lib_core/lib_core.dart';

class TaskFailure extends IFailure {}

class TaskFailureNotFound extends TaskFailure {}

class TaskFailureNotCreate extends TaskFailure {}

class TaskFailureNotUpdate extends TaskFailure {}

class TaskFailureNotDelete extends TaskFailure {}

class TaskFailureUnknown extends TaskFailure {}
