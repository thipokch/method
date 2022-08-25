import 'package:flutter/material.dart';
import 'package:matter/button/button_tonal.dart';
import 'package:matter/page/page.dart';
import 'package:method/view/settings/settings_flow.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class HomePage extends MethodPage {
  const HomePage({
    Key? key,
    super.title = "Home",
  }) : super(key: key);

  @override
  MethodPageBuilder get builder => ((context) => _HomeView());
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
        child: ButtonTonal(
          child: const Text("Settings"),
          onPressed: () => showCupertinoModalBottomSheet(
            context: context,
            builder: ((context) => const SettingsFlow()),
          ),
        ),
      );
}
