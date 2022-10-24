import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:method_style/element_theme.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../app.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) => AppBuilder(
        buildWhen: (previous, current) =>
            current.router != previous.router &&
            current.themeMode != previous.themeMode,
        builder: (context, state) => state.maybeMap(
          started: (_) => _AppStartedView(
            providers: _.serviceProviders,
            routerConfig: _.router,
            themeMode: _.themeMode,
          ),
          orElse: () => const CupertinoActivityIndicator(),
        ),
      );
}

class _AppStartedView extends StatelessWidget {
  final List<SingleChildWidget> providers;
  final RouterConfig<Object> routerConfig;
  final ThemeMode themeMode;

  const _AppStartedView({
    required this.providers,
    required this.routerConfig,
    required this.themeMode,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            currentFocus.focusedChild?.unfocus();
          }
        },
        child: MultiProvider(
          providers: providers,
          child: MaterialApp.router(
            routerConfig: routerConfig,
            themeMode: themeMode,
            theme: ElementTheme.light,
            darkTheme: ElementTheme.dark,
          ),
        ),
      );
}

// TODO: Page not found view
