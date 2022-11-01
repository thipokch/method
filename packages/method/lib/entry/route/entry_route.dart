import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../entry.dart';

class EntryRoute extends GoRouteData {
  const EntryRoute();

  @override
  Widget build(BuildContext context) => const EntryPage();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
