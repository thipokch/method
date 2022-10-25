import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:method/home/home.dart';
import 'package:provider/provider.dart';

import '../settings_list.dart';

class SettingsListRoute extends GoRouteData {
  const SettingsListRoute();

  @override
  Widget build(BuildContext context) => Provider(
        create: (context) => SettingsListBloc(navigator: HomeRoute.navigator),
        child: const SettingsListPage(),
      );

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
