import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../<FTName | snakecase&lowercase>.dart';

class <FTName | pascalcase>Route extends GoRouteData{
  const <FTName | pascalcase>Route();

  @override
  Widget build(BuildContext context) => const <FTName | pascalcase>Page();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
