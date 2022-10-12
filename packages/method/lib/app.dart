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
  final List<SingleChildWidget> providers;

  const App._(this.providers);

  static Widget launch({
    required List<SingleChildWidget> providers,
  }) =>
      Provider(
        create: (_) => AppBloc()..add(const AppEvent.load()),
        child: App._(providers),
      );

  @override
  Widget build(BuildContext context) => BlocBuilder<AppBloc, AppState>(
        builder: (context, state) => MultiProvider(
          providers: [...providers],
          child: state.maybeMap(
            loaded: (value) => GestureDetector(
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
                  title: 'method',
                  theme: ElementTheme.light,
                  darkTheme: ElementTheme.dark,
                  themeMode: context.read<AppBloc>().state.maybeMap(
                        loaded: (_) => _.themeMode,
                        orElse: () => ThemeMode.system,
                      ),
                ),
              ),
            ),
            orElse: () => const CupertinoActivityIndicator(),
          ),
        ),
      );
}
