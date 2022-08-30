import 'package:element/element_symbol.dart';
import 'package:flutter/material.dart';
import 'package:matter/nav/nav_context.dart';
import 'package:matter/scroll/pairing_scroll_controller.dart';
import 'package:method/view/settings/settings_page.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class SettingsFlow extends StatefulWidget {
  const SettingsFlow({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SettingsFlowState();
}

class SettingsFlowState extends State<SettingsFlow> {
  final scrollingControllerScope = PairingScrollControllerGroup();
  late ScrollController rootScrollingController;
  final heroController = MaterialApp.createMaterialHeroController();

  @override
  void initState() {
    rootScrollingController = scrollingControllerScope.push();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => PairingScrollController(
        group: scrollingControllerScope,
        child: HeroControllerScope(
          controller: heroController,
          child: Material(
            type: MaterialType.transparency,
            child: NavigationContext(
              exit: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(ElementSymbol.dismissFilled),
                iconSize: 20,
              ),
              child: Navigator(
                onGenerateRoute: (settings) => MaterialWithModalsPageRoute(
                  settings: settings,
                  builder: (childContext) => SettingsPage(
                    // key: const ObjectKey("SettingsPage"),
                    controller: rootScrollingController,
                    trailing: NavigationContext.of(childContext)?.exit,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
