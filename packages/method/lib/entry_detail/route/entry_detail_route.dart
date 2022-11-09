import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../entry_detail.dart';

class EntryDetailRoute extends GoRouteData {
  const EntryDetailRoute();

  @override
  Widget build(BuildContext context) => const EntryDetailPage();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
