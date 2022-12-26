import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:method_config_service/config_service.dart';
import 'package:test/test.dart';

void main() {
  group('ConfigService', () {
    late ConfigService configService;

    setUp(() {
      configService =
          ConfigService(remoteConfig: FirebaseRemoteConfig.instance);
    });

    test('can be instantiated', () {
      expect(ConfigService(remoteConfig: FirebaseRemoteConfig.instance),
          isNotNull);
    });
  });
}
