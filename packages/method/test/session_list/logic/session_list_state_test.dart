// ignore_for_file: unused_local_variable

import 'package:flutter_test/flutter_test.dart';
import 'package:method/session_list/logic/session_list_bloc.dart';

void main() {
  group('SessionListState', () {
    test('Constructing SessionListState', () {
      const initial = SessionListState.initial;
      const started = SessionListState.started;
      const destroyed = SessionListState.destroyed;
    });
  });
}
