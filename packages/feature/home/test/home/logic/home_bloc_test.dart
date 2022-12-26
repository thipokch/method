// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_home/home.dart';

void main() {
  group('HomeBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          HomeBloc(),
          isNotNull,
        );
      });
    });

    blocTest<HomeBloc, HomeState>(
      'HomeEvent.create() emits nothing',
      build: HomeBloc.new,
      act: (bloc) => bloc.add(const HomeEvent.create()),
      expect: () => <HomeState>[],
    );
  });
}
