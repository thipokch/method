import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../view/constant_page.dart';

/// {@template constant_route}
/// A description for ConstantRoute
/// {@endtemplate}
class ConstantRoute extends GoRouteData{
  /// {@macro constant_route}
  const ConstantRoute();

  static String name = "Constant";

  @override
  Widget build(context, state) => 
      const ConstantPage();

  @override
  Page<void> buildPage(context, state) =>
      NoTransitionPage(child: build(context, state));
}
