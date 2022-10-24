import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../session_detail.dart';

class SessionDetailRoute extends GoRouteData {
  const SessionDetailRoute(this.id);

  final String id;

  @override
  Widget build(BuildContext context) => const SessionDetailPage();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
