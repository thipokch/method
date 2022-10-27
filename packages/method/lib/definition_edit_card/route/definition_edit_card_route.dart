import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../definition_edit_card.dart';

class DefinitionEditCardRoute extends GoRouteData {
  const DefinitionEditCardRoute();

  @override
  Widget build(BuildContext context) => const DefinitionEditCardPage();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
