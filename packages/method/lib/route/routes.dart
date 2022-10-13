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

import '../view/session_editor/session_editor.dart';

// See https://pub.dev/packages/go_router_builder
part 'routes.g.dart';
part 'routes.home.dart';
part 'routes.exercise.dart';
part 'routes.session.dart';
part 'routes.settings.dart';

final rootNavigator = GlobalKey<NavigatorState>(debugLabel: 'scene');

final rootRouter = GoRouter(
  // debugLogDiagnostics: true,
  navigatorKey: rootNavigator,
  initialLocation: const SessionRoute().location,
  // initialLocation: '/sessions',
  routes: [
    _homeRoutes,
  ],
);
