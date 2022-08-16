import 'package:core/abstract/identify.dart';
import 'package:core/abstract/locate.dart';
import 'package:uuid/uuid.dart';

class Uniform implements Identify, Locate {
  const Uniform({
    required this.collectionSlug,
    required this.hierarchyPath,
    required this.id,
    this.uuid = const Uuid(),
  });

  @override
  final String collectionSlug;

  @override
  final String hierarchyPath;

  @override
  final String id;

  @override
  final Uuid uuid;
}
