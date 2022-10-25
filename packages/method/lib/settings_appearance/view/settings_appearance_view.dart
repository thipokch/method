import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/app/logic/logic.dart';
import 'package:method/settings_appearance/logic/logic.dart';
import 'package:method_style/element_symbol.dart';

// import '../settings_appearance.dart';

part 'settings_appearance_sliver.dart';

class SettingsAppearanceView extends StatelessWidget {
  const SettingsAppearanceView({super.key});

  @override
  Widget build(BuildContext context) => SettingsAppearanceBuilder(
        buildWhen: (previous, current) =>
            current.themeMode != previous.themeMode,
        builder: (context, state) => ListView(
          children: _ListChildren(context.read()).children(),
        ),
      );
}

class _ListChildren {
  final SettingsAppearanceBloc bloc;

  const _ListChildren(this.bloc);

  ListTile _tile(MapEntry<String, ThemeMode> entry) => ListTile(
        title: Text(entry.key),
        trailing: Visibility(
          visible: bloc.state.themeMode == entry.value,
          child: const Icon(ElementSymbol.checkmark),
        ),
        onTap: () => bloc.add(
          SettingsAppearanceEvent.setThemeMode(themeMode: entry.value),
        ),
      );

  List<Widget> children() => [
        ...{
          "Automatic": ThemeMode.system,
          "Light": ThemeMode.light,
          "Dark": ThemeMode.dark,
        }.entries.map(_tile),
      ];
}
