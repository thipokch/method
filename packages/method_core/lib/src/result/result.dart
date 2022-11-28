import 'package:method_core/method_core.dart';

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
