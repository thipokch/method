import 'package:flutter/cupertino.dart';
import 'package:method/entry_edit/page/page.dart';
import 'package:method_style/element_scale.dart';

import '../entry_edit_converge.dart';

class EntryEditConvergePage extends StatelessWidget {
  const EntryEditConvergePage({super.key});

  @override
  Widget build(BuildContext context) => const EntryEditPageBase(
        slivers: [
          // SliverToBoxAdapter(
          //   child: DefinitionCardEdit.basic(
          //     taskDefinition: note,
          //     entryDefinition: entryAt(0),
          //     onChanged: (value) => onNoteChange(definitionAt(0), value),
          //     // showMeta: false,
          //     // isStatic: true,
          //   ),
          // ),

          SliverSafeArea(
            top: false,
            sliver: SliverPadding(
              padding: EdgeInsets.all(ElementScale.spaceM),
              sliver: EntryEditConvergeCardSliver(),
            ),
          ),
          SliverSafeArea(
            top: false,
            sliver: SliverPadding(
              padding: EdgeInsets.all(ElementScale.spaceM),
              sliver: EntryEditConvergeLabelSliver(),
            ),
          ),
        ],
      );
}
