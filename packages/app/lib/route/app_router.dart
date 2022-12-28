import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:method_app/route/route.dart';
// import 'package:flutter_segment/flutter_segment.dart';
// import 'package:rudder_sdk_flutter/RudderController.dart';

abstract class AppRouter {
  static final defaultRouter = GoRouter(
    // observers: [defaultObserver],
    debugLogDiagnostics: kDebugMode,
    navigatorKey: defaultNavigator,
    initialLocation: defaultLocation,
    routes: defaultRoutes,
  );

  // DEFAULTS

  static final defaultNavigator =
      GlobalKey<NavigatorState>(debugLabel: 'AppRouter');

  static String defaultNameExtractor(RouteSettings settings) =>
      settings.name ?? GoRouter.of(defaultNavigator.currentContext!).location;

  // static final defaultObserver = AnalyticRouteObserver(
  //   analytic: AnalyticService,
  //   nameExtractor: defaultNameExtractor,
  // );

  // static final defaultObserver = SegmentObserver(
  //   // analytics: RudderController.instance,
  //   nameExtractor: defaultNameExtractor,
  // );

  static final String defaultLocation = SettingsRoutes().location;
  static final List<RouteBase> defaultRoutes = [AppShell.defaultRoute];
}
