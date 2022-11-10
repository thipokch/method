part of 'collection.dart';

class ExerciseCollection extends RealmCollection<Exercise, DbExercise> {
  const ExerciseCollection(super.source);

  @override
  DbExercise toDao(Exercise dom) => ExerciseMapper.toDao(dom: dom);

  @override
  Exercise toDom(DbExercise dao) => ExerciseMapper.toDom(dao: dao);
}

class ExerciseMapper {
  const ExerciseMapper._();

  static DbExercise toDao({
    required Exercise dom,
  }) =>
      DbExercise(
        dom.icon,
        dom.name,
        dom.description,
        dom.hierarchyPath,
        dom.id,
        dom.uuid?.toRealm() ?? Uuid.v4(),
        jsonEncode(dom.presentation.toJson()),
        definitions: [
          for (var cdom in dom.definitions) _TaskMapper.toDao(dom: cdom),
        ],
      );

  static Exercise toDom({
    required DbExercise dao,
  }) =>
      Exercise(
        icon: dao.icon,
        name: dao.name,
        description: dao.description,
        definitions: [
          for (var cdao in dao.definitions) _TaskMapper.toDom(dao: cdao),
        ],
        hierarchyPath: dao.hierarchyPath,
        id: dao.id,
        uuid: UuidValue.fromList(dao.uuid.bytes.asUint8List()),
        presentation: Presentation.fromJson(jsonDecode(dao.presentation)),
      );
}
