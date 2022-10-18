// ignore_for_file: invalid_use_of_protected_member

import 'package:method_core/abstract/define.dart';
import 'package:method_core/abstract/identify.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart' hide collection;
import 'package:method_repo/source/collection.dart';

part 'collection_definition.dart';
part 'collection_document.dart';

abstract class Dao {
  String get collectionSlug;
  String get hierarchyPath;
  String get id;

  const Dao();
}

abstract class DaoObject extends Dao {
  Id? dbid; // Used by Isar

  @override
  @Index(composite: [CompositeIndex('id')])
  final String hierarchyPath;

  @override
  @Index(unique: true, replace: true)
  final String id;

  final List<byte> uuid;

  DaoObject({
    required this.hierarchyPath,
    required this.id,
    required this.uuid,
  });
}

abstract class DaoEmbeded extends Dao {
  @override
  final String hierarchyPath;

  @override
  final String id;

  const DaoEmbeded({
    required this.hierarchyPath,
    required this.id,
  });
}

abstract class Collection<DOM, DAO extends Dao>
    extends SourceCollection<Isar, DOM> {
  const Collection(super.driver);

  IsarCollection<DAO> get collection => source.instance.collection<DAO>();

  Future<T> Function<T>(Future<T> Function(), {bool silent}) get write =>
      source.instance.writeTxn;

  // METADATA

  @override
  bool get isEmpty => count > 0;
  @override
  int get count => collection.countSync();

  // MAPPER

  DAO toDao(DOM dom);
  DOM toDom(DAO dao);
  List<DAO> toDaos(List<DOM> doms) => doms.map<DAO>((e) => toDao(e)).toList();
  List<DOM> toDoms(List<DAO> daos) => daos.map<DOM>((e) => toDom(e)).toList();

  WhereRepeatModifier<DAO, DAO, String> get idEqualTo;

  // CONTAINS

  // GET

  @override
  Future<List<DOM>> getAll() =>
      collection.where().findAll().then((daos) => toDoms(daos));

  @override
  Future<DOM?> get(String id) => collection.getByIndex(
        'id',
        [id],
      ).then((value) => value != null ? toDom(value) : null);

  @override
  Future<List<DOM>> getMany(List<String> ids) => collection
      .getAllByIndex(
        'id',
        ids.map((e) => [e]).toList(),
      )
      .then((dao) => toDoms(dao.whereType<DAO>().toList()));

  DOM? getSync(String id) {
    final value = collection.getByIndexSync(
      'id',
      [id],
    );

    return value != null ? toDom(value) : null;
  }

  List<DOM> getAllSync(List<String> ids) => collection
      .getAllByIndexSync(
        'id',
        ids.map((e) => [e]).toList(),
      )
      .whereType<DAO>()
      .map<DOM>((element) => toDom(element))
      .toList();

  // STREAM

  @override
  Stream<DOM?> stream(String id) => collection
      .where()
      .anyOf([id], idEqualTo)
      .watch(fireImmediately: true)
      .map<DOM?>((event) => event.isNotEmpty ? toDom(event.first) : null);

  @override
  Stream<List<DOM>> streamAll() => collection
      .where()
      .watch(fireImmediately: true)
      .map<List<DOM>>((event) => event.map<DOM>((e) => toDom(e)).toList());

  // PUT

  @override
  Future<void> put(DOM dom) =>
      write(() => collection.putByIndex('id', toDao(dom)));

  @override
  Future<void> putMany(List<DOM> doms) =>
      write(() => collection.putAllByIndex('id', toDaos(doms)));

  // REMOVE

  @override
  Future<void> removeAll() => write(() => collection.clear());

  @override
  Future<void> remove(DOM dom) =>
      write(() => collection.deleteByIndex('id', [toDao(dom).id]));

  @override
  Future<void> removeMany(List<DOM> doms) =>
      write(() => collection.deleteAllByIndex(
            'id',
            toDaos(doms).map((e) => [e.id]).toList(),
          ));

  @override
  Stream<List<DOM>> streamMany(List<String> ids) {
    throw UnimplementedError();
  }
}

typedef WhereRepeatModifier<OBJ, R, E> = QueryBuilder<OBJ, R, QAfterWhereClause>
    Function(QueryBuilder<OBJ, R, QWhereClause> q, E element);
