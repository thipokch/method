import 'dart:convert';

import 'package:method_core/abstract/present.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_core/model/session.dart';
import 'package:method_core/model/task.dart';
import 'package:method_core/model/task_definition.dart';
import 'package:method_repo/source/collection.dart';
import 'package:method_core/util/uuid.dart' hide Uuid;
import 'package:realm/realm.dart' hide Session;

import '../schema/schema.dart';
import '../util/uuid.dart';
import '../util/json.dart';

part 'entry.dart';
part 'exercise.dart';
part 'session.dart';
part 'task.dart';

abstract class RealmCollection<DAO extends RealmObject, DOM>
    extends SourceCollection<Realm, DOM> {
  const RealmCollection(super.source);

  Realm get realm => source.instance;
  RealmResults<DAO> get collection => realm.all<DAO>();

  DAO toDao(DOM dom);
  DOM toDom(DAO dao);
  List<DAO> toDaos(List<DOM> doms) => doms.map<DAO>((e) => toDao(e)).toList();
  List<DOM> toDoms(List<DAO> daos) => daos.map<DOM>((e) => toDom(e)).toList();

  // METADATA

  @override
  bool get isEmpty => count > 0;

  @override
  int get count => collection.length;

  // GET

  @override
  Future<List<DOM>> getAll() async => toDoms(collection.toList());

  @override
  Future<DOM?> get(String id) async =>
      toDom(collection.query(r'id == $0', [id]).single);

  @override
  Future<List<DOM>> getMany(List<String> ids) async =>
      toDoms(collection.query("id == { ${ids.join(", ")} }").toList());

  // STREAM

  @override
  Stream<List<DOM>> streamAll() =>
      collection.changes.map((event) => toDoms(event.results.toList()));

  @override
  Stream<DOM> stream(String id) => collection
      .query(r'id == $0', [id])
      .single
      .changes
      .map((event) => toDom(event.object as DAO));

  @override
  Stream<List<DOM>> streamMany(List<String> ids) => collection
      .query("id == { ${ids.join(", ")} }")
      .changes
      .map((event) => toDoms(event.results.toList()));

  // PUT

  @override
  Future<void> put(DOM dom) async => realm.write(
        () => realm.add<DAO>(toDao(dom), update: true),
      );

  @override
  Future<void> putMany(List<DOM> doms) async => realm.write(
        () => realm.addAll<DAO>(toDaos(doms), update: true),
      );

  // REMOVE

  @override
  Future<void> removeAll() async => realm.write(
        () => realm.deleteAll<DAO>(),
      );

  @override
  Future<void> remove(DOM dom) async => realm.write(
        () => realm.delete<DAO>(toDao(dom)),
      );

  @override
  Future<void> removeMany(List<DOM> doms) async => realm.write(
        () => realm.deleteMany<DAO>(toDaos(doms)),
      );
}
