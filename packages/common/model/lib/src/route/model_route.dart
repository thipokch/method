import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../view/model_page.dart';

/// {@template model_route}
/// A description for ModelRoute
/// {@endtemplate}
class ModelRoute extends GoRouteData{
  /// {@macro model_route}
  const ModelRoute();

  static String name = "Model";

  @override
  Widget build(context, state) => 
      const ModelPage();

  @override
  Page<void> buildPage(context, state) =>
      NoTransitionPage(child: build(context, state));
}
