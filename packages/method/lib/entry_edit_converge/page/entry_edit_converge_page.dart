import 'package:flutter/cupertino.dart';
import 'package:method/definition_edit_label/view/view.dart';
import 'package:method/entry_edit/logic/entry_edit_bloc.dart';
import 'package:method/entry_edit/page/page.dart';
import 'package:method_core/model/definition.dart';
import 'package:method_core/model/entry_definition.dart';
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
              sliver: _LabelGrid(),
            ),
          ),
        ],
      );
}

class _LabelGrid extends StatelessWidget {
  const _LabelGrid();

  @override
  Widget build(BuildContext context) => EntryEditSelector<DefinitionList?>(
        selector: (state) => state.labels,
        builder: (context, state) => state == null
            ? const CupertinoActivityIndicator()
            : SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) => DefinitionEditLabelView(
                    taskDefinition: state[index].key,
                    entryDefinition: state[index].value ??
                        EntryDefinition.from(template: state[index].key),
                  ),
                  childCount: state.length,
                ),
              ),
      );
}
