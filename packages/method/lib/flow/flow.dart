import 'package:go_router/go_router.dart';
import 'package:flutter/widgets.dart';
import 'package:method/exercise_detail/route/exercise_detail_route.dart';
import 'package:method/exercise_list/route/exercise_list_route.dart';
import 'package:method/privacy/route/route.dart';
import 'package:method/session_edit/route/exercise_start_route.dart';
import 'package:method/license_detail/route/route.dart';
import 'package:method/license_list/license_list.dart';
import 'package:method/session_detail/route/session_detail_route.dart';
import 'package:method/session_edit/route/session_edit_route.dart';
import 'package:method/session_list/route/session_list_route.dart';
import 'package:method/settings_appearance/route/settings_appearance_route.dart';
import 'package:method/settings_data/settings_data.dart';
import 'package:method/settings_list/settings_list.dart';
import 'package:method/terms/route/route.dart';

part 'flow.g.dart';

@TypedGoRoute<SessionFlow>(
  path: '/session',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<SessionDetailRoute>(path: ':id'),
    TypedGoRoute<SessionEditRoute>(path: ':id/edit'),
  ],
)
class SessionFlow extends SessionListRoute {
  const SessionFlow();
}

@TypedGoRoute<ExerciseFlow>(
  path: '/exercise',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<ExerciseDetailRoute>(path: ':id'),
    TypedGoRoute<ExerciseStartRoute>(path: ':id/start'),
  ],
)
class ExerciseFlow extends ExerciseListRoute {
  const ExerciseFlow();
}

@TypedGoRoute<SettingsFlow>(
  path: '/settings',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<SettingsDataRoute>(path: 'data'),
    TypedGoRoute<SettingsAppearanceRoute>(path: 'appearance'),
    TypedGoRoute<PrivacyRoute>(path: 'privacy'),
    TypedGoRoute<TermsRoute>(path: 'terms'),
    TypedGoRoute<LicenseListRoute>(
      path: 'license',
      routes: [
        TypedGoRoute<LicenseDetailRoute>(path: ':id'),
      ],
    ),
    // TypedGoRoute<DeveloperRoute>(path: 'developer'),
  ],
)
class SettingsFlow extends SettingsListRoute {
  const SettingsFlow();
}
