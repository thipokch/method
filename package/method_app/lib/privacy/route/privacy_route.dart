import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../privacy.dart';

class PrivacyRoute extends GoRouteData {
  const PrivacyRoute();

  static String name = "Privacy";

  @override
  Widget build(BuildContext context) => const PrivacyPage();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      CupertinoPage(child: build(context), name: name);
}
