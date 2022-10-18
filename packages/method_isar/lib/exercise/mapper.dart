import 'dart:convert';

import 'package:method_core/abstract/present.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_core/util/uuid.dart';
import 'package:method_isar/task/mapper.dart';

import '../schema.dart';

class DbExerciseMapper {
  const DbExerciseMapper._();

  static DbExercise toDao({
    required Exercise dom,
  }) =>
      DbExercise(
        icon: dom.icon,
        name: dom.name,
        description: dom.description,
        definitions:
            dom.definitions.map((dom) => DbTaskMapper.toDao(dom: dom)).toList(),
        hierarchyPath: dom.hierarchyPath,
        id: dom.id,
        uuid: dom.uuid?.toBytes() ?? const Uuid().v4obj().toBytes(),
        presentation: jsonEncode(dom.presentation.toJson()),
      );

  static Exercise toDom({
    required DbExercise dao,
  }) =>
      Exercise(
        icon: dao.icon,
        name: dao.name,
        description: dao.description,
        definitions:
            dao.definitions.map((dao) => DbTaskMapper.toDom(dao: dao)).toList(),
        hierarchyPath: dao.hierarchyPath,
        id: dao.id,
        uuid: UuidValue.fromList(dao.uuid),
        presentation: Presentation.fromJson(jsonDecode(dao.presentation)),
      );
}
