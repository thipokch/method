import 'package:component/settings/settings_bloc.dart';
import 'package:element/element_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/view/settings_preview.dart';
import 'package:method/view/settings_view.dart';

import 'dev_home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsBloc(),
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) => GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus &&
                currentFocus.focusedChild != null) {
              currentFocus.focusedChild?.unfocus();
            }
          },
          child: MaterialApp(
            title: 'method',
            theme: ElementTheme.light,
            darkTheme: ElementTheme.dark,
            themeMode: context.read<SettingsBloc>().state.whenOrNull(
                      loaded: (themeMode) => themeMode,
                    ) ??
                ThemeMode.system,
            home: const SettingsPreview(),
          ),
        ),
      ),
    );
  }
}
