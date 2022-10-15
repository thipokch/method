import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:method/components/home/view.dart';
import 'package:method/route/routes.dart';
import 'package:method_core/model/session.dart';
import 'package:method_repo/repository.dart';

import '../session_edit/route.dart';

final _homeNavigator = GlobalKey<NavigatorState>(debugLabel: 'home');

final homeRoutes = ShellRoute(
  navigatorKey: _homeNavigator,
  builder: (context, state, child) => HomePage(child: child),
  routes: [
    $sessionFlow
      // Workaround for go_router_builder #2672
      ..routes.insertAll(0, <GoRoute>[
        GoRoute(
          path: ":id/edit",
          parentNavigatorKey: rootNavigator,
          pageBuilder: (_, state) => SessionEditRoute(state.params["id"]!)
              .buildPageWithState(_, state),
        ),
      ]),
    $exerciseFlow
      ..routes.insertAll(0, <GoRoute>[
        GoRoute(
          path: ":id/start",
          parentNavigatorKey: rootNavigator,
          redirect: (context, state) async {
            final id = DateTime.now().millisecondsSinceEpoch.toString();
            final repo = context.read<Repository>();

            await repo.exercises.get(state.params['id']!).then(
                  (exercise) => repo.sessions.put(
                    Session.create(
                      template: exercise!,
                      hierarchyPath: "${exercise.hierarchyPath}/${exercise.id}",
                      id: id,
                    ),
                  ),
                );

            return SessionEditRoute(id).location;
          },
        ),
      ]),
    $settingsFlow,
  ],
);
