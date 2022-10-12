import 'package:flutter/cupertino.dart' show CupertinoActivityIndicator;
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:method/view/home/home_page.dart';
import 'package:method/view/session/session_widget.dart';
import 'package:method/view/settings/acknowlegements_page.dart';
import 'package:method/view/settings/appearance_page.dart';
import 'package:method/view/settings/developer_page.dart';
import 'package:method/view/settings/settings_page.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_core/model/session.dart';
import 'package:method_repo/repository.dart';

// See https://pub.dev/packages/go_router_builder
part 'routes.g.dart';
part 'routes.exercise.dart';
part 'routes.session.dart';
part 'routes.settings.dart';
part 'routes.editor.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final rootRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/sessions',
  routes: [
    _masterRoute,
    // _settingsRoutes,
  ],
);

final _masterNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'master');

final _masterRoute = ShellRoute(
  navigatorKey: _masterNavigatorKey,
  builder: (context, state, child) => HomePage(
    child: child,
  ),
  routes: [
    _sessionsRoutes,
    _exercisesRoutes,
    _settingsRoutes,
  ],
);
