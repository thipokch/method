import 'package:method_core/model/session.dart';
import 'package:method_realm/collection/collection.dart';
import 'package:method_realm/driver.dart';

class SessionRepository with RealmRepository<Session, SessionCollection> {
  @override
  final SessionCollection realmCollection;

  const SessionRepository._(this.realmCollection);

  factory SessionRepository.from({
    required RealmDriver realm,
  }) =>
      SessionRepository._(SessionCollection(realm));
}
