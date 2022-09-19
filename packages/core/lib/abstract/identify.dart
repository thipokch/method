import 'package:uuid/uuid.dart';

abstract class Identify {
  String get id;
  UuidValue? get uuid;
}
