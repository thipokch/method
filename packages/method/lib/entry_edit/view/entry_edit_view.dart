import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/entry_edit/logic/entry_edit_bloc.dart';
import 'package:method/entry_edit_converge/logic/entry_edit_converge_bloc.dart';
import 'package:method/entry_edit_converge/page/page.dart';
import 'package:method/entry_edit_diverge/entry_edit_diverge.dart';
import 'package:method/entry_edit_feedback/entry_edit_feedback.dart';
import 'package:method_core/model/task.dart';

part 'entry_edit_sliver.dart';

// TODO: Rename to Selector
class EntryEditView extends StatelessWidget {
  const EntryEditView({
    super.key,
  });

  @override
  Widget build(BuildContext context) => EntryEditSelector<Task?>(
        selector: (state) => state.task,
        builder: (context, state) => state != null
            ? state.map(
                linear: (_) => const Text("linear"),
                diverge: (_) => BlocProvider(
                  create: (_) => EntryEditDivergeBloc(
                    repository: context.read(),
                  )..add(EntryEditDivergeEvent.startTask(taskId: state.id)),
                  child: const EntryEditDivergePage(),
                ),
                converge: (_) => BlocProvider(
                  create: (_) => EntryEditConvergeBloc(
                    repository: context.read(),
                  )..add(EntryEditConvergeEvent.startTask(taskId: state.id)),
                  child: const EntryEditConvergePage(),
                ),
                feedback: (_) => BlocProvider(
                  create: (_) => EntryEditFeedbackBloc(
                    repository: context.read(),
                  )..add(EntryEditFeedbackEvent.startTask(taskId: state.id)),
                  child: const EntryEditFeedbackPage(),
                ),
              )
            : const CupertinoActivityIndicator(),
      );
}
