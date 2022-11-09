import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../entry_edit_linear.dart';

class EntryEditLinearRoute extends GoRouteData {
  const EntryEditLinearRoute();

  @override
  Widget build(BuildContext context) => const EntryEditLinearPage();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
