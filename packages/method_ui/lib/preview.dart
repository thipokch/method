import 'package:method_ui/element_symbol.dart';
import 'package:flutter/material.dart';
import 'package:method_ui/preview_composite.dart';
import 'package:method_ui/preview_element.dart';
import 'package:method_ui/preview_style.dart';
import 'package:method_ui/preview_presentation.dart';

// NavigationRail shows if the screen width is greater or equal to
// screenWidthThreshold; otherwise, NavigationBar is used for navigation.
const double narrowScreenWidthThreshold = 450;

const Color m3BaseColor = Color(0xff6750a4);

class MatterPreview extends StatefulWidget {
  const MatterPreview({super.key});

  @override
  State<MatterPreview> createState() => _MatterPreviewState();
}

class _MatterPreviewState extends State<MatterPreview> {
  int screenIndex = 0;
  void onScreenChanged(int selectedScreen) {
    setState(() {
      screenIndex = selectedScreen;
    });
  }

  Widget createScreenFor(int screenIndex, bool showNavBarExample) {
    switch (screenIndex) {
      case 0:
        return const CompositePreview();
      case 1:
        return ElementPreview(showNavBottomBar: showNavBarExample);
      case 2:
        return const PresentationPreview();
      case 3:
        return const StylePreview();
      default:
        return ElementPreview(showNavBottomBar: showNavBarExample);
    }
  }

  PreferredSizeWidget createAppBar() {
    return AppBar(
      leading: IconButton(
        icon: const Icon(ElementSymbol.chevronBack),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: const Text("Matter Preview"),
    );
  }

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constraints) =>
            constraints.maxWidth < narrowScreenWidthThreshold
                ? Scaffold(
                    appBar: createAppBar(),
                    body: Row(
                      children: <Widget>[createScreenFor(screenIndex, false)],
                    ),
                    bottomNavigationBar: NavigationBars(
                      onSelectItem: onScreenChanged,
                      selectedIndex: screenIndex,
                      isExampleBar: false,
                    ),
                  )
                : Scaffold(
                    appBar: createAppBar(),
                    body: SafeArea(
                      bottom: false,
                      top: false,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: NavigationRailSection(
                              onSelectItem: onScreenChanged,
                              selectedIndex: screenIndex,
                            ),
                          ),
                          const VerticalDivider(thickness: 1, width: 1),
                          createScreenFor(screenIndex, true),
                        ],
                      ),
                    ),
                  ),
      );
}

//
// Matter Preview - Navigation Bar
//

const List<NavigationDestination> appBarDestinations = [
  NavigationDestination(
    tooltip: "",
    icon: Icon(ElementSymbol.apps),
    label: 'Composite',
    selectedIcon: Icon(ElementSymbol.appsFilled),
  ),
  NavigationDestination(
    tooltip: "",
    icon: Icon(ElementSymbol.shapes),
    label: 'Element',
    selectedIcon: Icon(ElementSymbol.shapesFilled),
  ),
  NavigationDestination(
    tooltip: "",
    icon: Icon(ElementSymbol.textEffects),
    label: 'Presentation',
    selectedIcon: Icon(ElementSymbol.textEffectsFilled),
  ),
  NavigationDestination(
    tooltip: "",
    icon: Icon(ElementSymbol.style),
    label: 'Style',
    selectedIcon: Icon(ElementSymbol.styleFilled),
  ),
];

final List<NavigationRailDestination> navRailDestinations = appBarDestinations
    .map(
      (destination) => NavigationRailDestination(
        icon: Tooltip(
          message: destination.label,
          child: destination.icon,
        ),
        selectedIcon: Tooltip(
          message: destination.label,
          child: destination.selectedIcon,
        ),
        label: Text(destination.label),
      ),
    )
    .toList();

class NavigationBars extends StatefulWidget {
  final void Function(int)? onSelectItem;
  final int selectedIndex;
  final bool isExampleBar;

  const NavigationBars({
    super.key,
    this.onSelectItem,
    required this.selectedIndex,
    required this.isExampleBar,
  });

  @override
  State<NavigationBars> createState() => _NavigationBarsState();
}

class _NavigationBarsState extends State<NavigationBars> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: _selectedIndex,
      onDestinationSelected: (index) {
        setState(() {
          _selectedIndex = index;
        });
        if (!widget.isExampleBar) widget.onSelectItem!(index);
      },
      destinations: appBarDestinations,
    );
  }
}

class NavigationRailSection extends StatefulWidget {
  final void Function(int) onSelectItem;
  final int selectedIndex;

  const NavigationRailSection({
    super.key,
    required this.onSelectItem,
    required this.selectedIndex,
  });

  @override
  State<NavigationRailSection> createState() => _NavigationRailSectionState();
}

class _NavigationRailSectionState extends State<NavigationRailSection> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      minWidth: 50,
      destinations: navRailDestinations,
      selectedIndex: _selectedIndex,
      useIndicator: true,
      onDestinationSelected: (index) {
        setState(() {
          _selectedIndex = index;
        });
        widget.onSelectItem(index);
      },
    );
  }
}

void showMatterPreview({
  required BuildContext context,
  bool useRootNavigator = false,
}) {
  Navigator.of(context, rootNavigator: useRootNavigator)
      .push(MaterialPageRoute<void>(
    builder: (BuildContext context) => const MatterPreview(),
  ));
}
