import 'package:flutter/material.dart';
import 'package:method/entry_edit/page/entry_edit_page_base.dart';
import 'package:method_style/element_scale.dart';

import '../entry_edit_diverge.dart';

class EntryEditDivergePage extends StatelessWidget {
  const EntryEditDivergePage({super.key});

  @override
  Widget build(BuildContext context) => const EntryEditPageBase(
        slivers: [
          SliverSafeArea(
            top: false,
            sliver: SliverPadding(
              padding: EdgeInsets.all(ElementScale.spaceM),
              sliver: EntryEditDivergeCardSliver(),
            ),
          ),
        ],
      );
}
