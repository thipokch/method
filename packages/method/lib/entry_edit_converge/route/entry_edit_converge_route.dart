import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../entry_edit_converge.dart';

class EntryEditConvergeRoute extends GoRouteData {
  const EntryEditConvergeRoute();

  @override
  Widget build(BuildContext context) => const EntryEditConvergePage();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
