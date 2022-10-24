import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/app/view/app_info_view.dart';
import 'package:method/settings_list/logic/settings_list_bloc.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_style/element_symbol.dart';

part 'settings_list_sliver.dart';

class SettingsListView extends StatelessWidget {
  const SettingsListView({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: ElementScale.spaceM),
        child: ListView.builder(
          itemBuilder: (context, index) =>
              _ListItems.items(bloc: context.read())[index],
          itemCount: _ListItems.items().length,
        ),
      );
}

class _ListItems {
  const _ListItems._();

  static _buildSection(text) => _Section(key: ValueKey(text), text: text);

  static _buildTile(entry) => _Tile(key: ValueKey(entry.key), entry: entry);

  static items({SettingsListBloc? bloc}) => [
        ...{
          "Data & Privacy": bloc?.goPrivacy,
        }.entries.map(_buildTile),
        _buildSection("GENERAL"),
        ...{
          "Appearance": bloc?.goAppearance,
        }.entries.map(_buildTile),
        _buildSection("ABOUT"),
        // ...{
        //   "Acknowledgements": bloc?.goAcknowledgements,
        // }.entries.map(_buildTile),
        const AppInfoView(),
      ];
}

class _Section extends StatelessWidget {
  const _Section({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
        child: Text(text),
      );
}

class _Tile extends StatelessWidget {
  const _Tile({
    super.key,
    required this.entry,
  });

  final MapEntry<String, void Function()?> entry;

  @override
  Widget build(BuildContext context) => ListTile(
        title: Text(entry.key),
        trailing: const Icon(ElementSymbol.chevronForward),
        // onTap: () => e.value,
      );
}
