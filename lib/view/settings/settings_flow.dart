import 'package:element/element_icon.dart';
import 'package:flutter/material.dart';
import 'package:matter/nav/nav_context.dart';
import 'package:matter/scroll/pairing_scroll_controller.dart';
import 'package:method/view/settings/settings_page.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class SettingsFlow extends StatefulWidget {
  SettingsFlow({Key? key}) : super(key: key);

  final scrollingControllerScope = PairingScrollControllerGroup();
  final heroController = MaterialApp.createMaterialHeroController();

  @override
  State<StatefulWidget> createState() => SettingsFlowState();
}

class SettingsFlowState extends State<SettingsFlow> {
  @override
  Widget build(BuildContext context) => PairingScrollController(
        group: widget.scrollingControllerScope,
        child: HeroControllerScope(
          controller: widget.heroController,
          child: Material(
            type: MaterialType.transparency,
            child: NavigationContext(
              exit: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(ElementIcon.dismiss),
                iconSize: 20,
              ),
              child: Navigator(
                onGenerateRoute: (settings) => MaterialWithModalsPageRoute(
                  settings: settings,
                  builder: (childContext) => SettingsPage(
                    // key: const ObjectKey("SettingsPage"),
                    controller: widget.scrollingControllerScope.push(),
                    trailing: NavigationContext.of(childContext)?.exit,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
