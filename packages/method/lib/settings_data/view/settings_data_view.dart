import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/util/list.dart';
import 'package:method_style/method_style.dart';

import '../settings_data.dart';

part 'settings_data_sliver.dart';

class SettingsDataView extends StatelessWidget {
  const SettingsDataView({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: MtSpaces.M),
        child: ListView(
          children: _ListChildren.children(bloc: context.read()),
        ),
      );
}

class _ListChildren {
  const _ListChildren._();

  static const _tile = ListChildrenBuilder.tile;
  // static const _section = ListChildrenBuilder.section;

  static List<Widget> children({required SettingsDataBloc bloc}) => [
        ...{
          "Erase All Content and Settings": bloc.eraseData,
        }.entries.map(_tile),
      ];
}
