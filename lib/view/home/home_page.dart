import 'package:flutter/material.dart';
import 'package:matter/button/button_tonal.dart';
import 'package:matter/page/page.dart';
import 'package:method/view/settings/settings_page.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class HomePage extends MethodPage {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget get child => Center(
        child: _HomeView(),
      );

  @override
  String get title => "Home";
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ButtonTonal(
        child: const Text("Settings"),
        onPressed: () => showCupertinoModalBottomSheet(
          context: context,
          builder: ((context) => const SettingsPage()),
        ),
      );
}
