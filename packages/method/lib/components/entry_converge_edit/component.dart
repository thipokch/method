import 'package:flutter/cupertino.dart';
import 'package:method_bloc/entry/entry_bloc.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task_definition.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_ui/page/page.dart';
import 'package:provider/provider.dart';

import '../definition_card/component.dart';
import '../definition_label/component.dart';
import '../entry_edit/component.dart';

part 'view.dart';
part 'page.dart';

class EntryConvergeEdit {
  const EntryConvergeEdit._();

  static final Widget page = EntryBloc.builder(
    builder: (context, state) => state.when(
      taskLoaded: (_) => const CupertinoActivityIndicator(),
      entryLoaded: (task, entry) => _Page(
        entry: entry,
        onNoteChange: (_, value) =>
            context.read<EntryBloc>().add(EntryEvent.updateData(
                  definition: EntryDefinition.note(
                    hierarchyPath: _.task.hierarchyPath,
                    id: _.task.id,
                    data: value,
                  ),
                )),
        onLabelTap: (_) => _.entry == null
            ? context.read<EntryBloc>().add(EntryEvent.updateData(
                  definition: EntryDefinition.label(
                    hierarchyPath: _.task.hierarchyPath,
                    id: _.task.id,
                  ),
                ))
            : context.read<EntryBloc>().add(EntryEvent.deleteData(
                  definition: EntryDefinition.label(
                    hierarchyPath: _.task.hierarchyPath,
                    id: _.task.id,
                  ),
                )),
      ),
    ),
  );
}
