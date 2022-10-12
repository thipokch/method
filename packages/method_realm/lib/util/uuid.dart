import 'package:method_core/util/uuid.dart' hide Uuid;
import 'package:realm/realm.dart';

extension RealmUuid on UuidValue {
  Uuid toRealm() => Uuid.fromString(uuid);
}
