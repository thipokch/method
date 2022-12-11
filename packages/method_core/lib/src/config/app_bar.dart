import 'package:flutter/widgets.dart';

class AppBarConfig {
  final Widget? leading;
  final bool? canBack;
  final bool? showProgress;
  final Widget? trailing;

  const AppBarConfig({
    required this.canBack,
    required this.showProgress,
    this.leading,
    this.trailing,
  });
}
