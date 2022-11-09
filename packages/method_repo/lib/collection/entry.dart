import 'package:method_core/model/entry.dart';
import 'package:method_isar/driver.dart';
import 'package:method_isar/entry/collection.dart';

class EntryRepository with IsarRepository<Entry, DbEntryCollection> {
  @override
  final DbEntryCollection isarCollection;

  const EntryRepository._(this.isarCollection);

  factory EntryRepository.from({
    required IsarDriver isar,
  }) =>
      EntryRepository._(DbEntryCollection(isar));
}
