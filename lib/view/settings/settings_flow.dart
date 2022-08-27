import 'package:element/element_icon.dart';
import 'package:flutter/material.dart';
import 'package:matter/scroll/pairing_scroll_controller.dart';
import 'package:method/view/settings/settings_page.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class SettingsFlow extends StatelessWidget {
  const SettingsFlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => HeroControllerScope(
        controller: MaterialApp.createMaterialHeroController(),
        child: Material(
          child: Navigator(
            // initialRoute: 'settings',
            onGenerateRoute: (settings) => MaterialWithModalsPageRoute(
              settings: settings,
              builder: (_) => SettingsPage(
                controller: PairingScrollController.of(context)?.push(),
                trailing: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(ElementIcon.dismiss),
                  iconSize: 20,
                ),
              ),
            ),
          ),
        ),
      );
}
