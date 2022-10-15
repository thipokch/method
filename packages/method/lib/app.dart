import 'package:flutter/cupertino.dart';
import 'package:method/util/license/service.dart';
import 'package:method_bloc/app/app_bloc.dart';
import 'package:method_style/element_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_ui/airbrush/airbrush.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class App extends StatelessWidget {
  final RouterConfig<Object> routerConfig;
  final List<Future<SingleChildWidget> Function()> serviceProviders;

  const App({
    super.key,
    required this.routerConfig,
    required this.serviceProviders,
  });

  @override
  Widget build(context) => AppBloc.provide(
        serviceProviders: serviceProviders,
        child: BlocBuilder<AppBloc, AppState>(
          builder: (context, state) => state.maybeMap(
            loaded: (_) => MultiProvider(
              providers:
                  _.serviceProviders.whereType<SingleChildWidget>().toList()
                    ..add(RepositoryProvider(create: (_) => LicenseService())),
              child: _loaded(context, _.themeMode, routerConfig),
            ),
            orElse: () => const CupertinoActivityIndicator(),
          ),
        ),
      );

  static Widget _loaded(
    BuildContext context,
    ThemeMode themeMode,
    RouterConfig<Object> routerConfig,
  ) =>
      GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            currentFocus.focusedChild?.unfocus();
          }
        },
        child: Airbrush(
          child: MaterialApp.router(
            routerConfig: routerConfig,
            theme: ElementTheme.light,
            darkTheme: ElementTheme.dark,
            themeMode: themeMode,
          ),
        ),
      );
}
