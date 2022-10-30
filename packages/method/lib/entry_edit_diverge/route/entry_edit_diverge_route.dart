import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../entry_edit_diverge.dart';

class EntryEditDivergeRoute extends GoRouteData {
  const EntryEditDivergeRoute();

  @override
  Widget build(BuildContext context) => const EntryEditDivergePage();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
