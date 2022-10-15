import 'package:method/components/definition_card/view.dart';
import 'package:method_bloc/entry/entry_bloc.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:flutter/material.dart';
import 'package:method_ui/page/page.dart';

import '../entry_edit/view.dart';

class EntryLinearEditView extends StatelessWidget with EntryDefinitionConsumer {
  const EntryLinearEditView({
    super.key,
    required this.bloc,
  });

  @override
  final EntryBloc bloc;

  @override
  Widget build(BuildContext context) {
    final note = taskDefinitions.first;

    final notes = List.generate(entryDefinitions?.length ?? 0, (_) => _)
        .map<Widget>((index) {
      final entryDef = entryDefinitions?.elementAtOrNull(index);

      return SliverToBoxAdapter(
        child: DefinitionCardView(
          bloc: bloc,
          taskDefinition: note,
          entryDefinition: entryDef,
          onChanged: (value) => entryDef == null
              ? bloc.add(EntryEvent.addData(
                  definition: EntryDefinition.note(
                    data: value,
                    hierarchyPath: note.hierarchyPath,
                    id: note.id,
                  ),
                ))
              : bloc.add(EntryEvent.updateData(
                  definition: EntryDefinition.note(
                    data: value,
                    hierarchyPath: note.hierarchyPath,
                    id: note.id,
                  ),
                )),
          showMeta: false,
          isStatic: true,
        ),
      );
    }).toList();

    return MtAppPage(
      name: note.name,
      description: note.description,
      implyLeading: false,
      // name: task.name,
      // description: task.description,
      slivers: notes,
    );
  }
}
