import 'package:flutter/material.dart';
import 'package:method/entry_edit/page/entry_edit_page_base.dart';
import 'package:method_style/method_style.dart';

import '../entry_edit_linear.dart';

class EntryEditLinearPage extends StatelessWidget {
  const EntryEditLinearPage({super.key});

  @override
  Widget build(BuildContext context) => EntryEditPageBase(
        name: EntryEditLinearSelector<String>(
          selector: (state) => state.definitions?.commands.first.name ?? "",
          builder: (context, state) => Text(state),
        ),
        description: EntryEditLinearSelector<String>(
          selector: (state) =>
              state.definitions?.commands.first.description ?? "",
          builder: (context, state) => Text(state),
        ),
        slivers: const [
          SliverSafeArea(
            top: false,
            sliver: SliverPadding(
              padding: EdgeInsets.all(MtSpaces.M),
              sliver: EntryEditDivergeCardSliver(),
            ),
          ),
        ],
      );
}
