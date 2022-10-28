import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/entry_edit/logic/entry_edit_bloc.dart';
import 'package:method/entry_edit_converge/logic/entry_edit_converge_bloc.dart';
import 'package:method/entry_edit_converge/page/page.dart';
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
            ? BlocProvider(
                create: (context) => state.map(
                  linear: (_) =>
                      EntryEditConvergeBloc(repository: context.read()),
                  diverge: (_) =>
                      EntryEditConvergeBloc(repository: context.read()),
                  converge: (_) => EntryEditConvergeBloc(
                    repository: context.read(),
                  )..add(EntryEditConvergeEvent.startTask(taskId: state.id)),
                  feedback: (_) =>
                      EntryEditConvergeBloc(repository: context.read()),
                ),
                child: state.map(
                  linear: (_) => const Text("linear"),
                  diverge: (_) => const Text("diverge"),
                  converge: (_) => const EntryEditConvergePage(),
                  feedback: (_) => const Text("feedback"),
                ),
              )
            : const CupertinoActivityIndicator(),
      );
}
