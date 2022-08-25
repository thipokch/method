import 'package:element/element_icon.dart';
import 'package:element/element_touch.dart';
import 'package:flutter/material.dart';
import 'package:method/view/settings/settings_page.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class SettingsFlow extends StatelessWidget {
  const SettingsFlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => HeroControllerScope(
        controller: MaterialApp.createMaterialHeroController(),
        child: Material(
          child: Navigator(
            initialRoute: 'settings',
            onGenerateRoute: (settings) => MaterialWithModalsPageRoute(
              settings: settings,
              builder: (_) => SettingsPage(
                trailing: Container(
                  padding: EdgeInsets.zero,
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: const Icon(ElementIcon.dismissFilled),
                    onPressed: () {
                      ElementTouch.light();
                      Navigator.of(context).pop();
                    },
                    iconSize: 24,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
