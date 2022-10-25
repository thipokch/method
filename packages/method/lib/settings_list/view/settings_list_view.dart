import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/app/view/app_info_view.dart';
import 'package:method/settings_list/logic/settings_list_bloc.dart';
import 'package:method/util/list.dart';
import 'package:method_style/element_scale.dart';

part 'settings_list_sliver.dart';

class SettingsListView extends StatelessWidget {
  const SettingsListView({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: ElementScale.spaceM),
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
          "Data & Privacy": bloc.goPrivacy,
        }.entries.map(_tile),
        _section("GENERAL"),
        ...{
          "Appearance": bloc.goAppearance,
        }.entries.map(_tile),
        _section("ABOUT"),
        ...{
          "License": bloc.goLicense,
        }.entries.map(_tile),
        const AppInfoView(),
      ];
}
