import 'package:element/element_color.dart';
import 'package:element/element_typography.dart';
import 'package:flutter/material.dart';
import 'package:matter/patch/ink_sparkle.dart';

import 'dev_home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'method',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: ElementTypography.textStyle,
        splashFactory: InkSparklePatch.splashFactory,
        colorScheme: ElementColor.lightColorStyle,
      ),
      home: const DevHome(title: 'Developer Home'),
    );
  }
}
