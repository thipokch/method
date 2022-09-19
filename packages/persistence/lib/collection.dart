// import 'package:core/abstract/uniform.dart';
import 'package:core/abstract/uniform.dart';
import 'package:isar/isar.dart';
import 'package:persistence/source.dart';
import 'package:repository/collection.dart';

abstract class CollectionObject<DOM> {
  DOM toModel();

  String get hierarchyPath;
  String get id;
}

abstract class Collection<DOM, DAO extends CollectionObject<DOM>>
    extends RepositoryCollection<PersistenceDriver> {
  const Collection(super.driver);

  IsarCollection<DAO> get collection => source.instance.collection<DAO>();

  // METADATA

  bool get isEmpty => count > 0;
  int get count => collection.countSync();

  // MAPPER

  DAO dboFrom(DOM model);
  WhereRepeatModifier<DAO, DAO, Uniform> get queryUniforms;
  // QueryBuilder<DBO, DBO, QAfterWhereClause>
  // WhereRepeatModifier<DBO, , E> modifier
  // QueryBuilder<DBO, DBO, QAfterWhereClause> Function(QueryBuilder<DBO, DBO, QWhereClause>, Uniform)

  // Stream<List<DBO>> queryUniforms(List<Uniform> uniforms);
  // QueryBuilder<DBO> get queryHierachyPath;
  // QueryBuilder<DBO> get queryId;
  // QueryBuilder<DBO> get queryUuid;

  // Condition<DBO>?  querier();

  // CONTAINS

  // bool contains(int dbid) => box.contains(dbid);
  // bool containsMany(List<int> dbids) => box.containsMany(dbids);

  // PUT

  Future<int> put(DOM model) => collection.put(dboFrom(model));
  Future<List<int>> putAll(List<DOM> models) =>
      collection.putAll(models.map<DAO>((e) => dboFrom(e)).toList());

  // GET

  // GET - ASYNC

  // Stream<List<OBJ>>
  // streamMany(List<Uniform> uniforms) => collection
  //     .where()
  //     .anyOf(uniforms, (q, uniform) => q.)
  // .watch().map<List<OBJS>>((event) => null);

  //     queryUniforms.watch();
  //     .query(
  //       queryId.oneOf(uniforms.map((e) => e.id).toList()) &
  //           queryHierachyPath
  //               .oneOf(uniforms.map((e) => e.hierarchyPath).toList()),
  //     )
  //     .watch(triggerImmediately: true)
  //     .map<List<OBJ>>(
  //       (query) => query.find().map<OBJ>((e) => e.toModel()).toList(),
  //     );

  Stream<List<DOM>> streamCollection() => collection
      .where()
      .watch()
      .map<List<DOM>>((event) => event.map<DOM>((e) => e.toModel()).toList());

  Stream<List<DOM>> streamUniform(List<Uniform> uniforms) => collection
      .where()
      .anyOf(uniforms, queryUniforms)
      .watch()
      .map<List<DOM>>((event) => event.map<DOM>((e) => e.toModel()).toList());

  // CLEAR

  Future<void> clear() => collection.clear();
}

typedef WhereRepeatModifier<OBJ, R, E> = QueryBuilder<OBJ, R, QAfterWhereClause>
    Function(QueryBuilder<OBJ, R, QWhereClause> q, E element);
