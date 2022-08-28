import 'package:element/element_touch.dart';
import 'package:flutter/material.dart';
import 'package:matter/button/button_tonal.dart';
import 'package:matter/page/page.dart';
import 'package:matter/scroll/pairing_scroll_controller.dart';
import 'package:method/view/settings/settings_flow.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class HomePage extends MethodPage {
  HomePage({
    Key? key,
    super.heroTag,
    super.leading,
    super.trailing,
  }) : super(
          key: key,
          title: "Home",
          child: _HomeView(),
        );
}

class _HomeViewState extends State<_HomeView> {
  @override
  Widget build(BuildContext context) => Column(
        children: [
          ButtonTonal(
            child: const Text("Settings"),
            onPressed: () {
              ElementTouch.light();

              showCupertinoModalBottomSheet(
                expand: false,
                context: context,
                builder: (context) => SettingsFlow(),
                duration: const Duration(milliseconds: 300),
              );
            },
          ),
        ],
      );
}

class _HomeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeViewState();

  final PairingScrollControllerGroup settingsGroup =
      PairingScrollControllerGroup();
}
