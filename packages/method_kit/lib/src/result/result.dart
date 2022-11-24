import 'package:method_kit/src/identifier/identifier.dart';

abstract class Result {
  final Identifier? id;
  final DateTime startDate;
  final DateTime endDate;

  const Result({
    required this.id,
    required this.startDate,
    required this.endDate,
  });
}
