import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:method/route/sheet.dart';
import 'package:method/view/home/home_page.dart';
import 'package:method/view/settings/acknowlegement_page.dart';
import 'package:method/view/settings/appearance_page.dart';
import 'package:method/view/settings/developer_page.dart';
import 'package:method/view/settings/settings_flow.dart';

// See https://pub.dev/packages/go_router_builder
part 'routes.g.dart';
part 'routes.home.dart';
part 'routes.settings.dart';

// HomeRoute cannot be nested and redirect at the same time
// See https://github.com/flutter/flutter/issues/103368
@TypedGoRoute<RootRoute>(path: '/')
class RootRoute extends GoRouteData {
  const RootRoute();

  @override
  String redirect() => const HomeRoute().location;
}
