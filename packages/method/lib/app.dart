import 'package:flutter/cupertino.dart';
import 'package:method/route/routes.dart';
import 'package:method_bloc/app/app_bloc.dart';
import 'package:method_style/element_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_ui/airbrush/airbrush.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class App extends StatelessWidget {
  const App._();

  static Widget launch({
    required List<Future<SingleChildWidget> Function()> serviceProviders,
  }) =>
      // AppBloc.provide(child: const App._());
      BlocProvider(
        create: (_) => AppBloc()
          ..add(AppEvent.load(
            serviceProviders: serviceProviders,
          )),
        child: const App._(),
      );

  @override
  Widget build(context) => BlocBuilder<AppBloc, AppState>(
        builder: (context, state) => state.maybeMap(
          loaded: (_) => MultiProvider(
            providers:
                _.serviceProviders.whereType<SingleChildWidget>().toList(),
            child: GestureDetector(
              onTap: () {
                FocusScopeNode currentFocus = FocusScope.of(context);
                if (!currentFocus.hasPrimaryFocus &&
                    currentFocus.focusedChild != null) {
                  currentFocus.focusedChild?.unfocus();
                }
              },
              child: Airbrush(
                child: MaterialApp.router(
                  routerConfig: rootRouter,
                  theme: ElementTheme.light,
                  darkTheme: ElementTheme.dark,
                  themeMode: context.read<AppBloc>().state.maybeMap(
                        loaded: (_) => _.themeMode,
                        orElse: () => ThemeMode.system,
                      ),
                ),
              ),
            ),
          ),
          orElse: () => const CupertinoActivityIndicator(),
        ),
      );
}
