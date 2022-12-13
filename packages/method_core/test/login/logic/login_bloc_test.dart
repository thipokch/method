// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_core/login/logic/logic.dart';

void main() {
  group('LoginBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          LoginBloc(),
          isNotNull,
        );
      });
    });

    blocTest<LoginBloc, LoginState>(
      'LoginEvent.create() emits nothing',
      build: LoginBloc.new,
      act: (bloc) => bloc.add(const LoginEvent.create()),
      expect: () => <LoginState>[],
    );
  });
}
