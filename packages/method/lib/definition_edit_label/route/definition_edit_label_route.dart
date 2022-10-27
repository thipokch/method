import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../definition_edit_label.dart';

class DefinitionEditLabelRoute extends GoRouteData {
  const DefinitionEditLabelRoute();

  @override
  Widget build(BuildContext context) => const DefinitionEditLabelPage();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
