import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:method/app/route/route.dart';
import 'package:method/session_edit/route/exercise_start_route.dart';
import 'package:method/session_edit/route/session_edit_route.dart';
import 'package:method/util/sheet.dart';
import 'package:provider/provider.dart';

import '../home.dart';

class HomeRoute {
  const HomeRoute._();

  static final navigator = GlobalKey<NavigatorState>(debugLabel: 'HomeRoute');

  static final routes = ShellRoute(
    navigatorKey: navigator,
    // builder: (context, state, child) => HomePage(child: child),
    pageBuilder: (context, state, child) => MtRootSheetPage(
      child: MultiProvider(
        // create: (_) => navigator,
        providers: [
          Provider(create: (_) => navigator),
          Provider(create: (_) => HomeBloc(navigator: _.read())),
        ],
        child: HomeView(child: child),
      ),
    ),
    observers: [
      AppRoute.defaultObserver,
    ],
    routes: [
      $sessionFlow
        // Workaround for go_router_builder #2672
        ..routes.insertAll(0, <GoRoute>[
          GoRoute(
            path: ":id/edit",
            parentNavigatorKey: AppRoute.defaultNavigator,
            pageBuilder: (_, state) => SessionEditRoute(state.params["id"]!)
                .buildPageWithState(_, state),
          ),
        ]),
      $exerciseFlow
        ..routes.insertAll(0, <GoRoute>[
          GoRoute(
            path: ":id/start",
            parentNavigatorKey: AppRoute.defaultNavigator,
            pageBuilder: (_, state) => ExerciseStartRoute(state.params["id"]!)
                .buildPageWithState(_, state),
          ),
        ]),
      $settingsFlow,
    ],
  );
}
