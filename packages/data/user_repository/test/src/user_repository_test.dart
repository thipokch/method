import 'package:method_user_repository/user_repository.dart';
import 'package:test/test.dart';

void main() {
  group('UserRepository', () {
    late UserRepository userRepository;

    setUp(() {
      userRepository = const UserRepository();
    });

    test('can be instantiated', () {
      expect(const UserRepository(), isNotNull);
    });
    
    group('getThemeMode', () {
      test('executes happy flow', () async {
        final someValue = userRepository.getThemeMode();
        //expect(someValue, equals(someValue));
      });

      test('executes edge flow', () async {
        final someValue = userRepository.getThemeMode();
        //expect(someValue, equals(someValue));
      });
    });
    
    group('setThemeMode', () {
      test('executes happy flow', () async {
        final someValue = userRepository.setThemeMode();
        //expect(someValue, equals(someValue));
      });

      test('executes edge flow', () async {
        final someValue = userRepository.setThemeMode();
        //expect(someValue, equals(someValue));
      });
    });
    
  });
}
