import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/definition_edit_label/view/view.dart';
import 'package:method/entry_edit_converge/logic/entry_edit_converge_bloc.dart';
import 'package:method_core/model/entry_definition.dart';

part 'entry_edit_converge_sliver.dart';

class EntryEditConvergeView extends StatelessWidget {
  const EntryEditConvergeView({super.key});

  @override
  Widget build(BuildContext context) => throw UnimplementedError();
}

class EntryEditConvergeLabelView extends StatelessWidget {
  const EntryEditConvergeLabelView({super.key});

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
