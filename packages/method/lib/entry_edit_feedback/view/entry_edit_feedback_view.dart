import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/definition_edit_label/view/view.dart';
import 'package:method/entry_edit_feedback/logic/entry_edit_feedback_bloc.dart';
import 'package:method_core/model/entry_definition.dart';

part 'entry_edit_feedback_sliver.dart';

class EntryEditFeedbackView extends StatelessWidget {
  const EntryEditFeedbackView({super.key});

  @override
  Widget build(BuildContext context) => throw UnimplementedError();
}

class EntryEditFeedbackLabelView extends StatelessWidget {
  const EntryEditFeedbackLabelView({super.key});

  @override
  Widget build(BuildContext context) =>
      EntryEditFeedbackSelector<EntryDefinitionList?>(
        selector: (state) =>
            state.entry?.builtDefinition.map.entries.toBuiltList(),
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
                        .read<EntryEditFeedbackBloc>()
                        .add(EntryEditFeedbackEvent.selectRating(index: index)),
                  ),
                  childCount: labels.length,
                ),
              ),
      );
}
