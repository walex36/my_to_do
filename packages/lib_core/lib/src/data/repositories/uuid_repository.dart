import 'package:lib_core/src/domain/repositories/i_uuid_repository.dart';
import 'package:lib_dependencies/lib_dependencies.dart';

class UuidRepository implements IUuidRepository {
  final Uuid _uuid = Uuid();

  @override
  String generateV5({required String name}) {
    return _uuid.v5(Namespace.url.value, name);
  }
}
