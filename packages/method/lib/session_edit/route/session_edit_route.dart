import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../session_edit.dart';

class SessionEditRoute extends GoRouteData {
  final String id;

  const SessionEditRoute(this.id);

  @override
  Widget build(BuildContext context) => const SessionEditPage();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
