import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:method/home/home.dart';

import '../settings_privacy.dart';

class SettingsPrivacyRoute extends GoRouteData {
  const SettingsPrivacyRoute();

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => SettingsPrivacyBloc(
          navigator: HomeRoute.navigator,
          repository: context.read(),
        ),
        child: const SettingsPrivacyPage(),
      );

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
