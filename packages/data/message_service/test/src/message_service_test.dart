import 'package:method_message_service/message_service.dart';
import 'package:test/test.dart';

void main() {
  group('MessageService', () {
    late MessageService messageService;

    setUp(() {
      messageService = const MessageService();
    });

    test('can be instantiated', () {
      expect(const MessageService(), isNotNull);
    });
    
  });
}
