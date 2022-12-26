import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

/// {@template error_service}
/// [ErrorService] description
/// {@endtemplate}
class ErrorService {
  /// {@macro error_service}
  const ErrorService({
    @visibleForTesting required FirebaseCrashlytics crashlytics,
  }) : _crashlytics = crashlytics;

  // Delegate

  final FirebaseCrashlytics _crashlytics;
  // TODO: Sentry 

  Future<void> recordFlutterError(FlutterErrorDetails flutterErrorDetails) => _crashlytics.recordFlutterError(flutterErrorDetails);

  Future<void> recordError(
    dynamic exception,
    StackTrace? stack, {
    bool fatal = false,
  }) => _crashlytics.recordError(
      exception,
      stack,
      fatal: fatal,
    );
}
