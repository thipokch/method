abstract class Maintain {
  Maintain({
    required this.createdAt,
    required this.readAt,
    required this.updatedAt,
    required this.commitedAt,
    required this.deletedAt,
  });

  final DateTime createdAt;
  final DateTime readAt;
  final DateTime updatedAt;
  final DateTime commitedAt;
  final DateTime deletedAt;
}
