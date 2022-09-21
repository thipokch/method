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

  Function<T>(Future<T> Function(), {bool silent}) get write =>
      source.instance.writeTxn;

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

  Future<int> put(DOM model) => write(
        () => collection.put(dboFrom(model)),
      );

  Future<List<int>> putAll(List<DOM> models) => write(
        () => collection.putAll(models.map<DAO>((e) => dboFrom(e)).toList()),
      );
  // collection.putAll(models.map<DAO>((e) => dboFrom(e)).toList());

  // GET

  // GET - ASYNC

  Stream<List<DOM>> streamCollection() => collection
      .where()
      .watch(fireImmediately: true)
      .map<List<DOM>>((event) => event.map<DOM>((e) => e.toModel()).toList());

  Stream<List<DOM>> streamUniform(List<Uniform> uniforms) => collection
      .where()
      .anyOf(uniforms, queryUniforms)
      .watch(fireImmediately: true)
      .map<List<DOM>>((event) => event.map<DOM>((e) => e.toModel()).toList());

  // CLEAR

  Future<void> clear() => write(
        () => collection.clear(),
      );
}

typedef WhereRepeatModifier<OBJ, R, E> = QueryBuilder<OBJ, R, QAfterWhereClause>
    Function(QueryBuilder<OBJ, R, QWhereClause> q, E element);
