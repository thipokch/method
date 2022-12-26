import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:method_app/app/route/route.dart';
import 'package:method_app/home/home.dart';
import 'package:method_app/route_observer/analytic_route_observer.dart';
import 'package:method_data/method_data.dart';
// import 'package:flutter_segment/flutter_segment.dart';
// import 'package:rudder_sdk_flutter/RudderController.dart';

class AppRoute {
  const AppRoute._();

  // DEFAULTS

  static final defaultNavigator =
      GlobalKey<NavigatorState>(debugLabel: 'AppRoute');

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

  static final String defaultLocation = const SettingsFlow().location;

  static final List<RouteBase> defaultRoutes = [HomeRoute.routes];

  // GENERATOR

  static final defaultRouter = GoRouter(
    // observers: [defaultObserver],
    debugLogDiagnostics: kDebugMode,
    navigatorKey: defaultNavigator,
    initialLocation: defaultLocation,
    routes: defaultRoutes,
  );
}
