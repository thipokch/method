import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const AppBuilderFunction defaultAppBuilder = _defaultAppBuilderMethod;

GoRouter getRouter(Widget child) {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => child,
      ),
    ],
  );
}

Widget _defaultAppBuilderMethod(BuildContext context, Widget child) {
  final _router = getRouter(child);
  return WidgetsApp.router(
    color: Colors.transparent,
    builder: (context, childWidget) {
      return childWidget ?? child;
    },
    debugShowCheckedModeBanner: false,
    routeInformationParser: _router.routeInformationParser,
    routeInformationProvider: _router.routeInformationProvider,
    routerDelegate: _router.routerDelegate,
  );
}

AppBuilderFunction get materialAppBuilder =>
    (BuildContext context, Widget child) {
      final _router = getRouter(child);
      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: _router.routerDelegate,
        routeInformationParser: _router.routeInformationParser,
        routeInformationProvider: _router.routeInformationProvider,
      );
    };

AppBuilderFunction get cupertinoAppBuilder =>
    (BuildContext context, Widget child) {
      final _router = getRouter(child);
      return CupertinoApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: _router.routerDelegate,
        routeInformationParser: _router.routeInformationParser,
        routeInformationProvider: _router.routeInformationProvider,
      );
    };

typedef AppBuilderFunction = Widget Function(
  BuildContext context,
  Widget child,
);
