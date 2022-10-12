import 'dart:developer';
import 'dart:io';

import 'package:method_realm/schema/schema.dart';
import 'package:method_repo/source/driver.dart';
import 'package:method_repo/content/content.dart';
import 'package:realm/realm.dart';

import 'collection/collection.dart';

class RealmDriver extends SourceDriver<Realm> {
  RealmDriver(super.instance);

  static final config = Configuration.local(
    [
      DbEntry.schema,
      DbExercise.schema,
      DbSession.schema,
      DbTask.schema,
    ],
    initialDataCallback: (realm) => realm.addAll<DbExercise>(
      ([
        Content.exerciseNote,
        Content.exerciseThought,
        Content.exerciseMood,
        Content.exerciseAct,
      ].map((e) => ExerciseMapper.toDao(dom: e))),
    ),
  );

  static RealmDriver open() => RealmDriver(
        Realm(config),
      );

  void close() => instance.close();

  Future<void> reset() async {
    instance.close();

    try {
      instance.close();

      final dbFile = File(Configuration.defaultStoragePath);
      await dbFile.delete();
    } catch (e) {
      log('Failed to dispose realm: $e');
    }
  }
}

mixin RealmRepository<DOM,
    COLLECTION extends RealmCollection<RealmObject, DOM>> {
  COLLECTION get realmCollection;

  int get count => realmCollection.count;

  bool get isEmpty => realmCollection.isEmpty;

  Future<List<DOM>> getAll() => realmCollection.getAll();

  Future<DOM?> get(String id) => realmCollection.get(id);

  Future<List<DOM>> getMany(List<String> ids) => realmCollection.getMany(ids);

  Future<void> put(DOM dom) => realmCollection.put(dom);

  Future<void> putMany(List<DOM> doms) => realmCollection.putMany(doms);

  Future<void> removeAll() => realmCollection.removeAll();

  Future<void> remove(DOM dom) => realmCollection.remove(dom);

  Future<void> removeMany(List<DOM> doms) => realmCollection.removeMany(doms);

  Stream<List<DOM>> streamAll() => realmCollection.streamAll();

  Stream<DOM> stream(String id) => realmCollection.stream(id);

  Stream<List<DOM>> streamMany(List<String> ids) =>
      realmCollection.streamMany(ids);
}
