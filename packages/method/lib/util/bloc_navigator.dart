import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

mixin BlocNavigator {
  GlobalKey<NavigatorState> get navigator;

  BuildContext get context => navigator.currentContext!;
  GoRouter get router => GoRouter.of(context);
}
