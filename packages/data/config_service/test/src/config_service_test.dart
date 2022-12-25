import 'package:method_config_service/config_service.dart';
import 'package:test/test.dart';

void main() {
  group('ConfigService', () {
    late ConfigService configService;

    setUp(() {
      configService = const ConfigService();
    });

    test('can be instantiated', () {
      expect(const ConfigService(), isNotNull);
    });
    
  });
}
