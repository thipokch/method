import 'package:flutter/material.dart';

class NavigationContext extends InheritedWidget {
  const NavigationContext({
    Key? key,
    required super.child,
    this.exit,
  }) : super(key: key);

  final Widget? exit;

  @override
  bool updateShouldNotify(NavigationContext oldWidget) =>
      exit != oldWidget.exit;

  static NavigationContext? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<NavigationContext>();
}
