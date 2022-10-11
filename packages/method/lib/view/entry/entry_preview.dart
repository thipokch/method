import 'package:flutter/cupertino.dart';
import 'package:method/view/entry/entry_editor.dart';
import 'package:method_bloc/entry/entry_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_ui/card/card.dart';
import 'package:method_ui/card/card_editing.dart';

part 'preview/linear.dart';
part 'preview/diverge.dart';
part 'preview/converge.dart';
part 'preview/feedback.dart';

class EntryPreview extends StatelessWidget {
  const EntryPreview({
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
            linear: (_) => EntryPreviewLinear(bloc: bloc),
            diverge: (_) => EntryPreviewDiverge(bloc: bloc),
            converge: (_) => EntryPreviewConverge(bloc: bloc),
            feedback: (_) => EntryPreviewFeedback(bloc: bloc),
          );
        },
      );
}
