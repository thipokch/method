import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../view/home_page.dart';

/// {@template home_route}
/// A description for HomeRoute
/// {@endtemplate}
class HomeRoute extends GoRouteData{
  /// {@macro home_route}
  const HomeRoute();

  @override
  Widget build(BuildContext context) => const HomePage();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
