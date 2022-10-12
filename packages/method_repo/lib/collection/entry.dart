import 'package:method_core/model/entry.dart';
import 'package:method_realm/collection/collection.dart';
import 'package:method_realm/driver.dart';

class EntryRepository with RealmRepository<Entry, EntryCollection> {
  @override
  final EntryCollection realmCollection;

  const EntryRepository._(this.realmCollection);

  factory EntryRepository.from({
    required RealmDriver realm,
  }) =>
      EntryRepository._(EntryCollection(realm));
}
