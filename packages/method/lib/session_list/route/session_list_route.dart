import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../session_list.dart';

class SessionListRoute extends GoRouteData {
  const SessionListRoute();

  @override
  Widget build(BuildContext context) => const SessionListPage();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
