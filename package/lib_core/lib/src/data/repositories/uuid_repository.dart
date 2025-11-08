import 'package:lib_core/src/domain/repositories/i_uuid_repository.dart';
import 'package:uuid/uuid.dart';

class UuidRepository extends IUuidRepository {
  final Uuid _uuid;

  UuidRepository({required Uuid uuid}) : _uuid = uuid;

  @override
  String generateV5({required String name}) {
    return _uuid.v5(Namespace.url.value, name);
  }
}
