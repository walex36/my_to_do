import 'package:lib_core/lib_core.dart';
import 'package:task/src/domain/enums/state_task_enum.dart';

final keyListTaskMock = 'list_task';
String keyListTaskStateMock({required StateTask state}) => 'list_task_state_${state.name}';

String taskStringMock =
    '{"hash":"hash","description":"description","state":"pending","createdAt":"${TaskDateTime.now().toIso8601String()}"}';

String taskStringMock2 =
    '{"hash":"hash2","description":"description2","state":"done","createdAt":"${TaskDateTime.now().toIso8601String()}"}';

List<String> listTaskStringMock = [taskStringMock, taskStringMock2];

List<String> listHashStringMock = ['hash', 'hash2'];
