import 'package:component/settings/settings_bloc.dart';
import 'package:element/element_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/view/home/home_page.dart';
import 'package:method/view/settings/settings_page.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

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
            onGenerateRoute: (settings) => MaterialWithModalsPageRoute(
              settings: settings,
              builder: (context) => const HomePage(),
            ),
          ),
        ),
      ),
    );
  }
}
