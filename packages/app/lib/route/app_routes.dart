import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:method_settings_appearance/settings_appearance.dart';
// import 'package:method_license_detail/license_detail.dart';
// import 'package:method_license_list/license_list.dart';
import 'package:method_settings_list/settings_list.dart';
import 'package:method_style/method_style.dart';
import 'package:provider/provider.dart';

part 'app_routes.g.dart';

// @TypedGoRoute<SessionFlow>(
//   path: '/session',
//   routes: <TypedGoRoute<GoRouteData>>[
//     // TypedGoRoute<SessionDetailRoute>(path: ':id'),
//     // TypedGoRoute<SessionEditRoute>(path: ':id/edit'),
//   ],
// )
// class SessionFlow extends SessionListRoute {
//   const SessionFlow();
// }

// @TypedGoRoute<ExerciseFlow>(
//   path: '/exercise',
//   routes: <TypedGoRoute<GoRouteData>>[
//     // TypedGoRoute<ExerciseDetailRoute>(path: ':id'),
//     // TypedGoRoute<ExerciseStartRoute>(path: ':id/start'),
//   ],
// )
// class ExerciseFlow extends ExerciseListRoute {
//   const ExerciseFlow();
// }

@TypedGoRoute<SettingsRoutes>(
  path: '/settings',
  routes: <TypedGoRoute<GoRouteData>>[
// TypedGoRoute<SettingsDataRoute>(path: 'data'),
    TypedGoRoute<SettingsAppearanceRoute>(path: 'appearance'),
// TypedGoRoute<PrivacyRoute>(path: 'privacy'),
// TypedGoRoute<TermsRoute>(path: 'terms'),
    // TypedGoRoute<LicenseListRoute>(
    //   path: 'license',
    //   routes: [
    //     TypedGoRoute<LicenseDetailRoute>(path: ':id'),
    //   ],
    // ),
    // TypedGoRoute<DeveloperRoute>(path: 'developer'),
  ],
)
class SettingsRoutes extends GoRouteData {
  const SettingsRoutes();

  static String name = "SettingsList";

  @override
  Widget build(BuildContext context, GoRouterState state) => SettingsListPage(
        onSelectData: () {},
        onSelectAppearance: () => SettingsAppearanceRoute().go(context),
        onSelectLicense: () {},
        onSelectFeedback: () {},
        onSelectPrivacy: () {},
        onSelectTerms: () {},
      );

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context, state), name: name);
}
