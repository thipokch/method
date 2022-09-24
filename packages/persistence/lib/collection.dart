// ignore_for_file: invalid_use_of_protected_member

import 'package:core/abstract/define.dart';
import 'package:core/abstract/uniform.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:persistence/source.dart';
import 'package:repository/collection.dart';

part 'collection_definitions.dart';

abstract class Dao<DOM> {
  Id? dbid; // Used by Isar

  String collectionSlug;

  @Index(composite: [CompositeIndex('id')])
  String hierarchyPath;

  List<byte> uuid;

  @Index(unique: true, replace: true)
  String id;

  Dao({
    required this.collectionSlug,
    required this.hierarchyPath,
    required this.id,
    required this.uuid,
  });
}

abstract class Collection<DOM, DAO extends Dao<DOM>>
    extends RepositoryCollection<PersistenceDriver> {
  const Collection(super.driver);

  IsarCollection<DAO> get collection => source.instance.collection<DAO>();

  Future<T> Function<T>(Future<T> Function(), {bool silent}) get write =>
      source.instance.writeTxn;

  // METADATA

  bool get isEmpty => count > 0;
  int get count => collection.countSync();

  // MAPPER

  DAO toDao(DOM dom);
  DOM toDom(DAO dao);
  List<DAO> toDaos(List<DOM> doms) => doms.map<DAO>((e) => toDao(e)).toList();
  List<DOM> toDoms(List<DAO> daos) => daos.map<DOM>((e) => toDom(e)).toList();

  List<T> assignDaoID<T extends Dao>(List<T> dao, List<int> ids) =>
      dao.length == ids.length
          ? dao.asMap().entries.map((e) => e.value..dbid = ids[e.key]).toList()
          : throw Error();

  WhereRepeatModifier<DAO, DAO, Uniform> get uniformEqualTo;

  // CONTAINS

  // PUT

  Future<int> put(DOM model) =>
      write(() => collection.putByIndex('id', toDao(model)));

  Future<List<int>> putAll(List<DOM> doms) =>
      write(() => collection.putAllByIndex('id', toDaos(doms)));

  // GET

  Future<DOM?> get(String id) => collection.getByIndex(
        'id',
        [id],
      ).then((value) => value != null ? toDom(value) : null);

  Future<List<DOM>> getAll(List<String> ids) => collection
      .getAllByIndex(
        'id',
        ids.map((e) => [e]).toList(),
      )
      .then((dao) => toDoms(dao.whereType<DAO>().toList()));

  List<DOM> getAllSync(List<String> ids) => collection
      .getAllByIndexSync(
        'id',
        ids.map((e) => [e]).toList(),
      )
      .whereType<DAO>()
      .map<DOM>((element) => toDom(element))
      .toList();

  // GET - ASYNC

  Stream<List<DOM>> streamCollection() => collection
      .where()
      .watch(fireImmediately: true)
      .map<List<DOM>>((event) => event.map<DOM>((e) => toDom(e)).toList());

  Stream<List<DOM>> streamUniform(List<Uniform> uniforms) => collection
      .where()
      .anyOf(uniforms, uniformEqualTo)
      .watch(fireImmediately: true)
      .map<List<DOM>>((event) => event.map<DOM>((e) => toDom(e)).toList());

  // CLEAR

  Future<void> clear() => write(() => collection.clear());
}

typedef WhereRepeatModifier<OBJ, R, E> = QueryBuilder<OBJ, R, QAfterWhereClause>
    Function(QueryBuilder<OBJ, R, QWhereClause> q, E element);
