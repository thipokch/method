import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/definition_edit_label/view/view.dart';
import 'package:method/entry_edit/page/page.dart';
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
  Widget build(BuildContext context) =>
      EntryEditConvergeSelector<EntryDefinitionList?>(
        selector: (state) => state.labels,
        builder: (context, labels) => labels == null
            ? const SliverFillRemaining(child: CupertinoActivityIndicator())
            : SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) => DefinitionEditLabelView(
                    key: ValueKey(labels[index].key.id),
                    taskDefinition: labels[index].key,
                    entryDefinition: labels[index].value.orNull,
                    onTap: () => context
                        .read<EntryEditConvergeBloc>()
                        .add(EntryEditConvergeEvent.selectLabel(index: index)),
                  ),
                  childCount: labels.length,
                ),
              ),
      );
}
