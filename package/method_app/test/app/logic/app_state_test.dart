// ignore_for_file: unused_local_variable

import 'package:flutter_test/flutter_test.dart';
import 'package:method_app/app/app.dart';

void main() {
  group(
    'AppState',
    () {
      test('Constructing AppState', () {
        const initial = AppState.initial();
        const resumed = AppState.resumed();
        const destroyed = AppState.destroyed();
      });
    },
    skip: true,
  );
}
