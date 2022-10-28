import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EntryEditRoute extends GoRouteData {
  const EntryEditRoute();

  @override
  Widget build(BuildContext context) => throw UnimplementedError();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
