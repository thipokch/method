import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/util/list.dart';
import 'package:method_style/element_scale.dart';

import '../settings_privacy.dart';

part 'settings_privacy_sliver.dart';

class SettingsPrivacyView extends StatelessWidget {
  const SettingsPrivacyView({super.key});

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
  // static const _section = ListChildrenBuilder.section;

  static List<Widget> children({required SettingsPrivacyBloc bloc}) => [
        ...{
          "Erase All Content and Settings": bloc.eraseData,
        }.entries.map(_tile),
      ];
}
