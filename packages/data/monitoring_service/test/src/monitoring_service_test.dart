import 'package:method_monitoring_service/monitoring_service.dart';
import 'package:test/test.dart';

void main() {
  group('MonitoringService', () {
    late MonitoringService monitoringService;

    setUp(() {
      monitoringService = const MonitoringService();
    });

    test('can be instantiated', () {
      expect(const MonitoringService(), isNotNull);
    });
    
  });
}
