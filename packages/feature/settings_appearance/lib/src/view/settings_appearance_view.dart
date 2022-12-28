import 'package:flutter/material.dart';
import 'package:method_settings_appearance/settings_appearance.dart';
import 'package:method_style/method_style.dart';

/// {@template settings_appearance_view}
/// View of the SettingsAppearancePage.
///
/// Add what it does
/// {@endtemplate}
class SettingsAppearanceView extends StatelessWidget {
  /// {@macro settings_appearance_view}
  const SettingsAppearanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsAppearanceBloc, SettingsAppearanceState>(
      buildWhen: (previous, current) => current.themeMode != previous.themeMode,
      builder: (context, state) => SliverList(
        delegate: SliverChildListDelegate(
          SettingsAppearanceView.children(bloc: context.read()),
        ),
      ),
    );
  }

  static List<Widget> children({
    required SettingsAppearanceBloc bloc,
  }) =>
      [
        ...{
          "Automatic": ThemeMode.system,
          "Light": ThemeMode.light,
          "Dark": ThemeMode.dark,
        }.entries.map<ListTile>((_) => ListTile(
              title: Text(_.key),
              trailing: Visibility(
                visible: bloc.state.themeMode == _.value,
                child: const Icon(MtSymbols.checkmark),
              ),
              onTap: () => bloc.add(
                SettingsAppearanceEvent.setThemeMode(themeMode: _.value),
              ),
            )),
      ];
}
