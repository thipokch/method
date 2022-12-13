import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../view/login_page.dart';

/// {@template login_route}
/// A description for LoginRoute
/// {@endtemplate}
class LoginRoute extends GoRouteData {
  /// {@macro login_route}
  const LoginRoute();

  @override
  Widget build(BuildContext context) => const LoginPage();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
