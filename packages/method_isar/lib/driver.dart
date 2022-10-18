import 'package:method_isar/schema.dart';
import 'package:method_repo/content/content.dart';
import 'package:method_repo/source/driver.dart';
import 'package:isar/isar.dart' show Isar;

import 'collection/collection.dart';
import 'exercise/collection.dart';

class IsarDriver extends SourceDriver<Isar> {
  IsarDriver(super.instance);

  static Future<IsarDriver> open() async {
    final driver = IsarDriver(await Isar.open(
      [
        DbTaskSchema,
        DbSessionSchema,
        DbExerciseSchema,
        DbEntrySchema,
      ],
    ));

    DbExerciseCollection(driver).putMany([
      Content.exerciseNote,
      Content.exerciseThought,
      Content.exerciseMood,
      Content.exerciseAct,
    ]);

    return driver;
  }

  Future<void> reset() => instance.close(deleteFromDisk: true);
}

mixin IsarRepository<DOM, COLLECTION extends Collection<DOM, DaoObject>> {
  COLLECTION get isarCollection;

  int get count => isarCollection.count;

  bool get isEmpty => isarCollection.isEmpty;

  Future<List<DOM>> getAll() => isarCollection.getAll();

  Future<DOM?> get(String id) => isarCollection.get(id);

  Future<List<DOM>> getMany(List<String> ids) => isarCollection.getMany(ids);

  Future<void> put(DOM dom) => isarCollection.put(dom);

  Future<void> putMany(List<DOM> doms) => isarCollection.putMany(doms);

  Future<void> removeAll() => isarCollection.removeAll();

  Future<void> remove(DOM dom) => isarCollection.remove(dom);

  Future<void> removeMany(List<DOM> doms) => isarCollection.removeMany(doms);

  Stream<List<DOM>> streamAll() => isarCollection.streamAll();

  Stream<DOM?> stream(String id) => isarCollection.stream(id);

  Stream<List<DOM>> streamMany(List<String> ids) =>
      isarCollection.streamMany(ids);
}
