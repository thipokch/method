import 'package:method_core/model/session.dart';
import 'package:method_core/util/uuid.dart';

import '../entry/mapper.dart';
import '../exercise/mapper.dart';
import '../schema.dart';

class DbSessionMapper {
  const DbSessionMapper._();

  static DbSession toDao({
    required Session dom,
  }) =>
      DbSession(
        definitions: dom.definitions.map(DbEntryMapper.toDao).toList(),
        hierarchyPath: dom.hierarchyPath,
        id: dom.id,
        uuid: dom.uuid?.toBytes() ?? const Uuid().v4obj().toBytes(),
        createdAt: dom.createdAt,
        readAt: dom.readAt,
        updatedAt: dom.updatedAt,
        commitedAt: dom.commitedAt,
        deletedAt: dom.deletedAt,
      );

  static Session toDom({
    required DbSession dao,
  }) =>
      Session(
        template: DbExerciseMapper.toDom(dao: dao.template.value!),
        definitions: dao.definitions.map(DbEntryMapper.toDom).toList(),
        hierarchyPath: dao.hierarchyPath,
        id: dao.id,
        uuid: UuidValue.fromList(dao.uuid),
        createdAt: dao.createdAt,
        readAt: dao.readAt,
        updatedAt: dao.updatedAt,
        commitedAt: dao.commitedAt,
        deletedAt: dao.deletedAt,
      );
}
