import 'package:method_core/model/session.dart';
import 'package:method_isar/driver.dart';
import 'package:method_isar/session/collection.dart';

class SessionRepository with IsarRepository<Session, DbSessionCollection> {
  @override
  final DbSessionCollection isarCollection;

  const SessionRepository._(this.isarCollection);

  factory SessionRepository.from({
    required IsarDriver isar,
  }) =>
      SessionRepository._(DbSessionCollection(isar));
}
