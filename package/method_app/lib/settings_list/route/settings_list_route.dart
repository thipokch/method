import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../settings_list.dart';

class SettingsListRoute extends GoRouteData {
  const SettingsListRoute();
  
  static String name = "SettingsList";

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => SettingsListBloc(
          navigator: context.read(),
          browser: context.read(),
        ),
        child: const SettingsListPage(),
      );

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context), name: name);
}
