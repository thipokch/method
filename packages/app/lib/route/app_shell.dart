import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:method_app/route/app_routes.dart';
import 'package:method_style/method_style.dart';
import 'package:provider/provider.dart';

class AppShell extends StatefulWidget {
  const AppShell({
    required this.child,
    required this.destinations,
  });

  final Widget child;
  final List<_AppShellDestination> destinations;

  static final navigator = GlobalKey<NavigatorState>(debugLabel: 'AppShell');
  static final defaultRoute = ShellRoute(
    navigatorKey: navigator,
    // builder: (context, state, child) => HomePage(child: child),
    pageBuilder: (context, state, child) => MtRootSheetPage(
      child: MultiProvider(
        // create: (_) => navigator,
        providers: [
          Provider(create: (_) => navigator),
          // Provider(create: (_) => HomeBloc(navigator: _.read())),
        ],
        child: AppShell(child: child, destinations: [
          _AppShellDestination(
            path: SettingsRoutes().location,
            icon: Icon(MtSymbols.list),
            selectedIcon: Icon(MtSymbols.listFilled),
            label: 'Timeline',
          ),
          _AppShellDestination(
            path: SettingsRoutes().location + "test",
            icon: Icon(MtSymbols.list),
            selectedIcon: Icon(MtSymbols.listFilled),
            label: 'Test',
          ),
        ]),
      ),
    ),
    // observers:  [
    // AppRoute.defaultObserver,
    // ],
    routes: [
      // $sessionFlow,
      // Workaround for go_router_builder #2672
      // ..routes.insertAll(0, <GoRoute>[
      //   GoRoute(
      //     path: ":id/edit",
      //     parentNavigatorKey: AppRoute.defaultNavigator,
      //     pageBuilder: (_, state) => SessionEditRoute(state.params["id"]!)
      //         .buildPage(_, state),
      //   ),
      // ]),
      // $exerciseFlow,
      // ..routes.insertAll(0, <GoRoute>[
      //   GoRoute(
      //     path: ":id/start",
      //     parentNavigatorKey: AppRoute.defaultNavigator,
      //     pageBuilder: (_, state) => ExerciseStartRoute(state.params["id"]!)
      //         .buildPage(_, state),
      //   ),
      // ]),
      $settingsRoutes,
    ],
  );

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int _locationToIndex(String location) {
    final index =
        widget.destinations.indexWhere((t) => location.startsWith(t.path));
    // if index not found (-1), return 0
    return index < 0 ? 0 : index;
  }

  int get _selectedIndex => _locationToIndex(GoRouter.of(context).location);

  void _onDestinationSelected(BuildContext context, int tabIndex) {
    // Only navigate if the tab index has changed
    if (tabIndex != _selectedIndex) {
      context.go(widget.destinations[tabIndex].path);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        bottomNavigationBar: Theme(
          data:
              Theme.of(context).copyWith(splashFactory: NoSplash.splashFactory),
          child: NavigationBar(
            onDestinationSelected: (index) =>
                _onDestinationSelected(context, index),
            selectedIndex: _selectedIndex,
            destinations: widget.destinations,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            // backgroundColor: Colors.transparent,
            // surfaceTintColor: Colors.transparent,
            height: 64,
          ),
        ),
        body: widget.child,
      );
}

class _AppShellDestination extends NavigationDestination {
  const _AppShellDestination({
    required this.path,
    required super.icon,
    super.selectedIcon,
    required super.label,
    super.tooltip,
  });

  /// Location/path used to navigate to this destination via [GoRouter]
  final String path;
}
