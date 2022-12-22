import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../terms.dart';

class TermsRoute extends GoRouteData {
  const TermsRoute();

  static String name = "Terms";

  @override
  Widget build(BuildContext context) => const TermsPage();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      CupertinoPage(child: build(context), name: name);
}
