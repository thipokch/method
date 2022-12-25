import 'package:firebase_remote_config/firebase_remote_config.dart';

/// {@template config_repository}
/// [ConfigRepository] description
/// {@endtemplate}
class ConfigRepository {
  ConfigRepository({
    required this.remote,
    required this.localDefaults,
  });

  // Delegate

  final FirebaseRemoteConfig remote;

  /// Default config values for offline use
  final Map<String, dynamic> localDefaults;

  // Methods

  Future<void> load() async {
    await remote.setDefaults(localDefaults);
    await remote.fetchAndActivate();
  }

  // Properties

  /// Get feedback form url
  String get feedbackFormUrl => remote.getString('feedback_form_url');
  
}
