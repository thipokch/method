import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:method/app/route/route.dart';
import 'package:provider/provider.dart';

import '../home.dart';

class HomeRoute {
  const HomeRoute._();

  static final navigator = GlobalKey<NavigatorState>(debugLabel: 'HomeRoute');

  static final routes = ShellRoute(
    navigatorKey: navigator,
    // builder: (context, state, child) => HomePage(child: child),
    builder: (context, state, child) => MultiProvider(
      // create: (_) => navigator,
      providers: [
        Provider(create: (_) => navigator),
        Provider(create: (_) => HomeBloc(navigator: _.read())),
      ],
      child: HomeView(child: child),
    ),
    observers: [
      AppRoute.defaultObserver,
    ],
    routes: [
      $sessionFlow,
      // Workaround for go_router_builder #2672
      // ..routes.insertAll(0, <GoRoute>[
      // GoRoute(
      //   path: ":id/edit",
      //   parentNavigatorKey: AppRoute.defaultNavigator,
      //   pageBuilder: (_, state) => SessionEditRoute(state.params["id"]!)
      //       .buildPageWithState(_, state),
      // ),
      // ]),
      $exerciseFlow,
      $settingsFlow,
    ],
  );
}
