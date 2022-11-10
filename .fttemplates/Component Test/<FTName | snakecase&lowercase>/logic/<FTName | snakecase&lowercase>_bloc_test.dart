import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method/<FTName | snakecase&lowercase>/<FTName | snakecase&lowercase>.dart';

void main() {
  group('<FTName | pascalcase>Bloc', () {
    blocTest<<FTName | pascalcase>Bloc, <FTName | pascalcase>State>(
      'onCreate',
      build: () => <FTName | pascalcase>Bloc(),
      act: (_) => _.add(const <FTName | pascalcase>Event.create()),
      expect: () => [
        <FTName | pascalcase>State.created(),
      ],
    );
  });
}
