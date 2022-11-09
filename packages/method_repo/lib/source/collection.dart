import 'package:method_repo/source/driver.dart';

abstract class SourceCollection<DRIVER, DOM> extends BaseCollection<DOM> {
  final SourceDriver<DRIVER> source;
  DRIVER get instance => source.instance;

  const SourceCollection(this.source);
}

abstract class BaseCollection<DOM> {
  const BaseCollection();

  // METADATA

  bool get isEmpty;
  int get count;

  // GET

  Future<List<DOM>> getAll();

  Future<DOM?> get(String id);
  Future<List<DOM>> getMany(List<String> ids);

  // STREAM

  Stream<List<DOM>> streamAll();

  Stream<DOM?> stream(String id);
  Stream<List<DOM>> streamMany(List<String> ids);

  // PUT

  Future<void> put(DOM dom);
  Future<void> putMany(List<DOM> doms);

  // REMOVE

  Future<void> removeAll();

  Future<void> remove(DOM dom);
  Future<void> removeMany(List<DOM> doms);
}
