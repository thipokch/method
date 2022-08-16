import 'package:uuid/uuid.dart';

abstract class Identify {
  const Identify({
    required this.id,
    this.uuid = const Uuid(),
  });

  final String id;
  final Uuid uuid;
}
