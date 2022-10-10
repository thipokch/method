import 'package:method_style/element_scale.dart';
import 'package:method_style/element_symbol.dart';
import 'package:flutter/material.dart';
import 'package:method_ui/nav/nav_context.dart';
import 'package:method_ui/scroll/pairing_scroll_controller.dart';
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
              exit: AspectRatio(
                aspectRatio: 1,
                child: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(ElementSymbol.dismiss),
                  iconSize: ElementScale.iconM,
                ),
              ),
              child: Navigator(
                onGenerateRoute: (settings) => MaterialWithModalsPageRoute(
                  settings: settings,
                  builder: (childContext) => SettingsPage(
                    trailing: NavigationContext.of(childContext)?.exit,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
