import 'package:element/element_color.dart';
import 'package:element/element_icon.dart';
import 'package:element/element_typography.dart';
import 'package:flutter/material.dart';
import 'package:matter/patch/ink_sparkle.dart';
import 'package:matter/preview_composite.dart';
import 'package:matter/preview_element.dart';
import 'package:matter/preview_style.dart';
import 'package:matter/preview_presentation.dart';

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
  bool useMaterial3 = true;
  bool useLightMode = true;
  int screenIndex = 0;

  late ThemeData themeData;

  @override
  initState() {
    super.initState();
    themeData = updateThemes(useLightMode);
  }

  ThemeData updateThemes(bool useLightMode) {
    return ThemeData(
      useMaterial3: useMaterial3,
      textTheme: ElementTypography.textStyle,
      splashFactory: InkSparklePatch.splashFactory,
      colorScheme: useLightMode
          ? ElementColor.lightColorStyle
          : ElementColor.darkColorStyle,
    );
  }

  void onScreenChanged(int selectedScreen) {
    setState(() {
      screenIndex = selectedScreen;
    });
  }

  void onBrightnessChange() {
    setState(() {
      useLightMode = !useLightMode;
      themeData = updateThemes(!useLightMode);
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
        icon: const Icon(ElementIcon.brandArrowLeft),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: const Text("Matter Preview"),
      actions: [
        IconButton(
          icon: useLightMode
              ? const Icon(ElementIcon.sunMax)
              : const Icon(ElementIcon.sunMin),
          onPressed: onBrightnessChange,
          tooltip: "Toggle brightness",
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Matter Preview",
      themeMode: useLightMode ? ThemeMode.light : ThemeMode.dark,
      theme: themeData,
      home: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            currentFocus.focusedChild?.unfocus();
          }
        },
        child: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < narrowScreenWidthThreshold) {
            return Scaffold(
              appBar: createAppBar(),
              body: Row(children: <Widget>[
                createScreenFor(screenIndex, false),
              ]),
              bottomNavigationBar: NavigationBars(
                onSelectItem: onScreenChanged,
                selectedIndex: screenIndex,
                isExampleBar: false,
              ),
            );
          } else {
            return Scaffold(
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
            );
          }
        }),
      ),
    );
  }
}

//
// Matter Preview - Navigation Bar
//

const List<NavigationDestination> appBarDestinations = [
  NavigationDestination(
    tooltip: "",
    icon: Icon(ElementIcon.apps),
    label: 'Composite',
    selectedIcon: Icon(ElementIcon.appsFilled),
  ),
  NavigationDestination(
    tooltip: "",
    icon: Icon(ElementIcon.shapes),
    label: 'Element',
    selectedIcon: Icon(ElementIcon.shapesFilled),
  ),
  NavigationDestination(
    tooltip: "",
    icon: Icon(ElementIcon.textEffects),
    label: 'Presentation',
    selectedIcon: Icon(ElementIcon.textEffectsFilled),
  ),
  NavigationDestination(
    tooltip: "",
    icon: Icon(ElementIcon.style),
    label: 'Style',
    selectedIcon: Icon(ElementIcon.styleFilled),
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
  assert(context != null);
  assert(useRootNavigator != null);
  Navigator.of(context, rootNavigator: useRootNavigator)
      .push(MaterialPageRoute<void>(
    builder: (BuildContext context) => const MatterPreview(),
  ));
}
