import 'package:flutter/cupertino.dart';
import 'package:method_bloc/entry/entry_bloc.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_style/element_touch.dart';
import 'package:method_ui/page/page.dart';
import 'package:provider/provider.dart';

import '../definition_label_edit/component.dart';
import '../entry_edit/component.dart';

part 'page.dart';
// part 'view.dart';

class EntryFeedbackEdit {
  const EntryFeedbackEdit._();

  static final Widget page = EntryBloc.builder(
    builder: (context, state) => state.when(
      taskLoaded: (_) => const CupertinoActivityIndicator(),
      entryLoaded: (task, entry) => _Page(
        entry: entry,
        onLabelTap: (_) {
          final bloc = context.read<EntryBloc>();
          bloc.add(const EntryEvent.clearData());

          if (_.entry == null) {
            bloc.add(EntryEvent.updateData(
              definition: EntryDefinition.from(template: _.task),
            ));
          }

          ElementTouch.select();
        },
      ),
    ),
  );
}
