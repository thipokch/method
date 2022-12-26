import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';

part 'iconfig_service.dart';

/// {@template config_service}
/// ConfigService description
/// {@endtemplate}
class ConfigService implements IConfigService {
  /// {@macro config_service}
  const ConfigService({
    @visibleForTesting required FirebaseRemoteConfig remoteConfig,
  }) : _remote = remoteConfig;

  final FirebaseRemoteConfig _remote;

  Future<void> load() async {
    await _remote.setDefaults(<String, dynamic>{});
    await _remote.fetchAndActivate();
  }
}
