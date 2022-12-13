import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../view/{{feature_name.snakeCase()}}_page.dart';

/// {@template {{feature_name.snakeCase()}}_route}
/// A description for {{feature_name.pascalCase()}}Route
/// {@endtemplate}
class {{feature_name.pascalCase()}}Route extends GoRouteData{
  /// {@macro {{feature_name.snakeCase()}}_route}
  const {{feature_name.pascalCase()}}Route();

  @override
  Widget build(BuildContext context) => const {{feature_name.pascalCase()}}Page();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
