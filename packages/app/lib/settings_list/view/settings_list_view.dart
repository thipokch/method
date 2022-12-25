import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_app/app/view/app_info_view.dart';
import 'package:method_app/settings_list/logic/settings_list_bloc.dart';
import 'package:method_app/util/list.dart';
import 'package:method_style/method_style.dart';

part 'settings_list_sliver.dart';

class SettingsListView extends StatelessWidget {
  const SettingsListView({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: MtSpaces.M),
        child: ListView(
          children: _ListChildren.children(bloc: context.read()),
        ),
      );
}

class _ListChildren {
  const _ListChildren._();

  static const _tile = ListChildrenBuilder.tile;
  static const _section = ListChildrenBuilder.section;

  static List<Widget> children({required SettingsListBloc bloc}) => [
        ...{
          "Data & Privacy": () =>
              bloc.add(const SettingsListEvent.selectData()),
        }.entries.map(_tile),
        _section("GENERAL"),
        ...{
          "Appearance": () =>
              bloc.add(const SettingsListEvent.selectAppearance()),
        }.entries.map(_tile),
        _section("ABOUT"),
        ...{
          "Feedback": () => bloc.add(const SettingsListEvent.selectFeedback()),
          "Privacy Policy": () =>
              bloc.add(const SettingsListEvent.selectPrivacy()),
          "Terms of Service": () =>
              bloc.add(const SettingsListEvent.selectTerms()),
          "Acknowledgments": () =>
              bloc.add(const SettingsListEvent.selectLicense()),
        }.entries.map(_tile),
        const AppInfoView(),
      ];
}
