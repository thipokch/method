import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:method/app/route/route.dart';
import 'package:method/home/home.dart';

class AppRoute {
  const AppRoute._();

  // DEFAULTS

  static final defaultNavigator =
      GlobalKey<NavigatorState>(debugLabel: 'AppRoute');

  static String defaultNameExtractor(settings) =>
      GoRouter.of(defaultNavigator.currentContext!).location;

  static final defaultObserver = FirebaseAnalyticsObserver(
    analytics: FirebaseAnalytics.instance,
    nameExtractor: defaultNameExtractor,
  );

  static final String defaultLocation = const ExerciseFlow().location;

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
