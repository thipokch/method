import 'package:method/route/routes.dart';
import 'package:method_bloc/app/app_bloc.dart';
import 'package:method_bloc/settings/settings_bloc.dart';
import 'package:method_style/element_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_ui/airbrush/airbrush.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => SettingsBloc()),
          BlocProvider(create: (context) => AppBloc()),
        ],
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus &&
                currentFocus.focusedChild != null) {
              currentFocus.focusedChild?.unfocus();
            }
          },
          child: BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, state) => Airbrush(
              child: MaterialApp.router(
                routerConfig: rootRouter,
                title: 'method',
                theme: ElementTheme.light,
                darkTheme: ElementTheme.dark,
                themeMode: context.read<SettingsBloc>().state.whenOrNull(
                          loaded: (themeMode) => themeMode,
                        ) ??
                    ThemeMode.system,
              ),
            ),
          ),
        ),
      );
}
