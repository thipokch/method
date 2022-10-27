import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../entry_edit.dart';

class EntryEditRoute extends GoRouteData {
  const EntryEditRoute();

  @override
  Widget build(BuildContext context) => const EntryEditView();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
