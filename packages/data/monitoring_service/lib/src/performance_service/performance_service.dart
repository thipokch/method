import 'package:firebase_performance/firebase_performance.dart';
import 'package:flutter/foundation.dart';

/// {@template performance_service}
/// [PerformanceService] description
/// {@endtemplate}
class PerformanceService {
  /// {@macro performance_service}
  const PerformanceService({
    @visibleForTesting required FirebasePerformance performance,
  }) : _perfomance = performance;

  // Delegate

  final FirebasePerformance _perfomance;
  // TODO: Sentry

}
