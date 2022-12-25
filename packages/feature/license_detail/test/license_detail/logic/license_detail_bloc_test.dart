// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_license_detail/license_detail.dart';

void main() {
  group('LicenseDetailBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          LicenseDetailBloc(),
          isNotNull,
        );
      });
    });

    blocTest<LicenseDetailBloc, LicenseDetailState>(
      'LicenseDetailEvent.create() emits nothing',
      build: LicenseDetailBloc.new,
      act: (bloc) => bloc.add(const LicenseDetailEvent.create()),
      expect: () => <LicenseDetailState>[],
    );
  });
}
