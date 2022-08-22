import 'package:component/settings/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('state equality', () {
    final a = SettingsState.loaded(themeMode: ThemeMode.dark);
    final b = SettingsState.loaded(themeMode: ThemeMode.light);
    expect(a, isNot(b));
  });
}
