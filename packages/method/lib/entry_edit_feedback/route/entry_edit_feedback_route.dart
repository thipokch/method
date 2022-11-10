import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../entry_edit_feedback.dart';

class EntryEditFeedbackRoute extends GoRouteData {
  const EntryEditFeedbackRoute();

  @override
  Widget build(BuildContext context) => const EntryEditFeedbackPage();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
