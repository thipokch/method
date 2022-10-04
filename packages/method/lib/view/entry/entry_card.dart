import 'package:method/view/entry/entry_editor.dart';
import 'package:method_bloc/entry/entry_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_ui/card/card_editing.dart';

part 'card/linear.dart';
part 'card/diverge.dart';
part 'card/converge.dart';

class EntryCard extends StatelessWidget {
  const EntryCard({
    super.key,
    required this.listener,
  });

  final BlocWidgetListener<EntryState> listener;

  @override
  Widget build(BuildContext context) => BlocConsumer<EntryBloc, EntryState>(
        listener: listener,
        builder: (context, state) {
          final bloc = context.read<EntryBloc>();

          return state.task.map(
            linear: (_) => EntryCardLinear(bloc: bloc),
            diverge: (_) => EntryCardDiverge(bloc: bloc),
            converge: (_) => EntryCardConverge(bloc: bloc),
            feedback: (_) => throw UnimplementedError(),
          );
        },
      );
}
